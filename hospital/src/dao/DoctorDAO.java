package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import vo.Doctor;

public class DoctorDAO {

	public static DoctorDAO instance;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;

	private DoctorDAO() {

	}

	public static DoctorDAO getInstance() {
		if (instance == null) {
			instance = new DoctorDAO();
		}
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;

	}

	public int insertHospital_office(Doctor member) {

		PreparedStatement pstmt = null;

		String sql = "insert into hospital_office values(?,?,?,?,?,?,?)";
		int insertCount = 0;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getDoctor_ID());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getJob());
			pstmt.setString(4, member.getSchool());
			pstmt.setString(5, member.getCareer());
			pstmt.setString(6, member.getImage());
			pstmt.setString(7, member.getDoctor_pass());

			insertCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println("joinMember 에러 : " + ex);
		} finally {
			close(pstmt);
		}

		return insertCount;
	}

	public String selectLoginId(Doctor member) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String loginId = null;
		String sql = "select doctor_ID from hospital_office where doctor_ID=? and doctor_pass=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getDoctor_ID());
			pstmt.setString(2, member.getDoctor_pass());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				loginId = rs.getString("Doctor_ID");
			}
		} catch (Exception ex) {
			System.out.println("에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return loginId;
	}

	public ArrayList<Doctor> selectDoctorList() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from hospital_office";
		ArrayList<Doctor> doctorList = new ArrayList<Doctor>();
		Doctor mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					mb = new Doctor();
					mb.setDoctor_ID(rs.getString("Doctor_ID"));
					mb.setName(rs.getString("Name"));
					mb.setJob(rs.getString("Job"));
					mb.setSchool(rs.getString("School"));
					mb.setCareer(rs.getString("Career"));
					mb.setImage(rs.getString("Image"));
					mb.setDoctor_pass(rs.getString("Doctor_pass"));
					doctorList.add(mb);
				} while (rs.next());
			}
		} catch (Exception ex) {
			System.out.println("getDetailMember 에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return doctorList;
	}

	public Doctor selectDoctor(String id) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from hospital_office where doctor_ID=?";
		Doctor mb = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mb = new Doctor();
				mb.setDoctor_ID(rs.getString("Doctor_ID"));
				mb.setName(rs.getString("Name"));
				mb.setJob(rs.getString("Job"));
				mb.setSchool(rs.getString("School"));
				mb.setCareer(rs.getString("Career"));
				mb.setImage(rs.getString("Image"));
				mb.setDoctor_pass(rs.getString("Doctor_pass"));
			}

		} catch (Exception ex) {
			System.out.println("getDetailMember 에러 : " + ex);

		} finally {
			close(rs);
			close(pstmt);
		}

		return mb;
	}

	public int deleteDoctor(String id) {

		PreparedStatement pstmt = null;

		String sql = "delete from hospital_office where doctor_ID=?";
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

	public int updateDoctor(Doctor doctor) {

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql = "update hospital_office set name=?, job=?, school=?, career=?, image=?, doctor_pass=? where doctor_id=?";
		System.out.println(doctor.getDoctor_ID());
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, doctor.getName());
			pstmt.setString(2, doctor.getJob());
			pstmt.setString(3, doctor.getSchool());
			pstmt.setString(4, doctor.getCareer());
			pstmt.setString(5, doctor.getImage());
			pstmt.setString(6, doctor.getDoctor_pass());
			pstmt.setString(7, doctor.getDoctor_ID());
			updateCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
		}

		return updateCount;

	}

}
