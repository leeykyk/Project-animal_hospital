package subject.svc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Cart;

public class SubjectCartQtyDownService {

	public void downCartQty(String kind, HttpServletRequest request) {

		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");

		// 수량을 감소시킬 대상 장바구니 항목 객체를 kind 값으로 비교하여 검색한 후 해당 객체의 수량값을 감소시킴
		for (int i = 0; i < cartList.size(); i++) {

			if (cartList.get(i).getKind().equals(kind)) {
				cartList.get(i).setQty(cartList.get(i).getQty() - 1);
			}

		}

	}

}
