package doctor.svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;
import java.sql.Connection;
import dao.DoctorDAO;
import vo.Doctor;

public class DoctorModifyService {
	
	public boolean modifyArticle(Doctor doctor) throws Exception {
	boolean isModifySuccess = false;
	Connection con = getConnection();
	DoctorDAO doctorDAO = DoctorDAO.getInstance();
	doctorDAO.setConnection(con);
	int updateCount = doctorDAO.updateDoctor(doctor);

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
