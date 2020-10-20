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

		String[] res_num = request.getParameterValues("res_num"); 

		ReservationRemoveService reservationRemoveService = new ReservationRemoveService(); 
																							// 서비스 객체를 생성
		boolean result = reservationRemoveService.removeResService(res_num); 
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
		
		return forward;
	}

}
