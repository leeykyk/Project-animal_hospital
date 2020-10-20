package animal.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import animal.svc.AnimalListService;
import member.svc.MemberListService;
import vo.ActionForward;
import vo.Animal;
import vo.MemberBean;
import action.Action;

public class AnimalListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
			ActionForward forward = null;

			forward = new ActionForward();
			AnimalListService animalListService = new AnimalListService();
			ArrayList<Animal> animalList = animalListService.getAnimalList();
			request.setAttribute("animalList", animalList);
			request.setAttribute("pagefile", "jsp/Animal/Ani_List.jsp");
//			forward.setRedirect(false);
			forward.setPath("index.jsp");
//			forward.setPath("jsp/Animal/Ani_List.jsp");
//		}
		return forward;
	}
	
}