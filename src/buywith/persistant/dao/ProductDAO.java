package buywith.persistant.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import buywith.connection.GetConnection;
import buywith.persistant.dto.CategoryRequestDTO;
import buywith.persistant.dto.ProductRequestDTO;
import buywith.persistant.dto.ProductResponseDTO;


	



	@Service("productDao")
	public class ProductDAO<StudentResponseDTO> {

		
		public static Connection con = null;
	    static {
	    con = GetConnection.getConnection();
	    }

		 public int insertDataProducts(ProductRequestDTO dta) {
	   	  int result=0;
	       String sql = "insert into users (categories_category_id,product_name,quantity,img1,price,added_date,size,flavour,topping,color,descirption)"
	           + "values(?,?,?,?,?,?,?,?,?,?,?)";
	       
	       try {
	    	   PreparedStatement ps = con.prepareStatement(sql);
	    	   
	    	  // ps.setString(1, dta.getProduct_id());
		       ps.setString(1, dta.getCategories_category_id());
		       ps.setString(2, dta.getProduct_name());
		       ps.setInt(3, dta.getQuantity());
		       ps.setString(4, dta.getImg1());
		       ps.setDouble(5, dta.getPrice());
		       ps.setString(6, dta.getAdded_date());
		       ps.setInt(7, dta.getSize());
		       ps.setString(8, dta.getFlavour());
		       ps.setString(9, dta.getTopping());
		       ps.setString(10, dta.getColor());
		       ps.setString(11, dta.getDescirption());

	         result=ps.executeUpdate();
	         
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
			return result;
	       
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
	       String sql = "update products set categories_category_id=?,product_name=?,quantity=?,img1=?,price=?,added_date=?,size=?,flavour=?,topping=?,color=?,descirption=? where product_id=?";
	       
	       PreparedStatement ps;
	       try {
	         ps = con.prepareStatement(sql);
	         
	          
		       ps.setString(1, dto.getCategories_category_id());
		       ps.setString(2, dto.getProduct_name());
		       ps.setInt(3, dto.getQuantity());
		       ps.setString(4, dto.getImg1());
		       ps.setDouble(5, dto.getPrice());
		       ps.setString(6, dto.getAdded_date());
		       ps.setInt(7, dto.getSize());
		       ps.setString(8, dto.getFlavour());
		       ps.setString(9, dto.getTopping());
		       ps.setString(10, dto.getColor());
		       ps.setString(11, dto.getDescirption());
		       ps.setString(12, dto.getProduct_id());

	         result= ps.executeUpdate();
	       } catch (SQLException e) {
	         System.out.println("Error due to " + e.getMessage());
	       }
	       return result;
	     }
	     public ProductResponseDTO selectOneProducts(ProductRequestDTO dto) {
	         ProductResponseDTO res = new ProductResponseDTO();
	         String sql="select * from products where product_id=?";
	         System.out.println("one");
	         try {
	 			PreparedStatement ps=con.prepareStatement(sql);
	 			ps.setString(1, dto.getProduct_id());
	 			ResultSet rs=ps.executeQuery();
	 			while(rs.next()) {
	 				System.out.println("select");
	 				res.setProduct_id(rs.getString("product_id"));
	 				res.setCategories_category_id(rs.getString("categories_category_id"));
	 				res.setProduct_name(rs.getString("product_name"));
	 				res.setQuantity(rs.getInt("quantity"));
	 				res.setImg1(rs.getString("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_date"));
	 				res.setSize(rs.getInt("size"));
	 				res.setFlavour(rs.getString("flavour"));
	 				res.setTopping(rs.getString("topping"));
	 				res.setColor(rs.getString("color"));
	 				res.setDescirption(rs.getString("descirption"));
	 				System.out.println("des "+ rs.getString("descirption"));
	 				
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
					System.out.println("Win");
					ProductResponseDTO res=new ProductResponseDTO();
					res.setProduct_id(rs.getString("product_id"));
	 				res.setCategories_category_id(rs.getString("categories_category_id"));
	 				res.setProduct_name(rs.getString("product_name"));
	 				res.setQuantity(rs.getInt("quantity"));
	 				res.setImg1(rs.getString("img1"));
	 				res.setPrice(rs.getDouble("price"));
	 				res.setAdded_date(rs.getString("added_date"));
	 				res.setSize(rs.getInt("size"));
	 				res.setFlavour(rs.getString("flavour"));
	 				res.setTopping(rs.getString("topping"));
	 				res.setColor(rs.getString("color"));
	 				res.setDescirption(rs.getString("descirption"));
	 				
	 				list.add(res);
					
				}
			} catch (SQLException e) {
				System.out.println("Erorr in due to " + e.getMessage());
				e.printStackTrace();
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
		 				res.setCategories_category_id(rs.getString("categories_category_id"));
		 				res.setProduct_name(rs.getString("product_name"));
		 				res.setQuantity(rs.getInt("quantity"));
		 				res.setImg1(rs.getString("img1"));
		 				res.setPrice(rs.getDouble("price"));
		 				res.setAdded_date(rs.getString("added_date"));
		 				res.setSize(rs.getInt("size"));
		 				res.setFlavour(rs.getString("flavour"));
		 				res.setTopping(rs.getString("topping"));
		 				res.setColor(rs.getString("color"));
		 				res.setDescirption(rs.getString("descirption"));
		 				res.setCategory_name(rs.getString("category_name"));
	    				list.add(res);
	    				System.out.println("des " + rs.getString("descirption"));
	    			}
	    		} catch (SQLException e) {
	    			System.out.println("Erorr in product search due to " + e.getMessage());
	    		}
	    		return list;

	    	}

	   
}
