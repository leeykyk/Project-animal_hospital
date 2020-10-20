package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.mem_Animal;
import vo.MemberBean;
import vo.Reservation;

import static db.JdbcUtil.*;

public class mem_AnimalDAO {

	public static mem_AnimalDAO instance;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;

	private mem_AnimalDAO() {

	}

	public static mem_AnimalDAO getInstance() {
		if (instance == null) {
			instance = new mem_AnimalDAO();
		}
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;

	}

	public int insertAnimalMember(mem_Animal member) {

		PreparedStatement pstmt = null;

		String sql = "insert into member_animal (animal_ID, member_ID, animal_name, birthday, kind, etc) values (?,?,?,?,?,?)";
		int insertCount = 0;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getAnimal_ID());
			pstmt.setString(2, member.getMember_ID());
			pstmt.setString(3, member.getAnimal_name());
			pstmt.setString(4, member.getBirthday());
			pstmt.setString(5, member.getKind());
			pstmt.setString(6, member.getEtc());
			insertCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println("joinAnimalMember 에러 : " + ex);
		} finally {
			close(pstmt);
		}

		return insertCount;
	}

	public ArrayList<mem_Animal> selectAnimalMemberList() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from member_animal";
		ArrayList<mem_Animal> ani_memberList = new ArrayList<mem_Animal>();
		mem_Animal mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					mb = new mem_Animal();
					mb.setAnimal_ID(rs.getString("Animal_ID"));
					mb.setMember_ID(rs.getString("Member_ID"));
					mb.setAnimal_name(rs.getString("Animal_name"));
					mb.setBirthday(rs.getString("Birthday"));
					mb.setKind(rs.getString("Kind"));
					mb.setEtc(rs.getString("Etc"));

					ani_memberList.add(mb);
				} while (rs.next());
			}
		} catch (Exception ex) {
			System.out.println("getDetailAnimalMember 에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return ani_memberList;
	}

//관리자 info		
	public ArrayList<mem_Animal> selectAnimalMember(String viewId) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		mem_Animal mb = null;
	    ArrayList<mem_Animal> list = null;
		String sql = "select*from member_animal where animal_ID=?";
		System.out.println(viewId);

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, viewId);
			System.out.println("aaa1 "+viewId);
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
	            list = new ArrayList<mem_Animal>();
	            do {
	            	mb = new mem_Animal();
					mb.setAnimal_ID(rs.getString("Animal_ID"));
					mb.setMember_ID(rs.getString("Member_ID"));
					mb.setAnimal_name(rs.getString("Animal_name"));
					mb.setBirthday(rs.getString("Birthday"));
					mb.setKind(rs.getString("Kind"));
					mb.setEtc(rs.getString("Etc"));
					list.add(mb);
					
					 System.out.println("bbb"+viewId);
					
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

	//회원 info
	public ArrayList<mem_Animal> selectAnimalMember2(String viewId) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		mem_Animal mb = null;
	    ArrayList<mem_Animal> list = null;
		String sql = "select*from member_animal where member_ID=?";
		System.out.println(viewId);

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, viewId);
			System.out.println("aaa : "+viewId);
			
			rs = pstmt.executeQuery();
			System.out.println("ddd"+viewId);
			if (rs.next()) {
				
	            list = new ArrayList<mem_Animal>();
	            do {
	            	mb = new mem_Animal();
	            	System.out.println("ccc"+viewId);    	
					mb.setAnimal_ID(rs.getString("Animal_ID"));
					mb.setMember_ID(rs.getString("Member_ID"));
					mb.setAnimal_name(rs.getString("Animal_name"));
					mb.setBirthday(rs.getString("Birthday"));
					mb.setKind(rs.getString("Kind"));
					mb.setEtc(rs.getString("Etc"));
					list.add(mb);
					
					 System.out.println("bbb"+viewId);
					
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

	
	public int deleteAnimalMember(String id) {

		PreparedStatement pstmt = null;

		String sql = "delete from member_animal where member_ID=?";
		int deleteCount = 0;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("getDetailAnimalMember 에러 : " + ex);

		} finally {
			close(pstmt);
		}

		return deleteCount;
	}

	public int updateAnimal(mem_Animal mem_animal) {

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql = "update member_animal set animal_name=?, birthday=?, etc=?, kind=? where member_id=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_animal.getAnimal_name());
			pstmt.setString(2, mem_animal.getBirthday());
			pstmt.setString(3, mem_animal.getEtc());
			pstmt.setString(4, mem_animal.getKind());
			pstmt.setString(5, mem_animal.getAnimal_ID());
			updateCount = pstmt.executeUpdate();

			System.out.println(mem_animal.getAnimal_ID());

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
		}

		return updateCount;

	}

}
