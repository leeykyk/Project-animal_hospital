package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.sql.DataSource;

import vo.Animal;
import vo.Subject;

public class SubjectDAO {

	public static SubjectDAO instance;

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;

	private SubjectDAO() {

	}

	public static SubjectDAO getInstance() {
		if (instance == null) {
			instance = new SubjectDAO();
		}
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;

	}

	public int insertSubject(Subject subject) {

		PreparedStatement pstmt = null;

		String sql = "insert into hospital_subject values(?,?,?,?,?,?)";
		int insertCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, subject.getSubject_ID());
			pstmt.setInt(2, subject.getPrice());
			pstmt.setString(3, subject.getSubject());
			pstmt.setString(4, subject.getImage());
			pstmt.setString(5, subject.getContent());
			pstmt.setString(6, subject.getKind());

			insertCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println("joinSubject 에러 : " + ex);
		} finally {
			close(pstmt);
		}

		return insertCount;
	}

	public ArrayList<Subject> selectSubjectList() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from hospital_subject";
		ArrayList<Subject> subjectList = new ArrayList<Subject>();
		Subject mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					mb = new Subject();
					mb.setSubject_ID(rs.getString("Subject_ID"));
					mb.setPrice(Integer.parseInt(rs.getString("Price")));
					mb.setSubject(rs.getString("Subject"));
					mb.setImage(rs.getString("Image"));
					mb.setContent(rs.getString("Content"));
					mb.setKind(rs.getString("Kind"));

					subjectList.add(mb);
				} while (rs.next());
			}
		} catch (Exception ex) {
			System.out.println("getDetailSubject 에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return subjectList;
	}

	public Subject selectSubject(String id) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from hospital_subject where subject_ID=?";
		Subject mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mb = new Subject();
				mb.setSubject_ID(rs.getString("Subject_ID"));
				mb.setPrice(Integer.parseInt(rs.getString("Price")));
				mb.setSubject(rs.getString("Subject"));
				mb.setKind(rs.getString("Kind"));
				mb.setContent(rs.getString("Content"));
				mb.setImage(rs.getString("Image"));
			}

		} catch (Exception ex) {
			System.out.println("getDetailSubject 에러 : " + ex);

		} finally {
			close(rs);
			close(pstmt);
		}

		return mb;
	}

	public int deleteSubject(String id) {

		PreparedStatement pstmt = null;

		String sql = "delete from hospital_subject where subject_ID=?";
		int deleteCount = 0;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("getDetailSubject 에러 : " + ex);

		} finally {
			close(pstmt);
		}

		return deleteCount;
	}

	public int updateSubject(Subject subject) {

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql = "update hospital_subject set subject_ID=?, subject=?, kind=?, price=?, content=?, image=? where subject_id=?";
		System.out.println(subject.getSubject_ID());
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, subject.getSubject_ID());
			pstmt.setString(2, subject.getSubject());
			pstmt.setString(3, subject.getKind());
			pstmt.setInt(4, subject.getPrice());
			pstmt.setString(5, subject.getContent());
			pstmt.setString(6, subject.getImage());
			pstmt.setString(7, subject.getSubject_ID());
			updateCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
		}

		return updateCount;

	}

}
