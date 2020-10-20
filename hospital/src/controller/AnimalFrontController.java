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
import animal.action.*;
import member.action.MemberDeleteAction;
import member.action.MemberJoinAction;

@WebServlet("*.ani") // 앞의 url 경로에 상관없이 확장자가 뒤에 .dog로 끝나는 url 요청이 들어오면 요청 처리를 한다는 설정
public class AnimalFrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response); // DogFrontController 서블릿으로 들어오는 모든 요청에서는 doProcess 메서드를 호출한다.
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response); // DogFrontController 서블릿으로 들어오는 모든 요청에서는 doProcess 메서드를 호출한다.
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		// 1. 요청파악
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		Action action = null; // 요청이 파악되면 해당 요청을 처리하는 각 Action 클래스 객체를 사용해서 요청 처리
		ActionForward forward = null;

		// 2. 각 요청별로 비즈니스 로직 호출
		if (command.equals("/animalList.ani")) {
			action = new AnimalListAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/animalJoin.ani")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/Animal/Ani_joinForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("jsp/Animal/Ani_joinForm.jsp");

		} else if (command.equals("/AnimalJoinAction.ani")) {
			action = new AnimalJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/animalView.ani")) {
			action = new AnimalViewAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/animalModifyAction.ani")) {
			action = new AnimalModifyAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/AnimalDeleteAction.ani")) {
			action = new AnimalDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		// 3. 포워딩
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
