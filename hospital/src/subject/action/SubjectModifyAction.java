package subject.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import subject.svc.SubjectModifyService;
import vo.ActionForward;
import vo.Subject;

public class SubjectModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		boolean isModifySuccess = false;
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		Subject subject = new Subject();
		SubjectModifyService subjectModifyService = new SubjectModifyService();

		subject.setSubject_ID(request.getParameter("subject_ID"));
		subject.setSubject(request.getParameter("subject"));
		subject.setKind(request.getParameter("kind"));
		subject.setPrice(Integer.parseInt(request.getParameter("price")));
		subject.setContent(request.getParameter("content"));
		subject.setImage(request.getParameter("image"));
		
		System.out.println(subject.getSubject_ID());
		isModifySuccess = subjectModifyService.modifyArticle(subject);

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
			forward.setPath("./subjectListAction.sub");
		}

		return forward;
	}

}
