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
import member.action.*;

@WebServlet("*.me")
public class MemberFrontController extends javax.servlet.http.HttpServlet {
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
		if (command.equals("/memberLogin.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/member/loginForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/loginForm.jsp");

		} else if (command.equals("/memberJoin.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/member/joinForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/joinForm.jsp");

		} else if (command.equals("/index.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "index1.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/joinForm.jsp");

		} else if (command.equals("/about.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "about.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/joinForm.jsp");	

		} else if (command.equals("/memberLoginAction.me")) {
			action = new MemberLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/memberJoinAction.me")) {
			action = new MemberJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/memberListAction.me")) {
			action = new MemberListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/memberViewAction.me")) {
			action = new MemberViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/memberViewAction2.me")) {
			action = new MemberViewAction2();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/memberModifyAction.me")) {
			action = new MemberModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/memberDeleteAction.me")) {
			action = new MemberDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/memberLogout.me")) {
			HttpSession session = request.getSession();
			session.invalidate();
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/memberLogin.me");
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