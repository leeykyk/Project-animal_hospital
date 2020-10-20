package doctor.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import doctor.svc.DoctorViewService;
import vo.ActionForward;
import vo.Doctor;
import action.Action;

public class DoctorViewAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = null;

			forward = new ActionForward();
			String viewId = request.getParameter("id");
			DoctorViewService doctorViewService = new DoctorViewService();
			Doctor doctor = doctorViewService.getDoctor(viewId);
			request.setAttribute("doctor", doctor);
			request.setAttribute("pagefile", "jsp/doctor/doctor_info.jsp");
			forward.setPath("index.jsp");

		return forward;
	}
}