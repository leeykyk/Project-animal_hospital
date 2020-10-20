package subject.svc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Cart;

public class SubjectCartRemoveService {

	public void cartRemove(HttpServletRequest request, String[] kindArray) {
		HttpSession session = request.getSession(); // 요청에 대한 세션 객체를 얻어옴
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList"); // 세션 영역에서 장바구니 목록 객체를 얻어옴

		for (int i = 0; i < kindArray.length; i++) { // 클라이언트가 삭제할 대상으로 선택한 항목의 kind 값들을 반복해서 처리

			for (int j = 0; j < cartList.size(); j++) { // 삭제할 항목의 kind별로 해당 kind 값과 동일한 kind 값을 가진 장바구니 항목을 찾아서 삭제 처리함

				if (cartList.get(j).getKind().equals(kindArray[i])) { // 삭제할 kind 값과 장바구니 항목의 kind 값을 비교하는 부분
					cartList.remove(cartList.get(j)); // 삭제할 대상 장바구니 항목을 장바구니 목록에서 제거

				}

			}

		}

	}

}
