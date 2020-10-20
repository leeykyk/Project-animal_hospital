package member.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import member.svc.MemberLoginService;
import vo.ActionForward;
import vo.MemberBean;
import action.Action;

public class MemberLoginAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession(); // 로그인에 성공한 사용자의 아이디 값을 세션 영역에 속성으로 저장하기 위해 session 객체를 생성
		MemberBean member = new MemberBean(); // 로그인 페이지에서 파라미터로 넘어온 아이디 값과 비밀번호 값을 저장할 MemberBean 객체를 생성

		member.setMember_ID(request.getParameter("Member_ID")); // Member 객체에 클라이언트에서 파라미터 값으로 넘어온 아이디를 속성 값으로 할당
		member.setPass(request.getParameter("Pass")); // Member 객체에 클라이언트에서 파라미터 값으로 넘어온 비밀번호를 속성 값으로 할당

		MemberLoginService memberLoginService = new MemberLoginService(); // 로그인 처리를 위한 비즈니스 로직이 구현되어 있는
																			// MemberLoginService 클래스 객체 생성
		member = memberLoginService.login(member); // 로그인 요청을 처리하는 login 메서드를 호출
		ActionForward forward = null;

		if (member != null) { // 로그인에 성공하면 전체 회원 목록을 보는 요청인 "memberListAction.me" URL 요청을 전송함
			forward = new ActionForward();
			session.setAttribute("memberLog", member);
			session.setMaxInactiveInterval(60*60);
			forward.setRedirect(false);
			forward.setPath("index.me");

		} else { // 로그인에 실패하면 경고창 출력 후 로그인 페이지로 다시 이동하게 함
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 실패');");
			out.println("location.href='memberLogin.me';");
			out.println("</script>");
		}
		return forward;
	}
}