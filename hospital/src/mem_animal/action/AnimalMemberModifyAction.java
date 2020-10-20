package mem_animal.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import mem_animal.svc.AnimalMemberModifyService;
import vo.ActionForward;
import vo.mem_Animal;

public class AnimalMemberModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		boolean isModifySuccess = false;
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		mem_Animal mem_animal = new mem_Animal();
		AnimalMemberModifyService animalMemberModifyService = new AnimalMemberModifyService();

		mem_animal.setAnimal_ID(request.getParameter("animal_ID"));
		mem_animal.setMember_ID(request.getParameter("member_ID"));
		mem_animal.setAnimal_name(request.getParameter("animal_name"));
		mem_animal.setBirthday(request.getParameter("birthday"));
		mem_animal.setKind(request.getParameter("kind"));
		mem_animal.setEtc(request.getParameter("etc"));

		System.out.println("aaa");

		isModifySuccess = animalMemberModifyService.modifyArticle(mem_animal);

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
