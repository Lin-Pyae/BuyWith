package buywith.persistant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;



import buywith.connection.GetConnection;
import buywith.persistant.dto.SuggesstionRequestDTO;
import buywith.persistant.dto.SuggesstionResponseDTO;

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
	
	
	public ArrayList<SuggesstionResponseDTO>selectAllsugg(){
		ArrayList<SuggesstionResponseDTO> list=new ArrayList<SuggesstionResponseDTO>();
	   	  
		String sql="select * from suggestions";
	   	  System.out.println("success");
	   	  try {
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					System.out.println("Win");
					System.out.println("user id "+rs.getInt("user_id"));
					SuggesstionResponseDTO res=new SuggesstionResponseDTO();
					res.setSuggesstion_id(rs.getInt("suggestion_id"));
					res.setSuggesstion(rs.getString("suggestion"));
	 				res.setUser_id(rs.getInt("user_id"));
	 				
	 				list.add(res);
					
				}
			} catch (SQLException e) {
				System.out.println("Erorr in due to " + e.getMessage());
				e.printStackTrace();
			}
	   	  
			return list;
	     }
	
	
}
