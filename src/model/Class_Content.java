package model;

public class Class_Content {
	private String content_Id, class_Id, title, file1;
	private int no;
	
	public Class_Content(String content_Id, String class_Id, String title, String file1, int no) {
		super();
		this.content_Id = content_Id;
		this.class_Id = class_Id;
		this.title = title;
		this.file1 = file1;
		this.no = no;
	}

	public Class_Content() {
		super();
	}

	public String getContent_Id() {
		return content_Id;
	}

	public void setContent_Id(String content_Id) {
		this.content_Id = content_Id;
	}

	public String getClass_Id() {
		return class_Id;
	}

	public void setClass_Id(String class_Id) {
		this.class_Id = class_Id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "Class_Content [content_Id=" + content_Id + ", class_Id=" + class_Id + ", title=" + title + ", file1="
				+ file1 + ", no=" + no + "]";
	}
	
	
}
