package model;

import java.util.Date;

public class Classes {
	private String class_id;
	private String lec_id;
	private String title;
	private String intro;
	private String category_id;
	private int type;
	private int favorite;
	private Date regDate;
	private int price;
	
	public Classes() {}

	public Classes(String class_id, String lec_id, String title, String intro, String category_id, int type,
			int favorite, Date regDate, int price) {
		this.class_id = class_id;
		this.lec_id = lec_id;
		this.title = title;
		this.intro = intro;
		this.category_id = category_id;
		this.type = type;
		this.favorite = favorite;
		this.regDate = regDate;
		this.price = price;
	}

	public String getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = class_id;
	}

	public String getLec_id() {
		return lec_id;
	}

	public void setLec_id(String lec_id) {
		this.lec_id = lec_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getFavorite() {
		return favorite;
	}

	public void setFavorite(int favorite) {
		this.favorite = favorite;
	}

	public Date getRegdate() {
		return regDate;
	}

	public void setRegdate(Date regDate) {
		this.regDate = regDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Classes [class_id=" + class_id + ", lec_id=" + lec_id + ", title=" + title + ", intro=" + intro
				+ ", category_id=" + category_id + ", type=" + type + ", favorite=" + favorite + ", regDate=" + regDate
				+ ", price=" + price + "]";
	}
	
}
