//회원
package mem_animal.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import mem_animal.svc.AnimalMemberViewService2;
import vo.ActionForward;
import vo.MemberBean;
import vo.mem_Animal;

public class AnimalMemberViewAction2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		MemberBean member = (MemberBean) session.getAttribute("memberLog");

		ActionForward forward = null;
		if (member != null) {
			if (member.getGrade().equals("S")) {
				forward = new ActionForward();
				String viewId = member.getMember_ID();
//	System.out.println("sid:"+viewId);
				AnimalMemberViewService2 animalmemberViewService2 = new AnimalMemberViewService2();
				ArrayList<mem_Animal> list = animalmemberViewService2.getMember(viewId);
				request.setAttribute("list", list);
//   System.out.println(viewId);
				request.setAttribute("pagefile", "jsp/mem_Animal/animal_info2.jsp");
				forward.setPath("index.jsp");

			}
		} else {

		}

		return forward;
	}
}
