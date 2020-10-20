package subject.svc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Cart;

public class SubjectCartListService {

	public ArrayList<Cart> getCartList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
		return cartList;
	}

}
