package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
 * Servlet implementation class Anadir
 */
@WebServlet("/Anadir")
public class Anadir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Anadir() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out;
		response.setContentType("text/html");
		out = response.getWriter();
		
		String titulo = request.getParameter("titulo");
		String email = request.getParameter("email");
		String contenido = request.getParameter("contenido");
		String categoria = request.getParameter("categoria");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/periodico";
			String usr = "root";
			String pass = "";
			Connection conn = DriverManager.getConnection(url, usr, pass);

			Statement stmt = conn.createStatement();
			
			if (titulo!="" || contenido!="") 
				stmt.executeUpdate("INSERT INTO noticias(titulo, contenido, mailAutor, idCategoria) VALUES( '" + titulo + "', '"
						+ contenido + "', '" + email + "', '"+categoria+"')");
			
			response.sendRedirect("Consultar");
			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}

}
