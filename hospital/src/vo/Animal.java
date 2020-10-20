package vo;

public class Animal {
	
	private String Animal_ID;
	private String kind;
	private String etc;
	

	public Animal() {
		// TODO Auto-generated constructor stub
	}



	public Animal(String Animal_ID, String kind, String etc) {
		this.Animal_ID=Animal_ID;
		this.kind=kind;
		this.etc=etc;
	}



	public String getAnimal_ID() {
		return Animal_ID;
	}
	public void setAnimal_ID(String animal_ID) {
		Animal_ID = animal_ID;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	
	
	

}
