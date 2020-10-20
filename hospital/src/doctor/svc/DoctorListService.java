package doctor.svc;

import java.sql.Connection;
import java.util.ArrayList;
import dao.DoctorDAO;
import static db.JdbcUtil.*;
import vo.Doctor;

public class DoctorListService {

	public ArrayList<Doctor> getDoctorList() {

		Connection con = getConnection();
		DoctorDAO doctorDAO = DoctorDAO.getInstance();
		doctorDAO.setConnection(con);
		ArrayList<Doctor> doctorList = doctorDAO.selectDoctorList(); // MemberDAO 클래스에 정의되어있는 selectMemberList 메서드를
																			// 호출하여 전체 회원 목록을 반환받음
		close(con);
		return doctorList; // 전체 회원 목록 정보를 반환
	}

}