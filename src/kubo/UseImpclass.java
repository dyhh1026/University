package kubo;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class UseImpclass implements UserImp {
public boolean register(User user) {
	        boolean flag = false;
	        Connection conn = DataBaseUtil.getConn();
	        String sql = "insert into users(name,password) values(?,?)";
	        try {

	            PreparedStatement ps =  conn.prepareStatement(sql);
	            ps.setString(1, user.getName());
	            ps.setString(2, user.getPwd());
	            ps.executeUpdate();
	            ps.close();
	            DataBaseUtil.closeConn(conn);
	            flag = true;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        
	    
	return flag;
	}

public boolean exist(String name) {
	boolean flag = false;
	Connection conn = DataBaseUtil.getConn();
    String sql = "select * from users where name=?";
    try {

    	 PreparedStatement ps =  conn.prepareStatement(sql);
         ps.setString(1, name);
         ResultSet rs=ps.executeQuery();
    	if(rs.next()){  flag = true;
		}
    	 ps.close();
         rs.close();
    	 DataBaseUtil.closeConn(conn);
       
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return flag;
}


public boolean login(String name,String pwd) {
	boolean flag = false;
	Connection conn = DataBaseUtil.getConn();
    String sql = "select * from users where name=? and password=?";
    try {
         
    	 PreparedStatement ps =  conn.prepareStatement(sql);
         ps.setString(1, name);
         ps.setString(2, pwd);
         ResultSet rs=ps.executeQuery();
        
         while(rs.next()){
				if(rs.getString("name").equals(name) && rs.getString("password").equals(pwd)){
					flag = true;
				}
			}
    	
    	 ps.close();
         rs.close();
    	 DataBaseUtil.closeConn(conn);
       
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return flag;
}

public List<Vedio> search(String info) {
	   
   		List<Vedio> vediolist=new ArrayList<Vedio>();
   		Connection conn = DataBaseUtil.getConn();
   	    String sql = "select * from vedio where title like ?";
   	    try {

   	    	 PreparedStatement ps =  conn.prepareStatement(sql);
   	         ps.setString(1, "%"+info+"%");
   	         ResultSet rs=ps.executeQuery();
   	      while (rs.next()) {
   	    	  int id=rs.getInt("id");
   	     String title= rs.getString("title");
   	     String cover= rs.getString("cover");
   	 	 String intro=rs.getString("intro");
   	 	
  			
   	 	
  			
  			Vedio vedio=new Vedio();
  			vedio.setId(id);
  			vedio.setTitle(title);
  			vedio.setCover(cover);
  			vedio.setIntro(intro);
  			
  			vediolist.add(vedio);
  		}
   	    	 ps.close();
   	         rs.close();
   	    	 DataBaseUtil.closeConn(conn);
   	       
   	    } catch (SQLException e) {
   	        e.printStackTrace();
   	    }
   		return vediolist;
}

public List<Vedio> searchone(int vedioid) {
	
	List<Vedio> vediolist =new ArrayList<Vedio>();
		Connection conn = DataBaseUtil.getConn();
	    String sql = "select * from vedio where id=?";
	    try {
	    	 PreparedStatement ps =  conn.prepareStatement(sql);
	         ps.setInt(1, vedioid);
	         ResultSet rs=ps.executeQuery();
	      while (rs.next()) {
	    	  int id=rs.getInt("id");
	    	  
	    
	     String title= rs.getString("title");
	     String lujin=rs.getString("lujin");
	     String cover= rs.getString("cover");
	 	 String intro=rs.getString("intro");
	 	 String type=rs.getString("type");
	 	 String dou=rs.getString("dou");
	 	 String updatetime=rs.getString("updatetime");
	 	 String firstplay=rs.getString("firstplay");
	 	 String year=rs.getString("year");
	 	 String location=rs.getString("location");
	 	 String smalltype=rs.getString("smalltype");
	 	 String maker=rs.getString("maker");
	 	 String playman=rs.getString("playman");
			
	 	
			
			Vedio vedio=new Vedio();
			vedio.setId(id);
			vedio.setTitle(title);
			
			vedio.setLujin(lujin);
			vedio.setCover(cover);
			vedio.setIntro(intro);
			vedio.setType(type);
			vedio.setDou(dou);
			vedio.setUpdatetime(updatetime);
			vedio.setFirstplay(firstplay);
			vedio.setYear(year);
			vedio.setLocation(location);
			vedio.setSmalltype(smalltype);
			vedio.setMaker(maker);
			vedio.setPlayman(playman);
					
			vediolist.add(vedio);
		}
	    	 ps.close();
	         rs.close();
	    	 DataBaseUtil.closeConn(conn);
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return vediolist;
}


public List<Vedio> searchtype(String typeid) {
	List<Vedio> vediotypelist=new ArrayList<Vedio>();
	Connection conn = DataBaseUtil.getConn();
    String sql = "select * from vedio where type=?";
    try {

    	 PreparedStatement ps =  conn.prepareStatement(sql);
         ps.setString(1, typeid);
         ResultSet rs=ps.executeQuery();
      while (rs.next()) {
    	  int id=rs.getInt("id");
     String title= rs.getString("title");
     String lujin=rs.getString("lujin");
     String cover= rs.getString("cover");
 	 String intro=rs.getString("intro");
 	 
 	
		
		Vedio vedio=new Vedio();
		vedio.setId(id);
		vedio.setTitle(title);
		vedio.setLujin(lujin);
		vedio.setCover(cover);
		vedio.setIntro(intro);
		
				
		vediotypelist.add(vedio);
	}
    	 ps.close();
         rs.close();
    	 DataBaseUtil.closeConn(conn);
       
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return vediotypelist;
}

public List<Vedio> searchoneji(int vedioid) {
	
	List<Vedio> vediolistji =new ArrayList<Vedio>();
	Connection conn = DataBaseUtil.getConn();
    String sql = "select * from vedio,ji where vedio.title=ji.name and  id=?";
    try {
    	 PreparedStatement ps =  conn.prepareStatement(sql);
         ps.setInt(1, vedioid);
         ResultSet rs=ps.executeQuery();
      while (rs.next()) {
    	  int id=rs.getInt("id");
    	  
    
     String title= rs.getString("title");
     String address=rs.getString("address");
     String lujin=rs.getString("lujin");
 	String number=rs.getString("number");
		
 	
		
		Vedio vedio=new Vedio();
		vedio.setId(id);
		vedio.setAddress(address);
		vedio.setTitle(title);
		vedio.setNumber(number);
		vedio.setLujin(lujin);
		
				
		vediolistji.add(vedio);
	}
    	 ps.close();
         rs.close();
    	 DataBaseUtil.closeConn(conn);
       
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return vediolistji;
}

public List<Vedio> searchonejinumber(int vedioid,int vedioidid) {
	List<Vedio> vediolistji =new ArrayList<Vedio>();
	Connection conn = DataBaseUtil.getConn();
    String sql = "select * from vedio,ji where vedio.title=ji.name and  number=? and id=?";
    try {
    	 PreparedStatement ps =  conn.prepareStatement(sql);
         ps.setInt(1, vedioid);
         ps.setInt(2, vedioidid);
         ResultSet rs=ps.executeQuery();
      while (rs.next()) {
    	  int id=rs.getInt("id");
    	  
    
     String title= rs.getString("title");
     String address=rs.getString("address");
     String lujin=rs.getString("lujin");
 	 String number=rs.getString("number");
		
 	
		
		Vedio vedio=new Vedio();
		vedio.setId(id);
		vedio.setAddress(address);
		vedio.setTitle(title);
		vedio.setNumber(number);
		vedio.setLujin(lujin);
		vediolistji.add(vedio);
	}
    	 ps.close();
         rs.close();
    	 DataBaseUtil.closeConn(conn);
       
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return vediolistji;
}

public boolean insert(Comment cobject) {
	
	  boolean flag = false;
      Connection conn = DataBaseUtil.getConn();
      String sql = "insert into comment(comment,time,username,vedioid) values(?,?,?,?)";
      try {

          PreparedStatement ps =  conn.prepareStatement(sql);
          ps.setString(1, cobject.getComment());
          ps.setString(2, cobject.getTime());
          ps.setString(3, cobject.getUsername());
          ps.setInt(4, cobject.getVedioid());
          ps.executeUpdate();
          ps.close();
          DataBaseUtil.closeConn(conn);
          flag = true;
      } catch (SQLException e) {
          e.printStackTrace();
      }
      
  
return flag;
}

public List<Comment> searchcommentlist(int vedioid) {
	
	List<Comment> commentlist =new ArrayList<Comment>();
	Connection conn = DataBaseUtil.getConn();
    String sql = "select * from comment where vedioid=? order by commentid desc";
    try {
    	 PreparedStatement ps =  conn.prepareStatement(sql);
         ps.setInt(1, vedioid);
         ResultSet rs=ps.executeQuery();
      while (rs.next()) {
     String comment= rs.getString("comment");
    
     String time=rs.getString("time");
     String username= rs.getString("username");
 	 int vedio=rs.getInt("vedioid");
 	 
		
		Comment comments=new Comment();
		comments.setComment(comment);
		comments.setUsername(username);
		comments.setTime(time);                                                                                                                                                                                                                                                                                                                                             
		comments.setVedioid(vedio);

		commentlist.add(comments);
	}
    	 ps.close();
         rs.close();
    	 DataBaseUtil.closeConn(conn);
       
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return commentlist;
}

}
















