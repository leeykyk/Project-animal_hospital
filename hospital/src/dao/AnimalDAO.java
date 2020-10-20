package dao;

import static db.JdbcUtil.*;
import java.sql.*;
import java.util.ArrayList;
import vo.Animal;
import vo.MemberBean;

public class AnimalDAO {

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	private static AnimalDAO animalDAO;

	private AnimalDAO() { // 외부 클래스에서 호출할 수 없도록 private으로 지정
	}

	// DB 작업을 하기 위해서 필요한 Connection 객체를 멤버 변수 값으로 설정하는 메서드
	public void setConnection(Connection con) {
		this.con = con;
	}

	public static AnimalDAO getInstance() { // 싱글톤으로 지정

		if (animalDAO == null) {
			animalDAO = new AnimalDAO();
		}

		return animalDAO;
	}

	public ArrayList<Animal> selectAnimalList() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select*from animal";
		ArrayList<Animal> animalList = new ArrayList<Animal>();
		Animal an = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					an = new Animal();
					an.setAnimal_ID(rs.getString("animal_ID"));
					an.setKind(rs.getString("kind"));
					an.setEtc(rs.getString("etc"));

					animalList.add(an);
				} while (rs.next());
			}
		} catch (Exception ex) {
			System.out.println("getDetailAnimal 에러 : " + ex);
		} finally {
			close(rs);
			close(pstmt);
		}

		return animalList;
	}

	public Animal selectAnimal(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Animal animal = null;
		System.out.println(id);
		try {
			pstmt = con.prepareStatement("SELECT * FROM animal WHERE animal_id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				animal = new Animal(rs.getString("animal_ID"), rs.getString("kind"), rs.getString("etc"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return animal;
	}

	public int insertAnimal(Animal animal) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "INSERT INTO animal VALUES(?,?,?)";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, animal.getAnimal_ID());
			pstmt.setString(2, animal.getKind());
			pstmt.setString(3, animal.getEtc());
			insertCount = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return insertCount;
	}

	public int updateAnimal(Animal animal) {

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql = "update animal set etc=?, kind=? where animal_id=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, animal.getEtc());
			pstmt.setString(2, animal.getKind());
			pstmt.setString(3, animal.getAnimal_ID());
			updateCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
		}

		return updateCount;

	}

	public int deleteAnimal(String id) {

		PreparedStatement pstmt = null;

		String sql = "delete from animal where animal_ID=?";
		int deleteCount = 0;
		System.out.println(id);
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
			System.out.println(deleteCount);
		} catch (Exception ex) {
			System.out.println("getDetailMember 에러 : " + ex);

		} finally {
			close(pstmt);
		}

		return deleteCount;
	}

}
