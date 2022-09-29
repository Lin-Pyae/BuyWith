package buywith.persistant.dao;

import java.sql.Connection;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mysql.cj.jdbc.Blob;

import buywith.connection.GetConnection;


@Service("imageDao")
public class ImageDAO {

	private JdbcTemplate jdbcTemp;
	
	public static Connection con = null;
    static {
    con = GetConnection.getConnection();
    }
    
    
    public ImageDAO() {
    	jdbcTemp = new JdbcTemplate();
    }
    
    public Blob getPhotoById(String id) {
   	 
   	 String query = "select img1 from products where product_id=?";
   	 Blob photo = jdbcTemp.queryForObject(query, new Object[] { id }, Blob.class);
   	 return photo;
    }
}
