package subject.action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.Action;
import subject.svc.SubjectJoinService;
import vo.ActionForward;
import vo.Subject;

public class SubjectJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		SubjectJoinService subjectJoinService = new SubjectJoinService(); // 회원 가입 비즈니스 로직을 처리할 MemberJoinService 객체를 생성

		String realFolder = ""; // 파일이 업로드될 서버 상의 실제 경로를 저장할 변수를 정의
		String saveFolder = ""; // 파일이 업로드될 디렉토리 이름을 정의
		String encType = "UTF-8"; // 업로드되는 파일의 인코딩 타입을 정의
		int maxSize = 5 * 1024 * 1024;

		ServletContext context = request.getServletContext(); // 파일이 업로드될 서버상의 물리적인 경로를 얻어옴
		realFolder = context.getRealPath(saveFolder); // 파일이 업로드될 서버상의 물리적인 경로를 얻어옴

		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
				new DefaultFileRenamePolicy());
		String image = multi.getFilesystemName("image"); // 서버상에 업로드된 파일 이름을 얻어옴

		Subject subject = new Subject(0, multi.getParameter("subject_ID"),
				Integer.parseInt(multi.getParameter("price")), multi.getParameter("subject"), image, 
				multi.getParameter("content"), multi.getParameter("kind"), 0);

		boolean isJoinSuccess = subjectJoinService.joinSubject(subject); // 회원 가입 요청을 처리하는 joinMember 메서드를 호출

		ActionForward forward = null;

		if (isJoinSuccess) { // 회원 가입에 실패했을때 '회원 등록 실패'라는 경고창을 출력한 후 경고창의 <확인> 버튼을 누르면 이전 페이지로 되돌아가게 처리
			forward = new ActionForward("subjectList", true);
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./subjectListAction.sub");

		} else { // 회원 가입 요청이 성공하면 로그인 요청을 하기 위해서 "memberLogin.me" URL 요청을 함
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('진료등록실패')");
			out.println("history.back()");
			out.println("</script>");

		}
		return forward;
	}
}
