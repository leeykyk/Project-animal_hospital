package subject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import subject.svc.SubjectCartQtyDownService;
import vo.ActionForward;
import action.Action;

public class SubjectCartQtyDownAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String subject = request.getParameter("subject"); // 수량을 감소시킬 대상이 되는 장바구니 항목의 kind 값을 파라미터 값으로 받음
		SubjectCartQtyDownService subjectCartQtyDownService = new SubjectCartQtyDownService(); // 장바구니 항목의 수량을 감소시키는
																								// 비즈니스 로직을 처리하는
		// 서비스 객체를 생성
		subjectCartQtyDownService.downCartQty(subject, request); // 장바구니 항목의 수량을 감소시키는 메서드 호출
		ActionForward forward = new ActionForward("subjectCartList.sub", true); // 포워딩 정보를 ActionForward 객체로 생성
		return forward;
	}

}