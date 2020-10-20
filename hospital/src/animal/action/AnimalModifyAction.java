package animal.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import animal.svc.AnimalModifyService;
import vo.ActionForward;
import vo.Animal;

public class AnimalModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		boolean isModifySuccess = false;
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		Animal animal = new Animal();
		AnimalModifyService animalModifyService = new AnimalModifyService();

		animal.setAnimal_ID(request.getParameter("animal_ID"));
		animal.setKind(request.getParameter("kind"));
		animal.setEtc(request.getParameter("etc"));

		System.out.println(animal.getAnimal_ID());

		isModifySuccess = animalModifyService.modifyArticle(animal);

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
			forward.setPath("./animalMemberListAction.am");
		}

		return forward;
	}

}
