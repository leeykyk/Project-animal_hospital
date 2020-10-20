package member.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.svc.MemberListService;
import vo.ActionForward;
import vo.MemberBean;
import action.Action;

public class MemberListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = null;

		forward = new ActionForward();
		MemberListService memberListService = new MemberListService();
		ArrayList<MemberBean> memberList = memberListService.getMemberList();
		request.setAttribute("memberList", memberList);
		request.setAttribute("pagefile", "jsp/member/member_list.jsp");
//			forward.setRedirect(false);
		forward.setPath("index.jsp");
//			forward.setPath("jsp/member/member_list.jsp");

		return forward;
	}
}