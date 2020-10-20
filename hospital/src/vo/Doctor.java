package vo;

public class Doctor {
	
	private String Doctor_ID;
	private String name;
	private String job;
	private String school;
	private String career;
	private String image;
	private String Doctor_pass;
	
	public Doctor() {
		// TODO Auto-generated constructor stub
	}
	
	public Doctor(int i, String Doctor_ID, String name, String job, String school, String career,
			String image, String Doctor_pass, int j) {
		this.Doctor_ID=Doctor_ID;
		this.name=name;
		this.job=job;
		this.school=school;
		this.career=career;
		this.image=image;
		this.Doctor_pass=Doctor_pass;
	}

	public String getDoctor_pass() {
		return Doctor_pass;
	}
	public void setDoctor_pass(String doctor_pass) {
		Doctor_pass = doctor_pass;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDoctor_ID() {
		return Doctor_ID;
	}
	public void setDoctor_ID(String doctor_ID) {
		Doctor_ID = doctor_ID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}	
	
}
