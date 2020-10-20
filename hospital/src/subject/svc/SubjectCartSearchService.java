package subject.svc;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Cart;

public class SubjectCartSearchService {

	public ArrayList<Cart> getCartSearchList(int start_money, int end_money, HttpServletRequest request) {

		HttpSession session = request.getSession();
		ArrayList<Cart> oldCartList = (ArrayList<Cart>) session.getAttribute("cartList"); // 세션 영역에 저장되어있는 장바구니 목록 객체를
																							// 얻어옴
		ArrayList<Cart> cartList = new ArrayList<Cart>(); // 검색된 장바구니 항목을 저장할 새로운 ArrayList 객체를 생성함

		for (int i = 0; i < oldCartList.size(); i++) { // 장바구니 목록을 반복하면서 검색 범위에 해당하는 장바구니 항목을 찾아서 새로 생성한 ArrayList 객체에
														// 추가함

			if (oldCartList.get(i).getPrice() >= start_money && oldCartList.get(i).getPrice() <= end_money) { // 가격이 검색
																												// 가격에
																												// 해당하는지
																												// 체크
				cartList.add(oldCartList.get(i));
			}

		}

		return cartList;
	}

}
