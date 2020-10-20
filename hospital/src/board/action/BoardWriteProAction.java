package board.action;

import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardWriteProService;
import vo.ActionForward;
import vo.BoardBean;
import action.Action;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		BoardBean boardBean = null;
		String realFolder = ""; // 서버 상의 파일 경로를 저장할 실제 경로를 저장할 변수를 정의한 부분
		String saveFolder = "/boardUpload"; // 파일을 업로드할 디렉토리명을 지정한 부분
		int fileSize = 5 * 1024 * 1024; // 한 번에 업로드할 파일 사이즈를 정의한 부분
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder); // 파라미터로 지정된 디렉토리의 서버 상의 실제 경로를 얻어오는 부분
		MultipartRequest multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8",
				new DefaultFileRenamePolicy()); // MultipartRequest 객체를 생성하는 부분. 이 부분에서 업로드하는 파일이 업로드 처리된다.
		boardBean = new BoardBean(); // 새로 등록할 글 정보를 저장할 BoardBean 객체를 생성
		boardBean.setBOARD_NAME(multi.getParameter("BOARD_NAME"));
		boardBean.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
		boardBean.setBOARD_SUBJECT(multi.getParameter("BOARD_SUBJECT"));
		boardBean.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));
//		boardBean.setBOARD_FILE(multi.getOriginalFileName((String) multi.getFileNames().nextElement()));
		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);

		if (!isWriteSuccess) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록실패')");
			out.println("history.back();");
			out.println("</script>");
		} else {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("boardList.bo"); // 글이 DB에 저장된 후 바로 글 목록 보기 요청이 실행된다.
		}

		return forward;
	}
}
