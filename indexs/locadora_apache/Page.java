import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(urlPatterns = {"/Page"})
public class Page extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("nome");
            String password = request.getParameter("senha");
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/locadora_web", "root", "1234"
                );
                PreparedStatement ps = connection.prepareStatement(
                    "select id from usuario where nome = ? and senha = ?"
                );
                ps.setString(1, name);
                ps.setString(2, password);
                
                ResultSet rs = ps.executeQuery();
                
                if(rs.next()) {
                    out.println("<html>");
                    out.println("<body>");
                    out.println("<h1>");
                    out.println("Logado com sucesso!");
                    out.println("</h1>");
                    out.println("</body>");
                    out.println("</html>");
                } else {
                    out.println("<html>");
                    out.println("<body>");
                    out.println("<h1>");
                    out.println("Não foi possivel logar!");
                    out.println("</h1>");
                    out.println("</body>");
                    out.println("</html>");
                }
            } catch(SQLException e) {
                out.println("<html>");
                out.println("<body>");
                out.println("<h1>");
                out.println("Não foi possível fazer o cadastro");
                out.println(" <br> ");
                out.println(e.getMessage());
                out.println("</h1>");
                out.println("</body>");
                out.println("</html>");
            } catch(ClassNotFoundException e) {
                out.println("<html>");
                out.println("<body>");
                out.println("<h1>");
                out.println("Não foi possivel encontrar o driver");
                out.println(" <br> ");
                out.println(e.getMessage());
                out.println("</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
