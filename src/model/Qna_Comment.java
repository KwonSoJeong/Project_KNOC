package model;

import java.util.Date;

public class Qna_Comment {
	private String comment_Id, title, content;
	private int refNum;
	private Date regDate;
	
	public Qna_Comment() {}
	
	public Qna_Comment(String comment_Id, String title, String content, int refNum, Date regDate) {
		this.comment_Id = comment_Id;
		this.title = title;
		this.content = content;
		this.refNum = refNum;
		this.regDate = regDate;
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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Qna_Comment [comment_Id=" + comment_Id + ", title=" + title + ", content=" + content + ", refNum="
				+ refNum + ", regDate=" + regDate + "]";
	}
	
}
