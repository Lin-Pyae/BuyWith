package buywith.persistant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import buywith.connection.GetConnection;
import buywith.persistant.dto.CartItemsRequestDTO;
import buywith.persistant.dto.CartItemsResponseDTO;
import buywith.persistant.dto.ProductResponseDTO;

@Service("cartitemsDao")
public class CartItemsDAO {
	public static Connection con=null;
	static {
		con=GetConnection.getConnection();
	}
	
	public int insertData (CartItemsRequestDTO dto) {
		int result=0;
		String sql="insert into cart_items (cart_id,user_id,product_id,quantity)"+"(?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, dto.getCart_id());
			ps.setInt(2, dto.getUser_id());
			ps.setInt(3, dto.getProduct_id());
			ps.setInt(4, dto.getQuantity());
			result=ps.executeUpdate();
		}catch(SQLException e) {
			System.out.println("Database error");
		}
		return result;
	}
	
	public CartItemsResponseDTO selectOne(CartItemsRequestDTO dto) {
		CartItemsResponseDTO res=new CartItemsResponseDTO();
		String sql="select * from cart_items where cart_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, dto.getCart_id());
			ResultSet rs=ps.executeQuery();
			while(rs.next());{
				res.setCart_id(rs.getInt("cart_id"));
				res.setUser_id(rs.getInt("user_id"));
				res.setProduct_id(rs.getInt("product_id"));
				res.setQuantity(rs.getInt("quantity"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public ArrayList<CartItemsResponseDTO> selectAll(){
		ArrayList<CartItemsResponseDTO> list=new ArrayList();
		String sql="select * from cart_items";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				CartItemsResponseDTO res=new CartItemsResponseDTO();
				res.setCart_id(rs.getInt("cart_id"));
				res.setUser_id(rs.getInt("user_id"));
				res.setProduct_id(rs.getInt("product_id"));
				res.setQuantity(rs.getInt("quantity"));
				list.add(res);
			}
		}catch(SQLException e) {
			
		}
		return list;
	}
	
	public ArrayList showCart(){
		ArrayList<ProductResponseDTO> list=new ArrayList();
		//ArrayList<CartItemsResponseDTO> list2=new ArrayList();
		String sql= "select * from products p join cart_items c on p.product_id = c.products_product_id";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ProductResponseDTO res=new ProductResponseDTO();
				res.setProduct_name(rs.getString("product_name"));
				res.setPrice(rs.getDouble("price"));
				res.setQuantity(rs.getInt("quantity"));
				list.add(res);
				list.add(res);
			}
		}catch(SQLException e) {
			
		}
		return list;
	}
	
}
