package reservation.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import reservation.svc.ReservationRemoveService;
import subject.svc.SubjectCartRemoveService;
import vo.ActionForward;

public class ReservationRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String[] res_num = request.getParameterValues("res_num"); // 삭제할 장바구니 항목의 kind 파라미터 값을 배열 형태로 받음

		ReservationRemoveService reservationRemoveService = new ReservationRemoveService(); // 장바구니 항목 삭제 비즈니스 로직을 처리하는
																							// 서비스 객체를 생성
		boolean result = reservationRemoveService.removeResService(res_num); // 장바구니 항목 삭제 요청을 처리하는 메서드를 호출
		ActionForward forward = null;

		if (result == true) {
			forward = new ActionForward("ReservationViewAction.res", false);

		} else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('예약 취소 실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		// 포워딩 정보를 ActionForward 객체로 생성
		return forward;
	}

}