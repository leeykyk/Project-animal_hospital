package doctor.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import doctor.svc.DoctorListService;
import doctor.svc.DoctorViewService;
import vo.ActionForward;
import vo.Doctor;

public class DoctorMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		ActionForward forward = null;
//System.out.println("액션");
		forward = new ActionForward();
		DoctorListService doctorListService = new DoctorListService();
		ArrayList<Doctor> doctorList = doctorListService.getDoctorList();
		request.setAttribute("doctorList", doctorList);
		request.setAttribute("pagefile", "doctor.jsp");
//			forward.setRedirect(false);
		forward.setPath("index.jsp");
//			forward.setPath("jsp/doctor/doctor_list.jsp");
//		}
		return forward;
	}
}