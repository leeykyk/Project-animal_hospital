//회원
package mem_animal.svc;

import vo.mem_Animal;
import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.mem_AnimalDAO;

public class AnimalMemberViewService2 {

	public ArrayList<mem_Animal> getMember(String viewId) {

		Connection con = getConnection();
		mem_AnimalDAO mem_animalDAO = mem_AnimalDAO.getInstance();
		mem_animalDAO.setConnection(con);
		ArrayList<mem_Animal> list = mem_animalDAO.selectAnimalMember2(viewId); // MemberDAO 클래스에 정의되어있는 selectMember 메서드를 호출하여 인자로 지정된 아이디를
															// 가진 회원 정보를 MemberBean 객체 형태로 반환받음
		close(con);
		return list; // 회원 정보 하나를 반환함
	}

}