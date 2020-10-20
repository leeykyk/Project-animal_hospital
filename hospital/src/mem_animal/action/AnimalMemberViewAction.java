//관리자
package mem_animal.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import mem_animal.svc.AnimalMemberViewService;
import vo.ActionForward;
import vo.mem_Animal;
import dao.mem_AnimalDAO;

public class AnimalMemberViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = null;

		forward = new ActionForward();	
		String viewId = request.getParameter("id");
//	System.out.println(viewId);
		AnimalMemberViewService animalmemberViewService = new AnimalMemberViewService();
		ArrayList<mem_Animal> list = animalmemberViewService.getMember(viewId);
		request.setAttribute("list", list);
//    System.out.println(viewId);
		request.setAttribute("pagefile", "jsp/mem_Animal/animal_info.jsp");
		forward.setPath("index.jsp");

		return forward;
	}
}
