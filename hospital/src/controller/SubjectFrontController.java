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
import subject.action.*;
import vo.ActionForward;

/**
 * Servlet implementation class SubjectFrontController
 */
@WebServlet("*.sub")
public class SubjectFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { // 클라이언트에서 넘어오는 모든 요청을 처리하는 로직이 정의되는 메서드를 doProcess라는 이름으로 정의
		String RequestURI = request.getRequestURI(); // 요청 종류를 판단하는 부분
		String contextPath = request.getContextPath(); // 요청 종류를 판단하는 부분
		String command = RequestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;

		command = command.replace("/jsp/subject", "");
		System.out.println(command);

		// 클라이언트에서 넘어온 각 요청을 처리하는 Action 클래스들의 execute 메서드를 호출
		if (command.equals("/subjectJoin.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "jsp/subject/subjectForm.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("jsp/subject/subjectForm.jsp");

		} else if (command.equals("/department.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "department.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");		

		} else if (command.equals("/dog.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "blog_dog.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");	

		} else if (command.equals("/cat.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "blog_cat.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");		

		} else if (command.equals("/ham.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "blog_ham.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");			

		} else if (command.equals("/bir.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "blog_bir.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");		

		} else if (command.equals("/etc.sub")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			request.setAttribute("pagefile", "blog_etc.jsp");
			forward.setPath("index.jsp");
//			forward.setPath("/doc_joinForm.jsp");		

		} else if (command.equals("/subjectJoinAction.sub")) {
			action = new SubjectJoinAction();
			System.out.println("0 : " + request.getParameter("subject_ID"));
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/subjectListAction.sub")) { // 관리자가 보는 리스트
			action = new SubjectListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/subjectListAction2.sub")) { // 소비자가 보는 리스트
			action = new SubjectListAction2();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/subjectViewAction.sub")) {
			action = new SubjectViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/subjectModifyAction.sub")) {
			action = new SubjectModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/subjectDeleteAction.sub")) {
			action = new SubjectDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/subjectCartAdd.sub")) {
			action = new SubjectCartAddAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/subjectCartList.sub")) {
			action = new SubjectCartListAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/subjectCartSearch.sub")) {
			action = new SubjectCartSearchAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/subjectCartRemove.sub")) {
			action = new SubjectCartRemoveAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/subjectCartQtyUp.sub")) {
			action = new SubjectCartQtyUpAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/subjectCartQtyDown.sub")) {
			action = new SubjectCartQtyDownAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
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