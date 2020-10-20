package animal.action;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import animal.svc.AnimalViewService;
import member.svc.MemberViewService;
import vo.ActionForward;
import vo.Animal;
import vo.MemberBean;
import action.Action;

public class AnimalViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		ActionForward forward = null;

		forward = new ActionForward();
		String viewId = request.getParameter("id");

		AnimalViewService animalViewService = new AnimalViewService();
		Animal animal = animalViewService.getAnimal(viewId);
		System.out.println(animal);
		request.setAttribute("animal", animal);
		request.setAttribute("pagefile", "jsp/Animal/Ani_info.jsp");
		forward.setPath("index.jsp");

		return forward;
	}
}