package doctor.svc;

import vo.Doctor;
import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.DoctorDAO;

public class DoctorLoginService {

	public boolean login(Doctor member) {
		Connection con = getConnection();
		DoctorDAO doctorDAO = DoctorDAO.getInstance();
		doctorDAO.setConnection(con);
		boolean loginResult = false; // 로그인 성공 여부를 저장하는 변수
		String loginId = doctorDAO.selectLoginId(member); // MemberDAO 클래스에 정의되어있는 selectLoginId 메서드를 호출하여 로그인에 성공한 id값을
															// 반환받고 실패하면 null값을 반환받음
		if (loginId != null) { // 로그인에 성공하면 loginResult 변수 값을 true로 변경
			loginResult = true;
		}
		close(con);
		return loginResult;
	}

}