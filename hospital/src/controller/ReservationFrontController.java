package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.ActionForward;
import action.Action;
import reservation.action.*;
import reservation.action.ReservationRemoveAction;

/**
 * Servlet implementation class ReservationFrontController
 */
@WebServlet("*.res")
public class ReservationFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReservationFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length()); // 전송된 요청을 파악 (60~62행)
		System.out.println(command);
		ActionForward forward = null; // 각 Action 클래스 객체의 execute 메서드를 실행한 후 반환되는 ActionForward 객체를 저장할 변수를 정의한 부분
		Action action = null;

		if (command.equals("/blog.res")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "blog.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/loginForm.jsp");

		} else if (command.equals("/appointment.res")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "appointment.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/joinForm.jsp");					

//      } else if (command.equals("/appointment.res")) {
//  		action = new ReservationAppointAction();
//
//           try {
//              forward = action.execute(request, response);
//           } catch (Exception e) {
//              e.printStackTrace();
//           }

//		} else if (command.equals("/reservationListAction.res")) {
//			action = new ReservationListAction();
//
//			try {
//				forward = action.execute(request, response);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}

		} else if (command.equals("/ReservationRemove.res")) {
			action = new ReservationRemoveAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}				

		} else if (command.equals("/ReservationAddAction.res")) {
			action = new ReservationAddAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		else if (command.equals("/ReservationViewAction.res")) {
			action = new ReservationViewAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		else if (command.equals("/ReservationViewAction2.res")) {
			action = new ReservationViewAction2();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		if (forward != null) {
			if (forward.isRedirect()) { // 리다이렉트 방식으로 포워딩함
				response.sendRedirect(forward.getPath());
			} else { // 디스패치 방식으로 포워딩함
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);

			}
		}

	}

}