package reservation.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import dao.ReservationDAO;
import vo.Reservation;

public class ReservationJoinService {

	public boolean joinReservation(Reservation Reservation) {

		boolean joinSuccess = false; // 예약 성공 여부를 저장할 변수
		ReservationDAO reservationDAO = ReservationDAO.getInstance();
		Connection con = getConnection();
		reservationDAO.setConnection(con);
		int insertCount = reservationDAO.insertReservation(Reservation); // 새로운 예약 정보 하나를 DB에 삽입하는 insertReservation 메서드를 호출
		if (insertCount > 0) {
			joinSuccess = true;
			commit(con);
		} else { 
			rollback(con);
		}
		close(con);
		return joinSuccess;
	}
}
