package board.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardDeleteProService;
import vo.ActionForward;
import action.Action;

public class BoardDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		int board_number = Integer.parseInt(request.getParameter("board_number")); // 파라미터로 전송되어오는 삭제 대상이 되는 글의 번호를 얻어옴
		String nowPage = request.getParameter("page"); // 글 삭제 요청을 처리한 후 원래 보던 페이지 목록으로 돌아가기 위해서 페이지 번호를 얻어옴
		BoardDeleteProService boardDeleteProService = new BoardDeleteProService();
		boolean isArticleWriter = boardDeleteProService.isArticleWriter(board_number,
				request.getParameter("BOARD_PASS"));
		// 삭제 요청을 한 사용자가 글을 작성한 사용자인지를 판단

		if (!isArticleWriter) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제할 권한이 없습니다');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}

		else {
			boolean isDeleteSuccess = boardDeleteProService.removeArticle(board_number); // 인자값으로 지정한 글 번호를 가지고있는 글을
																							// 삭제하는 기능을 하는 메서드 호출

			if (!isDeleteSuccess) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('삭제실패');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			} else {
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("boardList.bo?page=" + nowPage);
			}
		}

		return forward;
	}
}
