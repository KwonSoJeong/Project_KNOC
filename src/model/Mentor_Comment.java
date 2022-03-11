package model;

public class Mentor_Comment {
	private String comment_Id;
	private int refNum, refLevel, refStep;
	
	public Mentor_Comment(String comment_Id, int refNum, int refLevel, int refStep) {
		super();
		this.comment_Id = comment_Id;
		this.refNum = refNum;
		this.refLevel = refLevel;
		this.refStep = refStep;
	}

	public Mentor_Comment() {
		super();
	}

	public String getComment_Id() {
		return comment_Id;
	}

	public void setComment_Id(String comment_Id) {
		this.comment_Id = comment_Id;
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

	@Override
	public String toString() {
		return "Mentor_Comment [comment_Id=" + comment_Id + ", refNum=" + refNum + ", refLevel=" + refLevel
				+ ", refStep=" + refStep + "]";
	}
	
	
	
	
	
}
