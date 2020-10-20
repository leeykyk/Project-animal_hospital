package vo;

import java.sql.Date;

import java.sql.Timestamp;

public class Reservation {

	private String num;
	private String member_ID;
	private String subject; // 진료과목ID
	private String member_name; // 회원ID
	private String animal_name; // 동물ID
	private Timestamp date; // 예약 날짜 시간
	private String dateS;
	private String kind;

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	
	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getDateS() {
		return dateS;
	}

	public void setDateS(String dateS) {
		this.dateS = dateS;
	}

	// private String time; // 예약 시간
	private String etc; // 비고
	private String phone; // 비고

	public Reservation(String member_ID, String subject, String member_name, String animal_name, Timestamp date,
			String etc, String phone, String kind) {
		this.member_ID = member_ID;
		this.subject = subject;
		this.member_name = member_name;
		this.animal_name = animal_name;
		this.date = date;
		this.etc = etc;
		this.phone = phone;
		this.kind = kind;
	}

	public Reservation() {
		// TODO Auto-generated constructor stub
	}

	public String getMember_ID() {
		return member_ID;
	}

	public void setMember_ID(String member_ID) {
		this.member_ID = member_ID;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getAnimal_name() {
		return animal_name;
	}

	public void setAnimal_name(String animal_name) {
		this.animal_name = animal_name;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}