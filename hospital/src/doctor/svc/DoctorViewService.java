package doctor.svc;

import vo.Doctor;
import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.DoctorDAO;

public class DoctorViewService {

	public Doctor getDoctor(String viewId) {

		Connection con = getConnection();
		DoctorDAO doctorDAO = DoctorDAO.getInstance();
		doctorDAO.setConnection(con);
		Doctor doctor = doctorDAO.selectDoctor(viewId); // MemberDAO 클래스에 정의되어있는 selectMember 메서드를 호출하여 인자로 지정된 아이디를
															// 가진 회원 정보를 MemberBean 객체 형태로 반환받음
		close(con);
		return doctor; // 회원 정보 하나를 반환함
	}


}