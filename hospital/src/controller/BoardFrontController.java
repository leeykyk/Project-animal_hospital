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
import board.action.*;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.bo") // 마지막 url이 *.bo 로 끝나는 요청을 매핑하는 서블릿으로 지정하는 부분
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardFrontController() {
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

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length()); // 전송된 요청을 파악 (60~62행)
		System.out.println(command);
		ActionForward forward = null; // 각 Action 클래스 객체의 execute 메서드를 실행한 후
										// 반환되는 ActionForward 객체를 저장할 변수를 정의한 부분
		Action action = null;

		// 각 요청에 해당하는 Action 클래스 객체를 실행하는 부분.
		// 각 Action 객체를 실행하면 forward 변수에 각 액션 객체에서 반환된
		// ActionForward 객체가 참조된다. (71~145행)
		if (command.equals("/boardWriteForm.bo")) { // 글쓰기 페이지를 열어주는 요청 같은 경우는
			forward = new ActionForward(); // 특별한 비즈니스 로직을 실행할 필요 없이
			forward.setPath("jsp/board/qna_board_write.jsp"); // ← 이 문장으로 포워딩될 페이지만 지정하면 된다. (71~73행)
		} else if (command.equals("/boardWritePro.bo")) {
			action = new BoardWriteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardList.bo")) {
			action = new BoardListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardDetail.bo")) {
			action = new BoardDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardReplyForm.bo")) {
			action = new BoardReplyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardReplyPro.bo")) {
			action = new BoardReplyProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardModifyForm.bo")) {
			action = new BoardModifyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardModifyPro.bo")) {
			action = new BoardModifyProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/boardDeleteForm.bo")) { // 게시판글 하나를 삭제한 후 원래 보던 목록 보기 페이지로 되돌아 가야 하기 때문에
			String nowPage = request.getParameter("page"); // 게시판 삭제를 위해서 비밀번호를 입력하는 페이지(qna_board_delete.jsp)로
			request.setAttribute("page", nowPage); // 페이지 번호를 공유한다. (123~129행)
			int board_number = Integer.parseInt(request.getParameter("board_number"));
			request.setAttribute("board_number", board_number);
			forward = new ActionForward();
			forward.setPath("jsp/board/qna_board_delete.jsp");
		} else if (command.equals("/boardDeletePro.bo")) {
			action = new BoardDeleteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (forward != null) { // 각 Action 클래스 객체에서 반환된 ActionForward 객체 정보를 사용하여 포워딩 처리하는 부분. (139~145행)

			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}
