
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import locadora.modelo.Filme;

@WebServlet(urlPatterns = {"/Atualizar"})
public class Atualizar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String[] parameterNameList = {
                "id",
                "nome",
                "Diretor",
                "Sinopse",
                "Categoria",
                "Estrelas",
                "Data",
                "Duração",
                "Preço",
                "Image"
            };
            List<String> list = new ArrayList<>();
            for (String nome : parameterNameList) {
                list.add(request.getParameter(nome));
            }
            list.forEach(System.out::println);
            Filme filme = new Filme(
                    Integer.parseInt(list.get(0)),
                    list.get(1),
                    list.get(2),
                    list.get(3),
                    list.get(4),
                    Double.parseDouble(list.get(5)),
                    list.get(6),
                    list.get(7),
                    Double.parseDouble(list.get(8)),
                    list.get(9)
            );
            
            locadora.modelo.dao.FilmeDAO.atualizar(filme);
            request.getRequestDispatcher("cards.jsp").forward(request, response);
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
        
            () {
        return "Short description";
        }// </editor-fold>

    }
