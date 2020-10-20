package subject.svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.SubjectDAO;
import vo.Cart;
import vo.Subject;

public class SubjectCartAddService {

	public Subject getCartSubject(String id) { // 파라미터 값으로 전송된 id 값을 갖고 있는 개 상품 정보를 얻어오는 메서드
		Connection con = getConnection();
		SubjectDAO subjectDAO = SubjectDAO.getInstance();
		subjectDAO.setConnection(con);
		Subject subject = subjectDAO.selectSubject(id);
		close(con);
		return subject;
	}

	public void addCart(HttpServletRequest request, Subject cartSubject) { // 장바구니 항목을 추가하는 기능이 구현된 메서드
		HttpSession session = request.getSession(); // 요청을 한 클라이언트의 세션 영역 객체를 얻어옴
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList"); // 현재 세션 영역에 저장된 장바구니 목록을 얻어옴

		if (cartList == null) {
			cartList = new ArrayList<Cart>();
			session.setAttribute("cartList", cartList);
		}

		boolean isNewCart = true;
		// 지금 장바구니에 담는 항목이 새로 추가되는 항목인지를 저장할 변수

		for (int i = 0; i < cartList.size(); i++) { // 새로 추가할 장바구니 항목이 기존 장바구니 목록에 존재하는지 판단
			if (cartSubject.getKind().equals(cartList.get(i).getKind())) {
				isNewCart = false;
				cartList.get(i).setQty(cartList.get(i).getQty() + 1); // 개 상품의 장바구니 항목 개수를 증가시킴
				break;
			}
		}

		// 장바구니 추가 요청을 한 개 상품이 장바구니에 존재하지 않으면 장바구니 항목을 저장하는 cartList 객체에 새로운 Cart 객체를
		// 생성하여 추가하는 부분
		if (isNewCart) {
			Cart cart = new Cart();
			cart.setImage(cartSubject.getImage());
			cart.setKind(cartSubject.getKind());
			cart.setPrice(cart.getPrice());
			cart.setQty(1);
			cartList.add(cart);
		}

	}

}
