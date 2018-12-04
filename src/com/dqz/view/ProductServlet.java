package com.dqz.view;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dqz.dao.Dao;
import com.dqz.entity.Piano;
import com.dqz.entity.Product;
import com.dqz.entity.ProductCategory;
import com.dqz.entity.Turns;
import com.dqz.entity.Users;
import com.dqz.tools.Code;

import com.google.gson.Gson;

public class ProductServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
     private Dao dao=new Dao();
     Gson gson=new Gson();
     private Code code =null;
   private Map<String,Object> map=new HashMap<String,Object>();

 //用户登录
 public void checkUser(HttpServletRequest request, HttpServletResponse response)
 			throws ServletException, IOException {
 		String name=request.getParameter("login");
 		String pass=request.getParameter("pwd");
 		List<Users> u=	dao.checkUserByPass(name, pass);
 		if(u.size()>0&&u!=null){
 			map.put("success", true);
 		}else{
 			map.put("success", false);
 		}
 	response.getWriter().print(gson.toJson(map));
 		
 }
 public void checkName(HttpServletRequest request, HttpServletResponse response)
 		throws ServletException, IOException {
    String  name=request.getParameter("name");
 	  String n=dao.getName(name);
 	  if(n==null||n=="")
 			 code = new Code(0,"用户名可用");
 	  
 	  else
 			code = new Code(1,"用户名已存在，请换一个");
 		response.getWriter().print(gson.toJson(code));  
 }

 //用户注册：
 public void addUser(HttpServletRequest request, HttpServletResponse response)
 		throws ServletException, IOException {
 	String name=request.getParameter("name");
 	String pass=request.getParameter("pwd");
 	String email=request.getParameter("email");
 	int a=dao.addUser(name, pass,email);
 	if(a>0){
 		map.put("success", true);
 	}else{
 		map.put("success", false);
 	}
 response.getWriter().print(gson.toJson(map));

 }


 //找回密码：
 public void checkUserByNameandEmail(HttpServletRequest request, HttpServletResponse response)
 		throws ServletException, IOException {
 	String name=request.getParameter("name");
 	String email=request.getParameter("email");
 	String pass=dao.checkUser(name, email);
 	if(pass==null||pass==""){
 		map.put("success", false);
 	}else{
 		map.put("success", true);
 		map.put("msg", pass);
 	}
 response.getWriter().print(gson.toJson(map));

 }
//首页轮番图：
 public void turns(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 List<Turns> t= dao.getTurns();
	     request.setAttribute("t",t);
	     List<ProductCategory>  list =dao.getCategoryAll();
		 request.setAttribute("cate",list);
request.getRequestDispatcher("index.jsp").forward(request, response);
	}

 //根据分类id进入某类详细页面
 public void getAllByCid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
/*	 List<Piano> pianos=new ArrayList<Piano>();
	 Piano  piano =null;
for (int i = 0; i<list.size(); i++) {
	int pid=list.get(i).getId();
	 piano =dao.getPiano(pid);
	 pianos.add(piano);
      }
      	 request.setAttribute("piano",pianos);
      */
int cid=Integer.parseInt(request.getParameter("cid"));
List<Product>  list =dao.getAllByCid(cid);
	 request.setAttribute("list",list);
request.getRequestDispatcher("catalog_grid.jsp").forward(request, response);
	 
 }
 public void getCategoryAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	 
	 	 
	 
 }
 
}
