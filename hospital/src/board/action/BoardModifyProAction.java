package board.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardModifyProService;
import vo.ActionForward;
import vo.BoardBean;
import action.Action;

public class BoardModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		boolean isModifySuccess = false;
		int board_number = Integer.parseInt(request.getParameter("BOARD_NUMBER")); // 글 수정 작업 성공 여부를 저장할 변수를 정의
		BoardBean article = new BoardBean(); // 파라미터로 전송되어 오는 수정 대상이 되는 글의 번호를 얻어오는 부분
		BoardModifyProService boardModifyProService = new BoardModifyProService();
		boolean isRightUser = boardModifyProService.isArticleWriter(board_number, request.getParameter("BOARD_PASS"));
		// 파라미터로 전송된 비밀번호를 사용해서 글 수정 요청을 한 사용자가 글을 작성한 사용자인지를 판단해주는 메서드를 호출

		if (!isRightUser) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('수정할 권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
		} else {
			article.setBOARD_NUMBER(board_number);
			article.setBOARD_SUBJECT(request.getParameter("BOARD_SUBJECT"));
			article.setBOARD_CONTENT(request.getParameter("BOARD_CONTENT"));
			isModifySuccess = boardModifyProService.modifyArticle(article);

			if (!isModifySuccess) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('수정실패');");
				out.println("history.back()");
				out.println("</script>");
			} else {
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("boardDetail.bo?board_num=" + article.getBOARD_NUMBER());
			}
		}

		return forward;
	}
}
