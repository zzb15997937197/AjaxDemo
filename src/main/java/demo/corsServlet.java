package demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsonp_demo")
public class corsServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取到回调方法
		String callback=req.getParameter("callback");
		System.out.println(callback);
		if(null==callback) {
			callback="person";
		}
		resp.setHeader("Cache-Control", "no-cache");
		resp.setContentType("text/json;charset=UTF-8"); 
		 PrintWriter out = null; 
	        try { 
	            out = resp.getWriter(); 
	            String message= "{name:'张正兵',age:25}";
          out.print(callback+"("+message+")");//这里是关键.主要就是这里 ,服务端进行返回，客户端接收到json数据
          out.flush();
          out.close();    
          return;
	        } catch (IOException e) { 
	            e.printStackTrace(); 
	        } 
		  super.doGet(req, resp);
	}
	
	
}
