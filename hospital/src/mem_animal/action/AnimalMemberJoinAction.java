package mem_animal.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import mem_animal.svc.AnimalMemberJoinService;
import vo.ActionForward;
import vo.mem_Animal;

public class AnimalMemberJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		mem_Animal member = new mem_Animal(); // 회원 가입 페이지에서 사용자가 작성한 값들을 속성 값으로 저장할 MemberBean 객체를 생성
		boolean joinResult = false; // 회원 가입 요청 처리 성공 여부를 저장할 변수

		// 회원 가입 페이지에서 전송된 회원의 정보를 member 객체의 속성 값으로 할당
		member.setAnimal_ID(request.getParameter("Animal_ID"));
		member.setMember_ID(request.getParameter("Member_ID"));
		member.setAnimal_name(request.getParameter("Animal_name"));
		member.setBirthday(request.getParameter("Birthday"));
		member.setKind(request.getParameter("Kind"));
		member.setEtc(request.getParameter("Etc"));

		AnimalMemberJoinService animalmemberJoinService = new AnimalMemberJoinService(); // 회원 가입 비즈니스 로직을 처리할
																							// MemberJoinService 객체를 생성
		joinResult = animalmemberJoinService.joinAnimalMember(member); // 회원 가입 요청을 처리하는 joinMember 메서드를 호출

		ActionForward forward = null;

		if (joinResult == false) { // 회원 가입에 실패했을때 '회원 등록 실패'라는 경고창을 출력한 후 경고창의 <확인> 버튼을 누르면 이전 페이지로 되돌아가게 처리
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('동물등록실패')");
			out.println("history.back()");
			out.println("</script>");
		} else { // 회원 가입 요청이 성공하면 로그인 요청을 하기 위해서 "memberLogin.me" URL 요청을 함
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./index.me");
		}
		return forward;
	}
}
