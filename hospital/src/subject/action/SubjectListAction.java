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

public class SubjectListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		ActionForward forward = null;

		forward = new ActionForward();
		SubjectListService subjectListService = new SubjectListService();
		ArrayList<Subject> subjectList = subjectListService.getSubjectList();
		request.setAttribute("subjectList", subjectList);
		request.setAttribute("pagefile", "jsp/subject/subjectList.jsp");
//			forward.setRedirect(false);
		forward.setPath("index.jsp");
//			forward.setPath("jsp/subject/subjectList.jsp");

		return forward;
	}
}
