package mem_animal.svc;

import vo.mem_Animal;
import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.mem_AnimalDAO;

public class AnimalMemberJoinService {

	public boolean joinAnimalMember(mem_Animal member) {

		boolean joinSuccess = false; // 회원 가입 성공 여부를 저장할 변수
		mem_AnimalDAO mem_animalDAO = mem_AnimalDAO.getInstance();
		Connection con = getConnection();
		mem_animalDAO.setConnection(con);
		int insertCount =mem_animalDAO.insertAnimalMember(member); // 새로운 회원 정보 하나를 DB에 삽입하는 insertMember 메서드를 호출
		if (insertCount > 0) { // 삽입된 레코드 개수가 1개 이상이면 joinSuccess 변수 값을 true로 변경하고 트랜잭션을 commit 시킴
			joinSuccess = true;
			commit(con);
		} else { // 삽입된 레코드가 없으면 트랜잭션 작업을 rollback 시킴
			rollback(con);
		}
		close(con);
		return joinSuccess;
	}

}