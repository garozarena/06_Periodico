package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Consultar
 */
@WebServlet("/Consultar")
public class Consultar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Consultar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico", "root", "");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM noticias");
			String resultado = "";
			while(rs.next()) {
				resultado+="<ul class='collection'><li class='collection-item active light-green accent-2 grey-text text-darken-2'><h5>"
						+rs.getString("titulo")+"</h5>Categoría "+rs.getString("idCategoria")+"</li>";
				resultado+="<li class='collection-item'>"+rs.getString("contenido")+"</li>";
				resultado+="<li class='collection-item active'>"+rs.getString("mailAutor")+" - "+rs.getString("fechaPublicacion")+"</li></ul>";
			}
			request.getSession().setAttribute("servletMsg", resultado);
			response.sendRedirect("leer.jsp");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
