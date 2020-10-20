package member.svc;

import vo.MemberBean;
import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.MemberDAO;

public class MemberLoginService {

	public MemberBean login(MemberBean member) {
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		// 로그인 성공 여부를 저장하는 변수
		member = memberDAO.selectLoginId(member); // MemberDAO 클래스에 정의되어있는 selectLoginId 메서드를 호출하여 로그인에 성공한 id값을
													// 반환받고 실패하면 null값을 반환받음
//		if (loginId != null) { // 로그인에 성공하면 loginResult 변수 값을 true로 변경
//			loginResult = true;
//		}
		close(con);
		return member;
	}

}