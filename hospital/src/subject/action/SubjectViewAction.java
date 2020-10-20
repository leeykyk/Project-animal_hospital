package subject.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import subject.svc.SubjectViewService;
import vo.ActionForward;
import vo.Subject;

public class SubjectViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = null;

		forward = new ActionForward();
		String viewId = request.getParameter("id");
		SubjectViewService subjectViewService = new SubjectViewService();
		Subject subject = subjectViewService.getSubject(viewId);
		request.setAttribute("subject", subject);
		request.setAttribute("pagefile", "jsp/subject/subject_info.jsp");
		forward.setPath("index.jsp");
//			forward.setRedirect(false);
//			forward.setPath("jsp/subject/subject_info.jsp");

		return forward;
	}
}
