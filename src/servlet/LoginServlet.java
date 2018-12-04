package servlet;

import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import beans.User;
import utils.DBUtils;
import utils.MyUtils;
import connection.SQLServerConnection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String rememberMeStr = request.getParameter("rememberMe");
		boolean remember = "Y".equals(rememberMeStr);
		System.out.println(userName);
		System.out.println(password);
		User user = null;
		boolean hasError = false;
		String errorString = null;
		try {
			Connection con = SQLServerConnection.getConnection();
			// Tìm user trong DB.
			user = DBUtils.findUser(con, userName, password);
			if (user != null) {
				HttpSession session = request.getSession();
				MyUtils.storeLoginedUser(session, user);
				if (remember) {
					MyUtils.storeUserCookie(response, user);
				} else {
					MyUtils.deleteUserCookie(response);
				}
				RequestDispatcher d = request.getRequestDispatcher("/Main");
				d.forward(request, response);
			} else {
				request.setAttribute("errMsg", "username and password are incorrect");
					RequestDispatcher d = request.getRequestDispatcher("/Welcome.jsp");
					d.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
