package subject.action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import subject.svc.SubjectCartListService;
import vo.ActionForward;
import vo.Cart;
import action.Action;

public class SubjectCartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		SubjectCartListService subjectCartListService = new SubjectCartListService(); // 장바구니 목록보기 비즈니스 로직을 처리하는 서비스 클래스
																						// 객체를 생성
		ArrayList<Cart> cartList = subjectCartListService.getCartList(request); // 전체 장바구니 목록을 ArrayList 타입의 객체로 반환하는
																				// 메서드 호출

		// 총 금액 계산
		int totalMoney = 0;
		int money = 0;

		if (cartList != null) {
			for (int i = 0; i < cartList.size(); i++) { // 장바구니 목록에 존재하는 전체 상품의 총금액 계산
				money = cartList.get(i).getPrice() * cartList.get(i).getQty(); // 하나당 금액을 게산
				totalMoney += money; // 총금액 계산
			}
		}

		request.setAttribute("totalMoney", totalMoney); // 총금액을 request 영역에 속성으로 공유
		request.setAttribute("cartList", cartList); // 전체 장바구니 목록을 request 영역에 속성으로 공유
		request.setAttribute("pagefile", "jsp/subject/animalCartList.jsp");
		ActionForward forward = new ActionForward("index.jsp", false); // 포워딩 정보를 ActionForward 객체로 생성

//		ActionForward forward = new ActionForward();
//		forward.setRedirect(false);
//		forward.setPath("jsp/subject/animalCartList.jsp");

		return forward;
	}

}