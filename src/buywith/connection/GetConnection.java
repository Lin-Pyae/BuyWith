package buywith.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConnection {
	static Connection con = null;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
		} catch (ClassNotFoundException e) {
			System.out.println("SQL driver not found in getConnection "+e.getMessage());
		} catch (SQLException e) {
			System.out.println("Database not found in getConnection");
		}
		return con;
	}
}
