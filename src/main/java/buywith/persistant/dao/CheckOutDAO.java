package buywith.persistant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import buywith.connection.GetConnection;
//import buywith.persistant.dto.CartItemsRequestDTO;
//import buywith.persistant.dto.CartItemsResponseDTO;
import buywith.persistant.dto.CheckOutRequestDTO;
import buywith.persistant.dto.CheckOutResponseDTO;
//import buywith.persistant.dto.OrderDetailsRequestDTO;
//import buywith.persistant.dto.OrderDetailsResponseDTO;
//import buywith.persistant.dto.OrderRequestDTO;
//import buywith.persistant.dto.OrderResponseDTO;
import buywith.persistant.dto.ProductRequestDTO;
import buywith.persistant.dto.ProductResponseDTO;

@Service("checkoutDAO")
public class CheckOutDAO {
	
	public static Connection con=null;
	static {
		con=GetConnection.getConnection();
	}
	
	
	public int insertData (CheckOutRequestDTO dto) {
		int result=0;
		String sql="insert into cart_items (user_id,product_id,quantity)"+"(?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setInt(1, dto.getUser_id());
			ps.setString(2, dto.getProduct_id());
			ps.setInt(3, dto.getQuantity());
			result=ps.executeUpdate();
		}catch(SQLException e) {
			System.out.println("Database error");
		}
		return result;
	}
	
	public CheckOutResponseDTO selectOneCart(CheckOutRequestDTO dto) {
		CheckOutResponseDTO res=new CheckOutResponseDTO();
		String sql="select * from cart_items where cart_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, dto.getCart_id());
			ResultSet rs=ps.executeQuery();
			while(rs.next());{
				res.setCart_id(rs.getInt("cart_id"));
				res.setProduct_id(rs.getString("product_id"));
				res.setQuantity(rs.getInt("quantity"));
				res.setTotal_price(rs.getDouble("total_price"));
				res.setAll_price(rs.getDouble("all_price"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public ArrayList<CheckOutResponseDTO> selectAllCart(){
		ArrayList<CheckOutResponseDTO> list=new ArrayList();
		String sql="select * from cart_items";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				CheckOutResponseDTO res=new CheckOutResponseDTO();
				res.setCart_id(rs.getInt("cart_id"));
				res.setProduct_id(rs.getString("product_id"));
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
		String sql= "select * from products p join cart_items c on p.product_id = c.products_product_id where product_name";
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
	
	public ArrayList<CheckOutResponseDTO> show (CheckOutRequestDTO dto,ProductRequestDTO pdto){
		ArrayList<CheckOutResponseDTO> list=new ArrayList<CheckOutResponseDTO>();
		String query="select * from cart_items c join products p on c.products_product_id=p.product_id where cart_id=?";
		System.out.println("checkout");
		
	
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, dto.getCart_id());
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				System.out.println("showcart");
				CheckOutResponseDTO res=new CheckOutResponseDTO();
				res.setCart_id(rs.getInt("cart_id"));
				res.setProduct_id(rs.getString("product_id"));
				res.setQuantity(rs.getInt("quantity"));
				res.setProduct_name(rs.getString("product_name"));
				res.setTotal_price(rs.getDouble("total_price"));
				res.setAll_price(rs.getDouble("all_price"));
				list.add(res);

			}
		} catch (SQLException e) {
			System.out.println("Error due to checkout "+ e.getMessage());
			e.printStackTrace();
		}
		
		
		
	return list;	
	}
	
	
	//CartItems
	
	
	public int insertDataorder(CheckOutRequestDTO dto) {
		int result=0;
		String sql="insert into orders(cart_items_cart_id,order_note,total_price,payment)"+"values(?,?,?,?)";
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setInt(1, dto.getCart_id());
		ps.setString(2, dto.getOrderNote());
		ps.setDouble(3, dto.getTotalPrice());
		ps.setString(4, dto.getPayment());
		
	} catch(SQLException e) {
		System.out.println("Database error");
	}
	return result;
	}

	public CheckOutResponseDTO selectOneorder(CheckOutRequestDTO dto) {
		CheckOutResponseDTO res=new CheckOutResponseDTO();
		String sql="select * from orders where order_id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, dto.getOrderId());
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				res.setOrderId(rs.getInt("order_id"));
				res.setCart_items_cart_id(rs.getInt("cart_items_cart_id"));
				res.setOrderNote(rs.getString("order_note"));
				res.setTotalPrice(rs.getDouble("total_price"));
				res.setPayment(rs.getString("payment"));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public ArrayList<CheckOutResponseDTO> selectAllorder(){
		ArrayList<CheckOutResponseDTO> list=new ArrayList();
		String sql="select * from orders";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				CheckOutResponseDTO res=new CheckOutResponseDTO();
				res.setOrderId(rs.getInt("order_id"));
				res.setCart_items_cart_id(rs.getInt("cart_items_cart_id"));
				res.setOrderNote(rs.getString("order_note"));
				res.setTotalPrice(rs.getDouble("total_price"));
				res.setPayment(rs.getString("payment"));
				list.add(res);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//Order
	
	
	public int insertDataOd(CheckOutRequestDTO dto) {
		int result=0;
		String sql="insert into order_details(product_id,order_id,order_detailID,quantity,subtotal)"+"values(?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, dto.getProduct_id());
			ps.setInt(2, dto.getOrder_id());
			ps.setInt(3, dto.getOrder_detail_id());
			ps.setInt(4, dto.getQuantity());
			ps.setDouble(5, dto.getSubtotal());
		}catch(SQLException e) {
			System.out.println("Database error");
		}
		return result;
	}
	
	
	
	
	public CheckOutResponseDTO selectOne(CheckOutRequestDTO dto) {
		CheckOutResponseDTO res=new CheckOutResponseDTO();
		String sql="select * from order_details where order_detailID =?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, dto.getOrder_detail_id());
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				res.setOrder_detail_id(rs.getInt("order_detailID"));
				res.setProduct_id(rs.getString("product_id"));
				res.setOrder_id(rs.getInt("order_id"));
				res.setQuantity(rs.getInt("quantity"));
				res.setSubtotal(rs.getDouble("subtotal"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}return res;
	}
	
	public ArrayList<CheckOutResponseDTO> selectAll(){
		ArrayList<CheckOutResponseDTO> list=new ArrayList();
		String sql="select * from orders ";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				CheckOutResponseDTO res=new CheckOutResponseDTO();
				res.setOrder_detail_id(rs.getInt("order_detailID"));
				res.setProduct_id(rs.getString("product_id"));
				res.setOrder_id(rs.getInt("order_id"));
				res.setQuantity(rs.getInt("quantity"));
				res.setSubtotal(rs.getDouble("subtotal"));
				list.add(res);
				}
			}catch(SQLException e) {
				e.printStackTrace();
		} return list;
	}
	
	public ArrayList<CheckOutResponseDTO> displayOrderDetails(){
		ArrayList<CheckOutResponseDTO> list=new ArrayList();

		String sql="SELECT * FROM cakedb.products JOIN cakedb.order_details ON products.product_id = order_details.products_product_id  ";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				CheckOutResponseDTO res=new CheckOutResponseDTO();
				res.setOrder_detail_id(rs.getInt("order_detailID"));
				res.setProduct_id(rs.getString("product_name"));
				res.setQuantity(rs.getInt("quantity"));
				res.setSubtotal(rs.getDouble("subtotal"));
				list.add(res);
				}
			}catch(SQLException e) {
				e.printStackTrace();
		} return list;
	}
	
	
	
	//OrderDetails

	
	
}
