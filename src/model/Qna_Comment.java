package model;

public class Qna_Comment {
	private String comment_Id, title, content;
	private int refNum;
	
	public Qna_Comment(String comment_Id, String title, String content, int refNum) {
		super();
		this.comment_Id = comment_Id;
		this.title = title;
		this.content = content;
		this.refNum = refNum;
	}

	public Qna_Comment() {
		super();
	}

	public String getComment_Id() {
		return comment_Id;
	}

	public void setComment_Id(String comment_Id) {
		this.comment_Id = comment_Id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRefNum() {
		return refNum;
	}

	public void setRefNum(int refNum) {
		this.refNum = refNum;
	}

	@Override
	public String toString() {
		return "Qna_Comment [comment_Id=" + comment_Id + ", title=" + title + ", content=" + content + ", refNum="
				+ refNum + "]";
	}
	
	
	
	
	
}
