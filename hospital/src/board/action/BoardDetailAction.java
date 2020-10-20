package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;
import action.Action;

public class BoardDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int board_number = Integer.parseInt(request.getParameter("board_number")); // 파라미터로 전송되어오는 상세 내용을 볼 글의 번호를 받는 부분
		String page = request.getParameter("page"); // 파라미터로 전송되는 페이지 번호를 받는 부분
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_number); // 파라미터로 전송된 글 번호를 가지고 있는 글 하나의 정보를 반환하는 메서드를
																			// 호출하는 부분
		ActionForward forward = new ActionForward();
		request.setAttribute("page", page); // 페이지 번호를 request 영역에 속성으로 공유
		request.setAttribute("article", article); // 글 정보를 request 영역에 속성으로 공유
		forward.setPath("jsp/board/qna_board_view.jsp");
		return forward;
	}
}
