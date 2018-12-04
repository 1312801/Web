package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Product;
import connection.SQLServerConnection;
import utils.MobileUtils;

@WebServlet(urlPatterns = { "/Main",""})
public class MobileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	public MobileServlet()
	{
		super();
	}
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String MobileName=request.getParameter("mobile");
    	HttpSession session = request.getSession();
    	session.setAttribute("hotelname1", MobileName);
    	//System.out.println(hotelName);
        String errorString = null;
        List<Product> Mobilelist = null;
        
        try {  
	   		Connection con =SQLServerConnection.getConnection();
            Mobilelist = MobileUtils.queryMobile(con);
            System.out.println(Mobilelist.size());
            //System.out.println(Hotellist.size());
            //them hinh vao Hotellist
            
        } catch (Exception e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
       
        
        session.setAttribute("Mobilelist",Mobilelist);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Main.jsp");
        dispatcher.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}