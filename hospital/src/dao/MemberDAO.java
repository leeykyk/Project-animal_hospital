package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.MemberBean;
import static db.JdbcUtil.*;

public class MemberDAO {

	public static MemberDAO instance;

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;

	private MemberDAO() {

	}

	public static MemberDAO getInstance() {
		if (instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;

	}

	public int insertMember(MemberBean member) {

		PreparedStatement pstmt = null;

		String sql = "insert into hospital_member values(?,?,?,?,?,?,?,?)";
		int insertCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMember_ID());
			pstmt.setString(2, member.getMember_name());
			pstmt.setString(3, member.getPass());
			pstmt.setString(4, member.getAddr());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getDate());
			pstmt.setString(7, member.getEtc());
			pstmt.setString(8, member.getGrade());

			insertCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println("joinMember 에러 : " + ex);
		} finally {
			close(pstmt);
		}

		return insertCount;
	}

	public MemberBean selectLoginId(MemberBean member) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String loginId = null;
		String sql = "select * from hospital_member where member_ID=? and pass=?";
		MemberBean mb = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMember_ID());
			pstmt.setString(2, member.getPass());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mb = new MemberBean();
				mb.setMember_ID(rs.getString("member_ID"));
				mb.setMember_name(rs.getString("member_name"));
				mb.setPass(rs.getString("pass"));
				mb.setAddr(rs.getString("addr"));
				mb.setPhone(rs.getString("phone"));
				mb.setDate(rs.getString("date"));
				mb.setEtc(rs.getString("etc"));
				mb.setGrade(rs.getString("grade"));
//				loginId=rs.getString("Member_ID");
			}
		} catch (Exception ex) {
			System.out.println("에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return mb;
	}

	public ArrayList<MemberBean> selectMemberList() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from hospital_member";
		ArrayList<MemberBean> memberList = new ArrayList<MemberBean>();
		MemberBean mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					mb = new MemberBean();
					mb.setMember_ID(rs.getString("Member_ID"));
					mb.setMember_name(rs.getString("Member_name"));
					mb.setPass(rs.getString("Pass"));
					mb.setAddr(rs.getString("addr"));
					mb.setPhone(rs.getString("Phone"));
					mb.setDate(rs.getString("Date"));
					mb.setEtc(rs.getString("etc"));
					mb.setGrade(rs.getString("grade"));
					memberList.add(mb);
				} while (rs.next());
			}
		} catch (Exception ex) {
			System.out.println("getDetailMember 에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return memberList;
	}

	public MemberBean selectMember(String id) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from hospital_member where member_ID=?";
		MemberBean mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mb = new MemberBean();
				mb.setMember_ID(rs.getString("Member_ID"));
				mb.setMember_name(rs.getString("Member_name"));
				mb.setPass(rs.getString("Pass"));
				mb.setAddr(rs.getString("addr"));
				mb.setPhone(rs.getString("Phone"));
				mb.setDate(rs.getString("Date"));
				mb.setEtc(rs.getString("etc"));
				mb.setGrade(rs.getString("grade"));
			}

		} catch (Exception ex) {
			System.out.println("getDetailMember 에러 : " + ex);

		} finally {
			close(rs);
			close(pstmt);
		}

		return mb;
	}

	public int deleteMember(String id) {

		PreparedStatement pstmt = null;

		String sql = "delete from hospital_member where member_ID=?";
		int deleteCount = 0;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("getDetailMember 에러 : " + ex);

		} finally {
			close(pstmt);
		}

		return deleteCount;
	}

	public int updateMember(MemberBean member) {

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql = "update hospital_member set member_name=?, pass=?, addr=?, phone=?, etc=?, grade=? where member_id=?";
		System.out.println(member.getMember_ID());
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMember_name());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getAddr());
			pstmt.setString(4, member.getPhone());
			pstmt.setString(5, member.getEtc());
			pstmt.setString(6, member.getGrade());
			pstmt.setString(7, member.getMember_ID());
			updateCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
		}

		return updateCount;

	}

}
