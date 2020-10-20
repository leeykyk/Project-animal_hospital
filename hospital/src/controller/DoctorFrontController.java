package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ActionForward;
import action.Action;
import doctor.action.*;

@WebServlet("*.doc")
public class DoctorFrontController extends javax.servlet.http.HttpServlet {
	static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // 클라이언트에서 넘어오는 모든 요청을 처리하는 로직이 정의되는 메서드를 doProcess라는 이름으로 정의
		String RequestURI = request.getRequestURI(); // 요청 종류를 판단하는 부분
		String contextPath = request.getContextPath(); // 요청 종류를 판단하는 부분
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
		System.out.println(command);

		// 클라이언트에서 넘어온 각 요청을 처리하는 Action 클래스들의 execute 메서드를 호출
		if (command.equals("/doctorLogin.doc")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/doctor/doc_loginForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_loginForm.jsp");

		} else if (command.equals("/doctorJoin.doc")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/doctor/doc_joinForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");

		} else if (command.equals("/doctor.doc")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "doctor.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");	
			
//		} else if (command.equals("/doctor.doc")) {
//			action = new DoctorMainAction();
//			try {
//				forward = action.execute(request, response);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}	
//			
		} else if (command.equals("/doctorLoginAction.doc")) {
			action = new DoctorLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/doctorJoinAction.doc")) {
			action = new DoctorJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/doctorListAction.doc")) {
			action = new DoctorListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/doctorViewAction.doc")) {
			action = new DoctorViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/doctorDeleteAction.doc")) {
			action = new DoctorDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/doctorModifyAction.doc")) {
			action = new DoctorModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/doctorLogout.doc")) {
			HttpSession session = request.getSession();
			session.invalidate();
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/doctorLogin.doc");
		}

		if (forward != null) { // 뷰 페이지로 포워딩해줌
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

	// 클라이언트에서 요청이 GET 방식으로 넘어오든 POST 방식으로 넘어오든 요청을 공통적으로 처리하는 doProcess 메서드를 호출
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}
}