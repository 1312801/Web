package utils;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import java.security.*;
import beans.User;

public class DBUtils {
	
	//tim user
	public static User findUser(Connection conn, String userName, String password)
			throws SQLException, NoSuchAlgorithmException {

		String sql = "Select * from Customer cus " + " where cus.Username = ? and cus.Userpassword= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		// encryption password
		password = Encryption.SHA1(password);

		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			User customer = new User();
			customer.setID(Integer.parseInt(rs.getString("ID")));
			customer.setFullName(rs.getString("Fullname"));
			customer.setUserName(rs.getString("Username"));
			customer.setUserPassword(Encryption.SHA1(rs.getString("Userpassword")));
			customer.setIdentityNumber(rs.getString("IdentityNumber"));
			customer.setAddress(rs.getString("AddressCus"));
			customer.setPhonenumber(rs.getString("Phone"));
			customer.setEmail(rs.getString("Email"));
			customer.setGender(rs.getInt("Gender"));
			customer.setDOB(rs.getDate("DOB"));
			return customer;
		}
		return null;
	}

	//tim danh sach User
	public static List<User> queryUser(Connection conn) throws SQLException, NoSuchAlgorithmException {
		String sql = "Select * from Customer cus ";

		Statement pstm = conn.createStatement();

		ResultSet rs = pstm.executeQuery(sql);
		List<User> list = new ArrayList<User>();
		while (rs.next()) {
			User customer = new User();
			customer.setID(Integer.parseInt(rs.getString("ID")));
			customer.setFullName(rs.getString("Fullname"));
			customer.setUserName(rs.getString("Username"));
			customer.setUserPassword(Encryption.SHA1(rs.getString("Userpassword")));
			customer.setIdentityNumber(rs.getString("IdentityNumber"));
			customer.setAddress(rs.getString("Cusaddress"));
			customer.setPhonenumber(rs.getString("Phone"));
			customer.setEmail(rs.getString("Email"));
			customer.setGender(rs.getInt("Gender"));
			customer.setDOB(rs.getDate("DOB"));
			list.add(customer);
		}
		return list;
	}

	public static int registerUser(Connection conn, String userName, String password, String fullName, int gender,
			Date DOB, String email, String identityNumber, String phone, String address)
			throws SQLException, NoSuchAlgorithmException {
		String sql = "INSERT INTO Customer(Fullname, Username, Userpassword, IdentityNumber,"
				+ "AddressCus, Phone, Email, Gender, DOB) VALUES (?,?,?,?,?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);
		
		password = Encryption.SHA1(password);
		
		pstm.setString(1, fullName);
		pstm.setString(2, userName);
		pstm.setString(3, password);
		pstm.setString(4, identityNumber);
		pstm.setString(5, address);
		pstm.setString(6, phone);
		pstm.setString(7, email);
		pstm.setInt(8, gender);
		pstm.setDate(9, DOB);
		int res = pstm.executeUpdate();
		return res;
	}
	public static int updateUser(Connection conn, String userName, String password, String fullName, int gender,
			Date DOB, String email, String identityNumber, String phone, String address)
			throws SQLException, NoSuchAlgorithmException {
		String sql = "UPDATE Customer SET Fullname = ?, IdentityNumber = ?, AddressCus = ?, Phone = ?, Email = ?, Gender = ?, DOB = ? WHERE Username =  ?;";
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		password = Encryption.SHA1(password);

		System.out.println(fullName);
		System.out.println(identityNumber);
		System.out.println(address);
		System.out.println(userName);
		System.out.println(email);
		
		pstm.setString(1, fullName);
		pstm.setString(2, identityNumber);
		pstm.setString(3, address);
		pstm.setString(4, phone);
		pstm.setString(5, email);
		pstm.setInt(6, gender);
		pstm.setDate(7, DOB);
		pstm.setString(8, userName);

		int res = pstm.executeUpdate();
		System.out.println(res);
		return res;
	}
	
	public static int UpdatePass(Connection conn, String password, String CustomerID)
			throws SQLException, NoSuchAlgorithmException {
		password = Encryption.SHA1(password);
		String sql = "update Customer set Userpassword = '" + password + "' where ID = '" + CustomerID+ "'";
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		int res = pstm.executeUpdate();
		return res;
	}
	
	public static int UpdateUser(Connection conn, String password, String CustomerID)
			throws SQLException, NoSuchAlgorithmException {
		password = Encryption.SHA1(password);
		String sql = "update Customer set Userpassword = '" + password + "' where ID = '" + CustomerID+ "'";
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		int res = pstm.executeUpdate();
		return res;
	}
	public static void DeleteAccount(Connection conn,int ID) throws SQLException
	{
		String sql = "Delete  from dbo.Customer where ID="+ID;
		Statement stm =  conn.createStatement();
		stm.executeUpdate(sql);
	}
}