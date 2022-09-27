package buywith.persistant.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mysql.cj.jdbc.Blob;

import buywith.connection.GetConnection;
import buywith.persistant.dto.ProductRequestDTO;
import buywith.persistant.dto.ProductResponseDTO;
import buywith.persistant.dto.UserResponseDTO;


	



	@Service("productDao")
	public class ProductDAO {

		
		public static Connection con = null;
	    static {
	    con = GetConnection.getConnection();
	    }

		 public int insertDataProducts(ProductRequestDTO dta) {
	   	  int result=0;
	       String sql = "insert into products (product_id,categories_category_id,product_name,quantity,img1,price,added_date,size,flavour,topping,color,description)"
	           + "values(?,?,?,?,?,?,?,?,?,?,?,?)";
	       
	       try {
	    	   PreparedStatement ps = con.prepareStatement(sql);
	    	   
	    	   ps.setString(1, dta.getProduct_id());
		       ps.setInt(2, dta.getCategories_category_id());
		       ps.setString(3, dta.getProduct_name());
		       ps.setString(4, dta.getQuantity());
		       ps.setBytes(5, dta.getImg1());
		       ps.setDouble(6, dta.getPrice());
		       ps.setString(7, dta.getAdded_date());
		       ps.setString(8, dta.getSize());
		       ps.setString(9, dta.getFlavour());
		       ps.setString(10, dta.getTopping());
		       ps.setString(11, dta.getColor());
		       ps.setString(12, dta.getDescription());

	         result=ps.executeUpdate();
	         
	       } catch (SQLException e) {
	         System.out.println("Error in inserting product due to " + e.getMessage());
	       }
			return result;
	       
	     }
		 
		 public ProductResponseDTO getCategoryId(String name) {
			 ProductResponseDTO res = new ProductResponseDTO();
			 String sql = "select * from categories where category_name=?";
			
			 
			 try {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, name);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					
					res.setCategories_category_id(rs.getInt("category_id"));
					
				}
				
			} catch (SQLException e) {
				 System.out.println("Error in selecting category id due to " + e.getMessage());
			}
			 return res;
			
		 }
		 
	     public int deleteDataProducts(ProductRequestDTO dta) {
	   	  int result=0;
	       String sql = "delete from products where product_id=?";
	       
	       try {
	         PreparedStatement ps = con.prepareStatement(sql);
	         ps.setString(1, dta.getProduct_id());
	        result= ps.executeUpdate();
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
	       return result;
	     }

	     public int updateDataProducts(ProductRequestDTO dto) {
	   	  int result=0;
	       String sql = "update products set categories_category_id=?,quantity=?,img1=?,price=?,added=?,update=?,size=?,flavour=?,topping=?,color=?,descirption=?";
	       
	       PreparedStatement ps;
	       try {
	         ps = con.prepareStatement(sql);
	         
	          // ps.setString(1, dto.getProduct_id());
		       ps.setInt(1, dto.getCategories_category_id());
		       ps.setString(2, dto.getProduct_name());
		       ps.setString(3, dto.getQuantity());
		       ps.setBytes(4, dto.getImg1());
		       ps.setDouble(5, dto.getPrice());
		       ps.setString(6, dto.getAdded_date());
		       ps.setString(7, dto.getUpate_date());
		       ps.setString(8, dto.getSize());
		       ps.setString(9, dto.getFlavour());
		       ps.setString(10, dto.getTopping());
		       ps.setString(11, dto.getColor());
		       ps.setString(12, dto.getDescription());

	         result= ps.executeUpdate();
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
	       return result;
	     }
	     public ProductResponseDTO selectOneProducts(ProductRequestDTO dto) {
	         ProductResponseDTO res = new ProductResponseDTO();
	         String sql="select * from products where product_id=?";
	         try {
	 			PreparedStatement ps=con.prepareStatement(sql);
	 			ps.setString(1, dto.getProduct_id());
	 			ResultSet rs=ps.executeQuery();
	 			while(rs.next()) {
	 		
	 				res.setProduct_id(rs.getString("product_id"));
	 				res.setCategories_category_id(rs.getInt("categories_category_id"));
	 				res.setProduct_name(rs.getString("product_name"));
	 				res.setQuantity(rs.getString("quantity"));
	 				res.setImg1(rs.getString("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_id"));
	 				res.setUpate_date(rs.getString("update_date"));
	 				res.setSize(rs.getString("size"));
	 				res.setFlavour(rs.getString("flavour"));
	 				res.setTopping(rs.getString("topping"));
	 				res.setColor(rs.getString("color"));
	 				res.setDescription(rs.getString("description"));
	 				
	 				
	 			}
	 		} catch (SQLException e) {
	 			// TODO Auto-generated catch block
	 			e.printStackTrace();
	 		}
	         
	 		return res;
	       }
	     
	     public ArrayList<ProductResponseDTO>selectAllProducts(){
	   	  ArrayList<ProductResponseDTO> list=new ArrayList<ProductResponseDTO>();
	   	  String sql="select * from products";
	   	  System.out.println("success");
	   	  try {
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					ProductResponseDTO res=new ProductResponseDTO();
					res.setProduct_id(rs.getString("product_id"));
	 				res.setCategories_category_id(rs.getInt("categories_category_id"));
	 				res.setProduct_name(rs.getString("product_name"));
	 				res.setQuantity(rs.getString("quantity"));
	 				res.setImg1(rs.getString("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_date"));
	 				res.setSize(rs.getString("size"));
	 				res.setFlavour(rs.getString("flavour"));
	 				res.setTopping(rs.getString("topping"));
	 				res.setColor(rs.getString("color"));
	 				res.setDescription(rs.getString("description"));
	 				
	 				list.add(res);
					
				}
			} catch (SQLException e) {
				System.out.println("Error in select all products due to " + e.getMessage());
			}
	   	  
			return list;
	     }
	     
//	     public Blob getPhotoById(int id) {
//	    	 String query = "select * from products where product_id=?";
//	    	 Blob photo = 
//	     }
	   
}
