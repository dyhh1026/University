package kubo;

import java.util.ArrayList;
import java.util.List;


public interface UserImp {
       public boolean register(User user);
       public boolean exist(String name);
       public boolean login(String name,String pwd);
       public List<Vedio> search(String info);
       public List<Vedio> searchone(int vedioid);
       public List<Vedio> searchoneji(int vedioid);
       public List<Vedio> searchonejinumber(int vedioid,int vedioidid);
       public List<Vedio> searchtype(String typeid);
       public boolean insert(Comment cobject); 
       public List<Comment> searchcommentlist(int vedioid);
}
