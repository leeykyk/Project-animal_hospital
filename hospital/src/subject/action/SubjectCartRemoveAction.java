package subject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import subject.svc.SubjectCartRemoveService;
import vo.ActionForward;
import action.Action;

public class SubjectCartRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String[] subjectArray = request.getParameterValues("remove"); // 삭제할 장바구니 항목의 kind 파라미터 값을 배열 형태로 받음
		SubjectCartRemoveService subjectCartRemoveService = new SubjectCartRemoveService(); // 장바구니 항목 삭제 비즈니스 로직을 처리하는
																							// 서비스 객체를 생성
		subjectCartRemoveService.cartRemove(request, subjectArray); // 장바구니 항목 삭제 요청을 처리하는 메서드를 호출
		ActionForward forward = new ActionForward("subjectCartList.sub", false); // 포워딩 정보를 ActionForward 객체로 생성
		return forward;
	}

}