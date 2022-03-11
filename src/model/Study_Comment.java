package model;

import java.util.Date;

public class Study_Comment {
	private String comment_Id;
	private String content;
	private int refNum, refLevel, refStep;
	private Date regDate;
	
	public Study_Comment() {}
	
	public Study_Comment(String comment_Id, String content, int refNum, int refLevel, int refStep, Date regDate) {
		this.comment_Id = comment_Id;
		this.content = content;
		this.refNum = refNum;
		this.refLevel = refLevel;
		this.refStep = refStep;
		this.regDate = regDate;
	}

	public String getComment_Id() {
		return comment_Id;
	}

	public void setComment_Id(String comment_Id) {
		this.comment_Id = comment_Id;
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

	public int getRefLevel() {
		return refLevel;
	}

	public void setRefLevel(int refLevel) {
		this.refLevel = refLevel;
	}

	public int getRefStep() {
		return refStep;
	}

	public void setRefStep(int refStep) {
		this.refStep = refStep;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Study_Comment [comment_Id=" + comment_Id + ", content=" + content + ", refNum=" + refNum + ", refLevel="
				+ refLevel + ", refStep=" + refStep + ", regDate=" + regDate + "]";
	}
	
	
}
