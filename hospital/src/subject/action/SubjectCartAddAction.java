package subject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import subject.svc.SubjectCartAddService;
import vo.ActionForward;
import vo.Subject;
import action.Action;

public class SubjectCartAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		SubjectCartAddService subjectCartAddService = new SubjectCartAddService(); // 장바구니 항목을 추가하는 비즈니스 로직을 처리하는 서비스 객체
																					// 생성
		String id = request.getParameter("id"); // 장바구니 항목으로 추가될 개 상품의 id를 파라미터 값으로 얻어오는 부분
		Subject cartSubject = subjectCartAddService.getCartSubject(id); // 장바구니 항목으로 추가될 개 상품 정보를 얻어오는 부분
		subjectCartAddService.addCart(request, cartSubject); // 특정 개 상품을 장바구니 항목으로 추가하는 메서드를 호출
		ActionForward forward = new ActionForward("subjectCartList.sub", true); // 포워딩에 사용되는 정보를 ActionForward 객체로 생성하는
																				// 부분
		// 리다이렉트 방식으로 포워딩
		return forward;
	}

}
