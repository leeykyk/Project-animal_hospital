package reservation.action;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import member.svc.MemberJoinService;
import reservation.svc.ReservationJoinService;
import vo.ActionForward;
import vo.MemberBean;
import vo.Reservation;

public class ReservationAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		Reservation reservation = new Reservation();
		boolean joinResult = false; // 예약 요청 처리 성공 여부를 저장할 변수

		// 예약 페이지에서 전송된 회원의 정보를 reservation 객체의 속성 값으로 할당
		reservation.setMember_ID(request.getParameter("member_ID"));		
		reservation.setSubject(request.getParameter("subject"));
		reservation.setMember_name(request.getParameter("member_name"));
		reservation.setAnimal_name(request.getParameter("animal_name"));
		String[] date = request.getParameter("date").split("/");
		String[] time = request.getParameter("time").split(":");
//      System.out.println(time[0]+":::"+time[1]);
//      System.out.println(time[1].substring(time[1].length()-2));
		String hour = (time[1].substring(time[1].length() - 2)).equals("am") ? time[0]
				: String.valueOf(Integer.parseInt(time[0]) + 12);
//      System.out.println(hour);
		System.out.println(date[2] + "-" + date[0] + "-" + date[1] + " " + hour + ":"
				+ time[1].substring(0, time[1].length() - 2) + ":00");
		reservation.setDate(Timestamp.valueOf(date[2] + "-" + date[0] + "-" + date[1] + " " + hour + ":"
				+ time[1].substring(0, time[1].length() - 2) + ":00"));
		reservation.setEtc(request.getParameter("etc"));

		reservation.setPhone(request.getParameter("phone"));
		reservation.setKind(request.getParameter("kind"));
		

		ReservationJoinService reservationJoinService = new ReservationJoinService(); // 예약 비즈니스 로직을 처리할
																						// ReservationJoinService 객체를 생성
		joinResult = reservationJoinService.joinReservation(reservation); // 예약 요청을 처리하는 reservation 메서드를 호출

		ActionForward forward = null;

		if (joinResult == false) { // 실패시
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('예약 실패')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./ReservationViewAction.res");
		}
		return forward;
	}

}