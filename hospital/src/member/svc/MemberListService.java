package member.svc;

import java.sql.Connection;
import java.util.ArrayList;
import dao.MemberDAO;
import static db.JdbcUtil.*;
import vo.MemberBean;

public class MemberListService {

	public ArrayList<MemberBean> getMemberList() {

		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		ArrayList<MemberBean> memberList = memberDAO.selectMemberList(); // MemberDAO 클래스에 정의되어있는 selectMemberList 메서드를
																			// 호출하여 전체 회원 목록을 반환받음
		close(con);
		return memberList; // 전체 회원 목록 정보를 반환
	}

}