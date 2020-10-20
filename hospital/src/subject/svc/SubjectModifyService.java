package subject.svc;

import java.sql.Connection;
import static db.JdbcUtil.*;
import dao.SubjectDAO;
import vo.Subject;

public class SubjectModifyService {

	public boolean modifyArticle(Subject subject) throws Exception {
		boolean isModifySuccess = false;
		Connection con = getConnection();
		SubjectDAO subjectDAO = SubjectDAO.getInstance();
		subjectDAO.setConnection(con);
		int updateCount = subjectDAO.updateSubject(subject);

		if (updateCount > 0) {
			commit(con);
			isModifySuccess = true;
		} else {
			rollback(con);
		}

		close(con);
		return isModifySuccess;
	}

}
