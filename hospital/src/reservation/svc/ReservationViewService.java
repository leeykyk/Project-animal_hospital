// 회원

package reservation.svc;

import vo.Reservation;
import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.ReservationDAO;

public class ReservationViewService {

   public ArrayList<Reservation> getReservation(String viewId) {

      Connection con = getConnection();
      ReservationDAO reservationDAO = ReservationDAO.getInstance();
      reservationDAO.setConnection(con);
      ArrayList<Reservation> list = reservationDAO.selectMemberReservation(viewId); 
                                                   
      close(con);
      return list; 
   }

}
