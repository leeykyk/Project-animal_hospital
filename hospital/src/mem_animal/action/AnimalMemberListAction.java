package mem_animal.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import mem_animal.svc.AnimalMemberListService;
import vo.ActionForward;
import vo.mem_Animal;

public class AnimalMemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		ActionForward forward = null;

		forward = new ActionForward();
		AnimalMemberListService animalmemberListService = new AnimalMemberListService();
		ArrayList<mem_Animal> ani_memberList = animalmemberListService.getAni_memberList();
		request.setAttribute("ani_memberList", ani_memberList);
		request.setAttribute("pagefile", "jsp/mem_Animal/animal_list.jsp");
//			forward.setRedirect(false);
		forward.setPath("index.jsp");
//			forward.setPath("jsp/mem_Animal/animal_list.jsp");

		return forward;
	}
}
