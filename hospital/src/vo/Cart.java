package vo;

import java.net.URLEncoder;

public class Cart {

	private String image;
	private String subject;
	private int price;
	private int qty;
	private String encodingKind;
	private String kind;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSubject() {
		return subject;
	}

	public String getEncodingKind() {
		try {
			encodingKind = URLEncoder.encode(subject, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return encodingKind;
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

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

}
