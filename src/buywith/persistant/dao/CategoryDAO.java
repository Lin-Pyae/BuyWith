package buywith.persistant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import buywith.connection.GetConnection;
import buywith.persistant.dto.CategoryRequestDTO;
import buywith.persistant.dto.CategoryResponseDTO;
@Service("CategoryDao")
public class CategoryDAO {
 public static Connection con=null;
 static {
	 con=GetConnection.getConnection();
 }
 
 public CategoryResponseDTO selectOne(CategoryRequestDTO dto) {
	 CategoryResponseDTO res=new CategoryResponseDTO();
	 String sql="select * from category where category_id=?";
	 try {
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1, dto.getCategory_id());
		 ResultSet rs=ps.executeQuery();
		 while(rs.next()) {
			 res.setCategory_id(rs.getString("category_id"));
			 res.setCategory_name(rs.getString("category_name"));
		 }
	 } catch (SQLException e) {
		 e.printStackTrace();
	 }
		return res;	 
 }
 
 public ArrayList<CategoryResponseDTO> selectAll(){
	 ArrayList<CategoryResponseDTO> list=new ArrayList<CategoryResponseDTO>();
	 String sql="select * from category";
	 try { PreparedStatement ps=con.prepareStatement(sql);
	 ResultSet rs=ps.executeQuery();
	 while(rs.next()) {
		 CategoryResponseDTO res=new CategoryResponseDTO();
		 res.setCategory_id(rs.getString("category_id"));
		 res.setCategory_name(rs.getString("category_name"));
		 list.add(res);
	 }
  } catch (SQLException e) {
	  e.printStackTrace();
  }
	return list;
 }
 
 public ArrayList<CategoryResponseDTO> selectCategoryByName(String categoryId) {
	ArrayList<CategoryResponseDTO> list=new ArrayList<CategoryResponseDTO>();
	 String sql="select * from category where category_name=?";
	 try {
		 PreparedStatement ps=con.prepareStatement(sql);
		 ps.setString(1, categoryId);
		 ResultSet rs= ps.executeQuery();
		 while (rs.next()) {
			 CategoryResponseDTO categoryRes =new CategoryResponseDTO(); 
			 categoryRes.setCategory_id(rs.getString("category_id"));
			 categoryRes.setCategory_name(rs.getString("category_name"));
			 list.add(categoryRes);
		 } 
	   }catch (SQLException e) {
			 e.printStackTrace();
		 }
   return list;
 }

}
