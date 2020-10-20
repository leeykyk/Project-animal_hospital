package subject.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import dao.SubjectDAO;
import vo.Subject;

public class SubjectListService {

	public ArrayList<Subject> getSubjectList() {

		Connection con = getConnection();
		SubjectDAO subjectDAO = SubjectDAO.getInstance();
		subjectDAO.setConnection(con);
		ArrayList<Subject> subjectList = subjectDAO.selectSubjectList(); // MemberDAO 클래스에 정의되어있는 selectMemberList 메서드를
																			// 호출하여 전체 회원 목록을 반환받음
		close(con);
		return subjectList; // 전체 회원 목록 정보를 반환
	}

}
