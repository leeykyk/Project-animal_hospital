package vo;

import java.sql.Timestamp;

public class mem_Animal {
	
	private String Animal_ID;
	private String Member_ID;
	private String Animal_name;
	private String Birthday;
	private String Kind;
	private String Etc;
	
	
	public mem_Animal(String Animal_ID, String Member_ID, String Animal_name, String Birthday,
	         String Kind, String Etc) {
		this.Animal_ID=Animal_ID;
		this.Member_ID=Member_ID;
		this.Animal_name=Animal_name;
		this.Birthday=Birthday;
		this.Kind=Kind;
		this.Etc=Etc;
		
	}
	

	public mem_Animal() {
		// TODO Auto-generated constructor stub
	}


	public String getAnimal_ID() {
		return Animal_ID;
	}
	public void setAnimal_ID(String animal_ID) {
		Animal_ID = animal_ID;
	}
	public String getMember_ID() {
		return Member_ID;
	}
	public void setMember_ID(String member_ID) {
		Member_ID = member_ID;
	}
	public String getAnimal_name() {
		return Animal_name;
	}
	public void setAnimal_name(String animal_name) {
		Animal_name = animal_name;
	}
	public String getBirthday() {
		return Birthday;
	}
	public void setBirthday(String birthday) {
		Birthday = birthday;
	}
	public String getKind() {
		return Kind;
	}
	public void setKind(String kind) {
		Kind = kind;
	}
	public String getEtc() {
		return Etc;
	}
	public void setEtc(String etc) {
		Etc = etc;
	}
	
}