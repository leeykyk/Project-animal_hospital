package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import action.Action;
import member.svc.MemberModifyService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		boolean isModifySuccess = false;
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		MemberBean member = new MemberBean();
		MemberModifyService memberModifyService = new MemberModifyService();

		member.setMember_ID(request.getParameter("member_ID"));
		member.setMember_name(request.getParameter("member_name"));
		member.setPass(request.getParameter("pass"));
		System.out.println("MemberModifyAction : " + request.getParameter("pass"));
		member.setAddr(request.getParameter("addr"));
		member.setPhone(request.getParameter("phone"));
		member.setEtc(request.getParameter("etc"));
		member.setGrade(request.getParameter("grade"));
		
		System.out.println(member.getMember_ID());
		isModifySuccess = memberModifyService.modifyArticle(member);

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
			forward.setPath("./memberListAction.me");
		}

		return forward;
	}

}
