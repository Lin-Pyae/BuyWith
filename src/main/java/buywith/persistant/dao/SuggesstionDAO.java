package buywith.persistant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Service;

import buywith.connection.GetConnection;
import buywith.persistant.dto.SuggesstionRequestDTO;

@Service("suggesstionDao")
public class SuggesstionDAO {

	public static Connection con= null;
	static {
		con=GetConnection.getConnection();
	}
	
	public int addSuggesstions(String review, int id) {	
		String sql="insert into suggestions(suggestion,user_id) values(?,?)";
		int result=0;
		
		try {
			System.out.println("Sugesstion dao");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, review);
			ps.setInt(2, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Error in adding suggesstion due to " + e.getMessage());
		}
		return result;
	}
	
	
}
