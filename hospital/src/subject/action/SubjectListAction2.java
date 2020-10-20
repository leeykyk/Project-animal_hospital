package subject.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import subject.svc.SubjectListService;
import vo.ActionForward;
import vo.Subject;

public class SubjectListAction2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		ActionForward forward = null;

		if (id == null) { // 현재 로그인한 상태가 아니면 로그인 요청을 다시 하게 하는 부분
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/memberLogin.me");

		} else { // 관리자로 로그인된 상태이면 ArrayList<MemberBean> 타입으로 모든 사용자의 정보를 얻어와서 request 영역에 공유한 후
					// member_list.jsp 페이지로 포워딩함
			forward = new ActionForward();
			SubjectListService subjectListService = new SubjectListService();
			ArrayList<Subject> subjectList = subjectListService.getSubjectList();
			request.setAttribute("subjectList", subjectList);
			request.setAttribute("pagefile", "department.jsp");
//				forward.setRedirect(false);
			forward.setPath("index.jsp");
//				forward.setPath("department.jsp");

		}
		return forward;
	}
}
