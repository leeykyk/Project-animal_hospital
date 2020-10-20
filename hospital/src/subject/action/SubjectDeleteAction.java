package subject.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import subject.svc.SubjectDeleteService;
import vo.ActionForward;

public class SubjectDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession(); // 세션 영역에 공유되어있는 id 속성 값을 얻어오기 위해서 session 객체를 얻어옴
		String id = (String) session.getAttribute("id"); // 현재 세션 영역에 공유되어 있는 id 속성 값을 얻어오는 부분

		ActionForward forward = null;

		String deleteId = request.getParameter("id"); // 사용자가 삭제하기 위해서 선택한 회원의 아이디를 받는 부분
		SubjectDeleteService subjectDeleteService = new SubjectDeleteService(); // 삭제 요청을 처리하는 비즈니스 로직이 구현되어있는
																				// MemberDeleteService 클래스 객체를 생성
		boolean deleteResult = subjectDeleteService.deleteSubject(deleteId); // 클라이언트에서 파라미터 값으로 넘어온 아이디를 가지고있는 회원의
																				// 정보를 삭제하는 deleteMember 메서드를 호출

		if (deleteResult) { // 회원 정보 삭제 작업 성공시 회원 목록 보기 페이지로 포워딩함
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("subjectListAction.sub");
		} else { // 회원 정보 삭제 작업 실패 시 "회원정보삭제 실패" 경고창을 출력한 후 <확인> 버튼을 누르면 로그인 요청을 하는 부분
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원정보삭제 실패.');");
			out.println("location.href='" + request.getContextPath() + "/subjectListAction.sub';");
			out.println("</script>");
		}

		return forward;
	}
}
