package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;
import action.Action;

public class BoardModifyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();
		int board_number = Integer.parseInt(request.getParameter("board_number")); // 파라미터로 전송되어 오는 수정 대상이 되는 글의 번호를 받는
																					// 부분
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_number); // 수정 대상이 되는 글의 정보를 반환하는 메서드 호출
		request.setAttribute("article", article); // 수정 대상이 되는 글의 이전 정보를 request 영역에 속성으로 공유
		forward.setPath("jsp/board/qna_board_modify.jsp");
		return forward;
	}
}
