package doctor.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import action.Action;
import doctor.svc.DoctorModifyService;
import vo.ActionForward;
import vo.Doctor;

public class DoctorModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		boolean isModifySuccess = false;
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		Doctor doctor = new Doctor();
		DoctorModifyService doctorModifyService = new DoctorModifyService();

		doctor.setDoctor_ID(request.getParameter("doctor_ID"));
		doctor.setName(request.getParameter("name"));
		doctor.setJob(request.getParameter("job"));
		doctor.setSchool(request.getParameter("school"));
		doctor.setCareer(request.getParameter("career"));
		doctor.setImage(request.getParameter("image"));
		doctor.setDoctor_pass(request.getParameter("doctor_pass"));

		System.out.println(doctor.getDoctor_ID());

		isModifySuccess = doctorModifyService.modifyArticle(doctor);

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
			forward.setPath("./doctorListAction.doc");
		}

		return forward;
	}

}
