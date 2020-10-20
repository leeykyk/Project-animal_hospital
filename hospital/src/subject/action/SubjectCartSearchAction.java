package subject.action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import subject.svc.SubjectCartSearchService;
import vo.ActionForward;
import vo.Cart;
import action.Action;

public class SubjectCartSearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		SubjectCartSearchService subjectCartSearchService = new SubjectCartSearchService(); // 가격으로 장바구니 항목을 검색하는 비즈니스
																							// 로직이 구현된 서비스
		// 객체 생성

		// 검색에 사용될 시작 금액과 마지막 금액을 파라미터로 받는 부분
		int startMoney = Integer.parseInt(request.getParameter("startMoney"));
		int endMoney = Integer.parseInt(request.getParameter("endMoney"));

		// 시작 금액과 마지막 금액 사이에 존재하는 금액을 가지고 있는 상품의 장바구니 항목을 검색하는 메서드를 호출
		ArrayList<Cart> cartList = subjectCartSearchService.getCartSearchList(startMoney, endMoney, request);

		request.setAttribute("cartList", cartList); // 검색한 장바구니 항목을 request 영역에 속성으로 공유
		request.setAttribute("startMoney", startMoney); // 검색에 사용된 시작 금액을 request 영역에 속성으로 공유
		request.setAttribute("endMoney", endMoney); // 검색에 사용된 마지막 금액을 request 영역에 속성으로 공유
		int totalMoney = 0;
		int money = 0;

		for (int i = 0; i < cartList.size(); i++) {
			money = cartList.get(i).getPrice() * cartList.get(i).getQty();
			totalMoney += money;
		}

		request.setAttribute("totalMoney", totalMoney);
		request.setAttribute("pagefile", "jsp/subject/animalCartList.jsp");
		ActionForward forward = new ActionForward("index.jsp", false); // 포워딩 정보를 ActionForward 객체로 생성
		return forward;
	}

}