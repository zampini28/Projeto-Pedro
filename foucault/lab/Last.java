import java.io.File;
import java.io.FileWriter;
import java.util.Scanner;
import java.lang.StringBuilder;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.lang.reflect.Method;
import java.util.stream.Stream;
public class Last
{
	private static final String FILENAME = "cards";
	private static final String START = "<!--LOOP_BEGIN-->";
	private static final String END = "<!--LOOP_END-->";
	public static void main(String[] args) throws Exception
	{
		String lastFile = null;
		String currentFile = null;
		while(true)
			if((currentFile = readFile()) != null && !currentFile.equals(lastFile))
			{
				List<Filme> filmes;
				Method[] methods = listMethod((filmes = listFilm()).get(0));
				String data = 
					modifier( 
						filmes, 
						methods, 
						dispath((lastFile = currentFile), filmes.size())
					);
				writeFile(data);
			}
	}
	public static String modifier(List<Filme> filmes, Method[] methods, String text) throws Exception 
	{
		for (Filme filme : filmes)		
			for(Method method : methods)
				text = text.replaceFirst(
					method.getName(),
					String.valueOf(method.invoke(filme))
				);
		return text;
	}
	public static Method[] listMethod(Object obj)
	{
		Method[] methods = obj.getClass().getMethods();
		List<Object> methodList = new ArrayList<>();
		for(Method method : methods)
			if(method.getName().contains("get") && !method.getName().equals("getClass"))
				methodList.add((Object)method);
		return methodList.toArray(new Method[0]);
	}
	public static String dispath(final String text, int repeat)
	{
		if (text.contains(START) && text.contains(END)) 
		{
			String middle = text.split(START)[1].split(END)[0];
			return text.replace(middle, middle.repeat(repeat));
		}
		else
			return text;
	}
	public static List<Filme> listFilm() throws Exception
	{
		ResultSet rs = DriverManager
			.getConnection("jdbc:mysql://localhost:3306/locadora_web", "root", " ")
			.createStatement()
			.executeQuery("select * from filme");
		List<Filme> filmes = new ArrayList<>();
		while (rs.next())
                        filmes.add(
                                new Filme(
                                        rs.getInt("id"),
                                        rs.getString("nome"),
                                        rs.getString("diretor"),
                                        rs.getString("sinopse"),
                                        rs.getString("categoria"),
                                        rs.getDouble("estrelas"),
                                        rs.getString("data_de_lancamento"),
                                        rs.getString("duracao"),
                                        rs.getDouble("preco"),
                                        "https://www.mensjournal.com/wp-content/uploads/2018/10/rambo-main-3.jpg"
                                )
                        );
                return filmes;
	}
	public static String readFile() throws Exception
	{
		Scanner reader;
	        try {
			reader = new Scanner(new File(FILENAME + "_.html"));
		} catch (Exception e) {
			return null;
		}
		StringBuilder imp = new StringBuilder();
		while(reader.hasNextLine())
			imp.append(reader.nextLine()).append('\n');
		return imp.toString();
	}
	public static void writeFile(String str) throws Exception
	{
		FileWriter writer = new FileWriter(FILENAME + ".html");
		writer.write(str);
		writer.close();
	}
}
