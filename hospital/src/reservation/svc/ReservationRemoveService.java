package reservation.svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;
import java.sql.Connection;
import dao.ReservationDAO;

public class ReservationRemoveService {

	public boolean removeResService(String res_num[]) {

		boolean deleteResult = false;
		Connection con = getConnection();
		ReservationDAO reservationDAO = ReservationDAO.getInstance();
		reservationDAO.setConnection(con);
		int deleteCount = reservationDAO.deleteReservation(res_num); 
		
		if (deleteCount > 0) { 
			commit(con);
			deleteResult = true;
		} else {
			rollback(con);
		}
		close(con);

		return deleteResult;
	}

}
