package beans;
import java.math.*;
public class Bill {
int ID;
int CartID;
BigDecimal TotalPrice;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public int getCartID() {
	return CartID;
}
public void setCartID(int cartID) {
	CartID = cartID;
}
public BigDecimal getTotalPrice() {
	return TotalPrice;
}
public void setTotalPrice(BigDecimal totalPrice) {
	TotalPrice = totalPrice;
}

}
