package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import vo.MemberBean;
import vo.Reservation;
import static db.JdbcUtil.*;

public class ReservationDAO {

   public static ReservationDAO instance;
   Connection con;
//   PreparedStatement pstmt;
//   ResultSet rs;
   DataSource ds;

   private ReservationDAO() { // 외부 클래스에서 호출할 수 없도록 private으로 지정
   }

   // DB 작업을 하기 위해서 필요한 Connection 객체를 멤버 변수 값으로 설정하는 메서드
   public void setConnection(Connection con) {
      this.con = con;
   }

   public static ReservationDAO getInstance() { // 싱글톤으로 지정

      if (instance == null) {
         instance = new ReservationDAO();
      }
      return instance;
   }

   // 예약 확인하기(회원)
   public ArrayList<Reservation> selectMemberReservation(String viewId) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      Reservation res = null;
      ArrayList<Reservation> list = null;
      String sql = "select*from reservation where member_ID=?";
      System.out.println(viewId);

      try {
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, viewId);
         rs = pstmt.executeQuery();

         if (rs.next()) {
            list = new ArrayList<Reservation>();
            do {
               res = new Reservation();
               res.setNum(rs.getString("num"));
               res.setMember_ID(rs.getString("member_ID"));
               res.setMember_name(rs.getString("member_name"));
               res.setSubject(rs.getString("subject"));
               res.setAnimal_name(rs.getString("animal_name"));
               res.setDateS(rs.getString("date"));
               res.setEtc(rs.getString("etc"));
               res.setPhone(rs.getString("phone"));
               res.setKind(rs.getString("kind"));
               list.add(res);
            } while (rs.next());
         }
      } catch (Exception e) {
         System.out.println("getDetailMember 에러 : " + e);
      } finally {
         close(rs);
         close(pstmt);
      }

      return list;
   }

   // 예약 목록 보기(관리자)
   public ArrayList<Reservation> selectReservation(String viewId) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      Reservation res = null;
      ArrayList<Reservation> list = null;
      try {
         pstmt = con.prepareStatement("SELECT * FROM reservation");
 //         pstmt.setString(1, member.getMember_ID());
         rs = pstmt.executeQuery();

         if (rs.next()) {
            list = new ArrayList<Reservation>();
            do {
               res = new Reservation();
               res.setNum(rs.getString("num"));
               res.setMember_ID(rs.getString("member_ID"));
               res.setMember_name(rs.getString("member_name"));
               res.setSubject(rs.getString("subject"));
               res.setAnimal_name(rs.getString("animal_name"));
               res.setDateS(rs.getString("date"));
               res.setEtc(rs.getString("etc"));
               res.setPhone(rs.getString("phone"));
               res.setKind(rs.getString("kind"));
               list.add(res);
//               System.out.println(rs.getString("date"));
            } while (rs.next());
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
         close(rs);
      }

      return list;
   }

   // 예약 등록하기
   public int insertReservation(Reservation reservation) {
      PreparedStatement pstmt = null;
      int insertCount = 0;
      String sql = "";
//      System.out.println(reservation.getDate());
      try {
         sql = "INSERT INTO reservation(member_ID, member_name, animal_name, subject, phone, date, etc, kind) VALUES(?,?,?,?,?,'"
               + reservation.getDate() + "',?,?)";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, reservation.getMember_ID());
         pstmt.setString(2, reservation.getMember_name());
         pstmt.setString(3, reservation.getAnimal_name());
         pstmt.setString(4, reservation.getSubject());
         pstmt.setString(5, reservation.getPhone());
         pstmt.setString(6, reservation.getEtc());
         pstmt.setString(7, reservation.getKind());
         insertCount = pstmt.executeUpdate();

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }

      return insertCount;
   }

   // 예약 취소하기
   public int deleteReservation(String[] res_num) {
	   
	  PreparedStatement pstmt = null;
      String sql = "delete from reservation where num=?"; 
      int deleteCount = 0;
      
      try {
    	  pstmt=con.prepareStatement(sql);
    	  
    	  
    	  for(int i=0; i<res_num.length; i++) {
    	      pstmt.setString(1, res_num[i]);
    	      deleteCount = pstmt.executeUpdate();
    		  
          }
    

      } catch (Exception ex) {
         System.out.println("getDetailReser 에러 : " + ex);

      } finally {
         close(pstmt);
      }

      return deleteCount;
   }

}