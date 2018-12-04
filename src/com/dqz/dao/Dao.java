package com.dqz.dao;
import java.util.List;

import com.dqz.entity.Piano;
import com.dqz.entity.Product;
import com.dqz.entity.ProductCategory;
import com.dqz.entity.Turns;
import com.dqz.entity.Users;
import com.dqz.tools.JDBCUtils;

public class Dao {

	public List<Users> checkUserByPass(String name, String pass) {
		String sql="select * from Users where nickname='"+name+"' and pass='"+pass+"'";
		return JDBCUtils.query(sql, Users.class);
		
	}
	
	public String getName(String name) {
		String sql="select nickname from Users where nickname='"+name+"'";
		return (String)JDBCUtils.getColumn(sql, 1);
	}

	public int addUser(String name, String pass,String email) {
		String sql="INSERT INTO [dbo].[Users]([nickname],[pass],[email])VALUES(" +
				"'"+name+"','"+pass+"','"+email+"')";
		        return JDBCUtils.update(sql);
		
	}

	public String checkUser(String name, String email) {
		String sql="select pass from Users where nickname='"+name+"' and email='"+email+"'";
		return (String)JDBCUtils.getColumn(sql, 1);
	}

	

	public List<Turns> getTurns() {
		String sql="select * from [dbo].Turns;";
		return JDBCUtils.query(sql, Turns.class);
	}

	public List<Product> getAllByCid(int cid) {
		String sql="SELECT [id],[category_id] as categoryid  ,[canuse] ,[position_id] as position ," +
				"[p_name] as pname ,[brand]FROM" +
				" [MusicalInstruments].[dbo].[product] where category_id="+cid+"";
		return JDBCUtils.query(sql,Product.class);
	}

	public Piano getPiano(int pid) {
		String sql="select * from piano where id="+pid;
		return JDBCUtils.get(sql, Piano.class);
	}

	public List<ProductCategory> getCategoryAll() {
		String sql="select id as cid,c_name,s_tatus as status from product_category where s_tatus=0" ;
		return JDBCUtils.query(sql, ProductCategory.class);
	
	}
	

	
	
	
	
	

}
