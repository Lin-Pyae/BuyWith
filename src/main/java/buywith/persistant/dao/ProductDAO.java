package buywith.persistant.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;


import com.mysql.cj.jdbc.Blob;

import buywith.connection.GetConnection;
import buywith.persistant.dto.CategoryRequestDTO;
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
		       ps.setInt(4, dta.getQuantity());
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
	       String sql = "update products set categories_category_id=?,product_name=?,quantity=?,img1=?,price=?,added_date=?,size=?,flavour=?,topping=?,color=?,description=? where product_id=?";
	       
	       PreparedStatement ps;
	       try {
	         ps = con.prepareStatement(sql);
	         
	          // ps.setString(1, dto.getProduct_id());
		       ps.setInt(1, dto.getCategories_category_id());
		       ps.setString(2, dto.getProduct_name());
		       ps.setInt(3, dto.getQuantity());
		       ps.setBytes(4, dto.getImg1());
		       ps.setDouble(5, dto.getPrice());
		       ps.setString(6, dto.getAdded_date());
		       ps.setString(7, dto.getSize());
		       ps.setString(8, dto.getFlavour());
		       ps.setString(9, dto.getTopping());
		       ps.setString(10, dto.getColor());
		       ps.setString(11, dto.getDescription());
		       ps.setString(12, dto.getProduct_id());
	         result= ps.executeUpdate();
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
	       return result;
	     }
	     public ProductResponseDTO selectOneProducts(String id) {
	         ProductResponseDTO res = new ProductResponseDTO();
	         String sql="select * from products where product_id=?";
	         try {
	 			PreparedStatement ps=con.prepareStatement(sql);
	 			ps.setString(1, id);
	 			ResultSet rs=ps.executeQuery();
	 			while(rs.next()) {
	 		
	 				res.setProduct_id(rs.getString("product_id"));
	 				res.setCategories_category_id(rs.getInt("categories_category_id"));
	 				res.setProduct_name(rs.getString("product_name"));
	 				res.setQuantity(rs.getInt("quantity"));
	 				res.setImg1(rs.getBytes("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_date"));
	 				res.setSize(rs.getInt("size"));
	 				res.setFlavour(rs.getString("flavour"));
	 				res.setTopping(rs.getString("topping"));
	 				res.setColor(rs.getString("color"));
	 				res.setDescription(rs.getString("description"));
	 				
	 				
	 			}
	 		} catch (SQLException e) {
	 			System.out.println("Error in selecting one product due to " + e.getMessage());
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
	 				res.setQuantity(rs.getInt("quantity"));
	 				res.setImg1(rs.getBytes("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_date"));
	 				res.setSize(rs.getInt("size"));
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
	     
	     public  ArrayList<ProductResponseDTO> getProductbyname(String name) {
	    	 ArrayList<ProductResponseDTO> list=new ArrayList<ProductResponseDTO>();
			 String sql = "SELECT * FROM products p join categories c on p.categories_category_id = c.category_id where category_name=?";
		 
			 try {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, name);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					ProductResponseDTO res=new ProductResponseDTO();
					res.setProduct_id(rs.getString("product_id"));
	 				res.setCategories_category_id(rs.getInt("categories_category_id"));
	 				res.setProduct_name(rs.getString("product_name"));
	 				res.setQuantity(rs.getInt("quantity"));
	 				res.setImg1(rs.getBytes("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_date"));
	 				res.setSize(rs.getInt("size"));
	 				res.setFlavour(rs.getString("flavour"));
	 				res.setTopping(rs.getString("topping"));
	 				res.setColor(rs.getString("color"));
	 				res.setDescription(rs.getString("description"));
	 				
	 				list.add(res);
				}
			} catch (SQLException e) {
				System.out.println("Error in select products by name due to " + e.getMessage());
			}
			 
			 return list;
		 }
	     
	     
	     public ArrayList<ProductResponseDTO> productSearch(ProductRequestDTO dto, CategoryRequestDTO cdto){
	    		ArrayList<ProductResponseDTO> list = new ArrayList<ProductResponseDTO>();
	    		String query = "select * from products p join categories c on p.categories_category_id = c.category_id where product_id=? or product_name=? or category_name=? ";
	    			System.out.println("search");
	    		try {
	    			PreparedStatement ps = con.prepareStatement(query);
	    			
	    			ps.setString(1, dto.getProduct_id());
	    			ps.setString(2, dto.getProduct_name());
	    			ps.setString(3, cdto.getCategory_name());
	    			ResultSet rs = ps.executeQuery();
	    			while(rs.next()) {
	    				System.out.print("product");
	    				ProductResponseDTO  res = new ProductResponseDTO();
	    				res.setProduct_id(rs.getString("product_id"));
		 				res.setCategories_category_id(rs.getInt("categories_category_id"));
		 				res.setProduct_name(rs.getString("product_name"));
		 				res.setQuantity(rs.getInt("quantity"));
		 				res.setImg1(rs.getBytes("img1"));
		 				res.setPrice(rs.getDouble("price"));
		 				res.setAdded_date(rs.getString("added_date"));
		 				res.setSize(rs.getInt("size"));
		 				res.setFlavour(rs.getString("flavour"));
		 				res.setTopping(rs.getString("topping"));
		 				res.setColor(rs.getString("color"));
		 				res.setDescription(rs.getString("description"));
		 				res.setCategory_name(rs.getString("category_name"));
	    				list.add(res);
	    				System.out.println("des " + rs.getString("description"));
	    			}
	    		} catch (SQLException e) {
	    			System.out.println("Erorr in product search due to " + e.getMessage());
	    		}
	    		return list;

	    	}
	     
	   
}
