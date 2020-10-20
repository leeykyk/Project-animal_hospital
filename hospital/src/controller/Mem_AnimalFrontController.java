package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import mem_animal.action.AnimalMemberDeleteAction;
import mem_animal.action.AnimalMemberJoinAction;
import mem_animal.action.AnimalMemberListAction;
import mem_animal.action.AnimalMemberModifyAction;
import mem_animal.action.AnimalMemberViewAction;
import mem_animal.action.AnimalMemberViewAction2;
import vo.ActionForward;

/**
 * Servlet implementation class Mem_AnimalFrontController
 */
@WebServlet("*.am")
public class Mem_AnimalFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // 클라이언트에서 넘어오는 모든 요청을 처리하는 로직이 정의되는 메서드를 doProcess라는 이름으로 정의
		String RequestURI = request.getRequestURI(); // 요청 종류를 판단하는 부분
		String contextPath = request.getContextPath(); // 요청 종류를 판단하는 부분
		String command = RequestURI.substring(contextPath.length());

		ActionForward forward = null;
		Action action = null;
		System.out.println(command);

		// 클라이언트에서 넘어온 각 요청을 처리하는 Action 클래스들의 execute 메서드를 호출
		if (command.equals("/animalMemberJoin.am")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/mem_Animal/animal_JoinForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("jsp/mem_Animal/joinForm.jsp");

		} else if (command.equals("/animalMemberJoinAction.am")) {
			action = new AnimalMemberJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/animalMemberListAction.am")) {
			action = new AnimalMemberListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/animalMemberViewAction.am")) {
			action = new AnimalMemberViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else if (command.equals("/animalMemberViewAction2.am")) {
			action = new AnimalMemberViewAction2();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
						
		} else if (command.equals("/animalMemberModifyAction.am")) {
			action = new AnimalMemberModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/animalMemberDeleteAction.am")) {
			action = new AnimalMemberDeleteAction();
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
				System.out.println("??:"+forward.getPath());
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