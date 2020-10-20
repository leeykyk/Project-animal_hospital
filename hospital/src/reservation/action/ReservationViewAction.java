//회원
package reservation.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import reservation.svc.ReservationViewService;
import reservation.svc.ReservationViewService2;
import vo.ActionForward;
import vo.MemberBean;
import vo.Reservation;
import action.Action;

public class ReservationViewAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		MemberBean member = (MemberBean) session.getAttribute("memberLog");

		ActionForward forward = null;
		if (member != null) {
			if (member.getGrade().equals("S")) {
				forward = new ActionForward();
				String viewId = member.getMember_ID();
				ReservationViewService ReservationViewService = new ReservationViewService();
				ArrayList<Reservation> list = ReservationViewService.getReservation(viewId);
				request.setAttribute("reservationList", list);
				request.setAttribute("pagefile", "appointment_cos.jsp");
				forward.setPath("index.jsp");
//         forward.setRedirect(false);
//         forward.setPath("jsp/reservation/appointment_cos.jsp");

			}
		} else {
			
			response.setContentType("text/html;charset=UTF8");
	         PrintWriter out = response.getWriter();
	         out.println("<script>");
	         out.println("alert('예약 정보 불러오기 실패');");
	         out.println("history.back()");
	         out.println("</script>");
		}
		return forward;
	}
}