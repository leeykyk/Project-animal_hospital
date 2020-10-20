package mem_animal.svc;

import java.sql.Connection;
import java.util.ArrayList;
import dao.mem_AnimalDAO;
import static db.JdbcUtil.*;
import vo.mem_Animal;

public class AnimalMemberListService {

	public ArrayList<mem_Animal> getAni_memberList() {

		Connection con = getConnection();
		mem_AnimalDAO mem_animalDAO = mem_AnimalDAO.getInstance();
		mem_animalDAO.setConnection(con);
		ArrayList<mem_Animal> ani_memberList = mem_animalDAO.selectAnimalMemberList(); // MemberDAO 클래스에 정의되어있는 selectMemberList 메서드를
																			// 호출하여 전체 회원 목록을 반환받음
		close(con);
		return ani_memberList; // 전체 회원 목록 정보를 반환
	}

}