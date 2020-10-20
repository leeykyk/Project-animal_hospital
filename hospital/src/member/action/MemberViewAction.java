//관리자
package member.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import member.svc.MemberViewService;
import vo.ActionForward;
import vo.MemberBean;
import action.Action;

public class MemberViewAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");


		ActionForward forward = null;

		forward = new ActionForward();
		String viewId = request.getParameter("id");
		MemberViewService memberViewService = new MemberViewService();
		MemberBean member = memberViewService.getMember(viewId);
		request.setAttribute("member", member);
		request.setAttribute("pagefile", "jsp/member/member_info.jsp");
		forward.setPath("index.jsp");
//			forward.setRedirect(false);
//			forward.setPath("jsp/member/member_info.jsp");

		return forward;
	}
}