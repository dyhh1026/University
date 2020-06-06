package kubo;

import java.sql.*;
public class MysqlJdbc {
	  public static void main(String args[]) {
	    try {
	      Class.forName("com.mysql.jdbc.Driver");   
	      //Class.forName("org.gjt.mm.mysql.Driver");
	     System.out.println("Success loading Mysql Driver!");
	    }
	    catch (Exception e) {
	      System.out.print("Error loading Mysql Driver!");
	      e.printStackTrace();
	    }
	    try {
	      Connection connect = DriverManager.getConnection(
	          "jdbc:mysql://localhost:3306/kubo","root","269221dd");
	         

	      System.out.println("Success connect Mysql server!");
	           
	            PreparedStatement ps =  connect.prepareStatement("insert into users(name,password) values(?,?)");
	            ps.setString(1, "李白");
	            ps.setString(2, "李白");	            
	            ps.executeUpdate();
	           
	  	       ResultSet rs = ps.executeQuery("select * from users");
	  	                                                
	while (rs.next()) {
	        System.out.println(rs.getString("name")+"------"+rs.getString("password"));
	      }
	    }
	    catch (Exception e) {
	      System.out.print("get data error!");
	      e.printStackTrace();
	    }
	  }
	}
