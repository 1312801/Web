package beans;
import java.sql.Date;
//Khai bao bang Customer
public class User {
int ID;
String FullName;
String UserName;
String UserPassword;
String IdentityNumber;
String Address;
String Phonenumber;
String Email;
int Gender;
int Admin;
Date DOB;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getFullName() {
	return FullName;
}
public void setFullName(String fullName) {
	FullName = fullName;
}
public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public String getUserPassword() {
	return UserPassword;
}
public void setUserPassword(String userPassword) {
	UserPassword = userPassword;
}
public String getIdentityNumber() {
	return IdentityNumber;
}
public void setIdentityNumber(String identityNumber) {
	IdentityNumber = identityNumber;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getPhonenumber() {
	return Phonenumber;
}
public void setPhonenumber(String phonenumber) {
	Phonenumber = phonenumber;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public int getGender() {
	return Gender;
}
public void setGender(int gender) {
	Gender = gender;
}
public int getAdmin() {
	return Admin;
}
public void setAdmin(int admin) {
	Admin = admin;
}
public Date getDOB() {
	return DOB;
}
public void setDOB(Date dOB) {
	DOB = dOB;
}
}
