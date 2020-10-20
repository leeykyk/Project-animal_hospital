package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;
import action.Action;

public class BoardReplyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = new ActionForward();
		String nowPage = request.getParameter("page");
		int board_number = Integer.parseInt(request.getParameter("board_number"));
		// 답변글 등록 처리를 한 후 원래 보던 페이지로 되돌아 가야 하기 때문에 파라미터로 전송되어 오는 페이지 번호 값을 얻어옴

		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_number); // 답변글으르 달아줄 대상 글의 정보를 얻어옴
		request.setAttribute("article", article); // 글 정보를 request 영역에 속성으로 공유
		request.setAttribute("page", nowPage); // 페이지 번호를 request 영역에 속성으로 공유
		forward.setPath("jsp/board/qna_board_reply.jsp");
		return forward;
	}
}
