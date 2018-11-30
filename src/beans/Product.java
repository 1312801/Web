package beans;
import java.sql.*;
import java.math.*;
public class Product {
int ID;
String ProductName;
String CategoryID;
int Quantity;
Date ReleaseDate;
int Flag;
int Star;
String Description;
String Photo;
BigDecimal Price;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getProductName() {
	return ProductName;
}
public void setProductName(String productName) {
	ProductName = productName;
}
public String getCategoryID() {
	return CategoryID;
}
public void setCategoryID(String categoryID) {
	CategoryID = categoryID;
}
public int getQuantity() {
	return Quantity;
}
public void setQuantity(int quantity) {
	Quantity = quantity;
}
public Date getReleaseDate() {
	return ReleaseDate;
}
public void setReleaseDate(Date releaseDate) {
	ReleaseDate = releaseDate;
}
public int getFlag() {
	return Flag;
}
public void setFlag(int flag) {
	Flag = flag;
}
public int getStar() {
	return Star;
}
public void setStar(int star) {
	Star = star;
}
public String getDescription() {
	return Description;
}
public void setDescription(String description) {
	Description = description;
}
public String getPhoto() {
	return Photo;
}
public void setPhoto(String photo) {
	Photo = photo;
}
public BigDecimal getPrice() {
	return Price;
}
public void setPrice(BigDecimal price) {
	Price = price;
}

}
