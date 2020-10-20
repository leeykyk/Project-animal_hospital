package vo;

public class Subject {
	
	private String subject_ID;
	private String subject;
	private int price;
	private String etc;
	private String image;
	private String content;
	private String kind;
	
	public Subject(int i, String subject_ID, int price, String subject, String image, String content, String kind, int j) {
		this.subject_ID=subject_ID;
		this.price=price;
		this.subject=subject;		
		this.image=image;
		this.content=content;
		this.kind=kind;
	}

	public Subject() {
		// TODO Auto-generated constructor stub
	}

	public String getSubject_ID() {
		return subject_ID;
	}
	public void setSubject_ID(String subject_ID) {
		this.subject_ID = subject_ID;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}

}
