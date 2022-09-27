package buywith.persistant.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.mysql.cj.xdevapi.Statement;

import buywith.connection.GetConnection;
import buywith.persistant.dto.UserRequestDTO;
import buywith.persistant.dto.UserResponseDTO;

@Service("userDao")
public class UserDAO {
public static Connection con = null;
static {
	con = GetConnection.getConnection();
}

public int addUser(UserRequestDTO dto) {
	String sql = "insert into addresses (streetName, Township,City,zipcode) values(?,?,?,?)";
	int result =0;
	
	try {
		PreparedStatement ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		ps.setString(1,dto.getStreet_name());
		ps.setString(2,dto.getTownship());
		ps.setString(3, dto.getCity());
		ps.setString(4,dto.getZipcode());
		result = ps.executeUpdate();
		
		ResultSet generatedKeys = ps.getGeneratedKeys();
		System.out.println(generatedKeys);
		if(generatedKeys.next()) {
			String query = "insert into users (address_id,name,email,phone_number,password,dob) values(?,?,?,?,?,?)";
			PreparedStatement ps1 = con.prepareStatement(query);
			ps1.setInt(1, (int)generatedKeys.getLong(1));
			ps1.setString(2, dto.getName());
			ps1.setString(3, dto.getEmail());
			ps1.setString(4, dto.getPhone_number());
			ps1.setString(5, dto.getPassword());
			ps1.setString(6, dto.getDob());
			 ps1.executeUpdate();
		}
		
		else {
			 throw new SQLException("Creating user failed, no ID obtained.");
		}
	} catch (SQLException e) {
		System.out.println("Insert error due to " + e.getMessage());
	}
	
	return result;
}


public int updateUser(UserRequestDTO dto) {
	String sql = "update users set name=?, email=?, phone_number=?, password=?, dob=? where user_id=?";
	String address_sql = "update addresses set streetName=?, Township=?, City=?, zipcode=? where address_id=?";
	int result = 0;
	
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,dto.getName());
		ps.setString(2,dto.getEmail());
		ps.setString(3,dto.getPhone_number());
		ps.setString(4,dto.getPassword());
		ps.setString(5, dto.getDob());
		ps.setInt(6, dto.getUser_id());
		result = ps.executeUpdate();
		
		PreparedStatement aps= con.prepareStatement(address_sql);
		aps.setString(1, dto.getStreet_name());
		aps.setString(2, dto.getTownship());
		aps.setString(3, dto.getCity());
		aps.setString(4, dto.getZipcode());
		aps.setInt(5, dto.getAddress_id());
		result = aps.executeUpdate();

	} catch (SQLException e) {
		System.out.println("Error in updating user due to " + e.getMessage());
	}
	return result;
}

	

public ArrayList<UserResponseDTO> selectAll(){
	ArrayList<UserResponseDTO> list = new ArrayList<UserResponseDTO>();
	String sql = "select * from users u join addresses a on u.address_id = a.address_id";
	System.out.println("Success user");
	try {
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			UserResponseDTO res= new UserResponseDTO();
			res.setUser_id(rs.getInt("user_id"));
			res.setAddress_id(rs.getInt("address_id"));
			res.setName(rs.getString("name"));
			res.setEmail(rs.getString("email"));
			res.setPhone_number(rs.getString("phone_number"));
			res.setPassword(rs.getString("password"));
			res.setDob(rs.getString("dob"));
			res.setRole_id(rs.getString("role_id"));
			res.setStreetName(rs.getString("streetName"));
			res.setTownship(rs.getString("Township"));
			res.setCity(rs.getString("City"));
			res.setZipcode(rs.getString("zipcode"));
			list.add(res);
			
		}
	} catch (SQLException e) {
		System.out.println("Error in select all user due to "+ e.getMessage());
	}
	return list;
	
}




}
