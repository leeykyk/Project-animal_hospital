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
      ArrayList<Reservation> list = reservationDAO.selectMemberReservation(viewId); // MemberDAO 클래스에 정의되어있는 selectMember
                                                            // 메서드를 호출하여 인자로 지정된 아이디를 가진 회원 정보를 MemberBean 객체 형태로 반환받음
      close(con);
      return list; // 회원 정보 하나를 반환함
   }

}