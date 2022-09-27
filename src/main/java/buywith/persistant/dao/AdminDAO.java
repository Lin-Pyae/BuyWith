package buywith.persistant.dao;


	import java.sql.Connection;
import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;

	import org.springframework.stereotype.Service;
	import buywith.persistant.dto.AdminRequestDTO;
	import buywith.persistant.dto.AdminResponseDTO;
import buywith.connection.GetConnection;



	@Service("adminDao")
	public class AdminDAO {

		
		public static Connection con = null;
	    static {
	    con = GetConnection.getConnection();
	    }

		 public int insertDataAdmins(AdminRequestDTO dta) {
	   	  int result=0;
	       String sql = "insert into admins (admin_id,name,email,password)"
	           + "values(?,?,?,?)";
	       
	       try {
	    	   PreparedStatement ps = con.prepareStatement(sql);
	    	   
		         ps.setString(1, dta.getAdmin_id());
		         ps.setString(2, dta.getName());
		         ps.setString(3, dta.getEmail());
		         ps.setString(4, dta.getPassword());
		         

	         result=ps.executeUpdate();
	         
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
			return result;
	       
	     }
		 
	     public int deleteDataAdmins(AdminRequestDTO dta) {
	   	  int result=0;
	       String sql = "delete from admins where admin_id=?";
	       
	       try {
	         PreparedStatement ps = con.prepareStatement(sql);
	         ps.setString(1, dta.getAdmin_id());
	        result= ps.executeUpdate();
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
	       return result;
	     }

	     public int updateDataAdmins(AdminRequestDTO dto) {
	   	  int result=0;
	       String sql = "update admins set admin_id=?, name=?, email=?, password=?";
	       
	       PreparedStatement ps;
	       try {
	         ps = con.prepareStatement(sql);
	        
	         ps.setString(1, dto.getAdmin_id());
	         ps.setString(2, dto.getName());
	         ps.setString(3, dto.getEmail());
	         ps.setString(4, dto.getPassword());
	        

	         result= ps.executeUpdate();
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
	       return result;
	     }
	     public AdminResponseDTO selectOneAdmins(AdminRequestDTO dto) {
	         AdminResponseDTO res = new AdminResponseDTO();
	         String sql="select * from admins where admin_id=?";
	         try {
	 			PreparedStatement ps=con.prepareStatement(sql);
	 			ps.setString(1, dto.getAdmin_id());
	 			ResultSet rs=ps.executeQuery();
	 			while(rs.next()) {
	 		
	 				res.setAdmin_id(rs.getString("admin_id"));
	 				res.setName(rs.getString("name"));
	 				res.setEmail(rs.getString("email"));
	 				res.setPassword(rs.getString("password"));
	 				
	 			}
	 		} catch (SQLException e) {
	 			// TODO Auto-generated catch block
	 			e.printStackTrace();
	 		}
	         
	 		return res;
	       }
	     
	     public ArrayList<AdminResponseDTO>selectAllAdmins(){
	   	  ArrayList<AdminResponseDTO> list=new ArrayList<AdminResponseDTO>();
	   	  String sql="select * from admins";
	   	  System.out.println("success admin");
	   	  try {
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					
					AdminResponseDTO res=new AdminResponseDTO();
				
	 				res.setAdmin_id(rs.getString("admin_id"));	 				
	 				res.setName(rs.getString("name"));
	 				res.setEmail(rs.getString("email"));	 				
	 				res.setPassword(rs.getString("password"));
	 				list.add(res);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	   	  
			return list;
	     }
	   
	
}
