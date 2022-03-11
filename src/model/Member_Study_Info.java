package model;

public class Member_Study_Info {
	private String memberId, study_Id, mentoring_Id, class_Id;
	private int type;
	
	public Member_Study_Info(String memberId, String study_Id, String mentoring_Id, String class_Id, int type) {
		super();
		this.memberId = memberId;
		this.study_Id = study_Id;
		this.mentoring_Id = mentoring_Id;
		this.class_Id = class_Id;
		this.type = type;
	}

	public Member_Study_Info() {
		super();
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getStudy_Id() {
		return study_Id;
	}

	public void setStudy_Id(String study_Id) {
		this.study_Id = study_Id;
	}

	public String getMentoring_Id() {
		return mentoring_Id;
	}

	public void setMentoring_Id(String mentoring_Id) {
		this.mentoring_Id = mentoring_Id;
	}

	public String getClass_Id() {
		return class_Id;
	}

	public void setClass_Id(String class_Id) {
		this.class_Id = class_Id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Member_Study_Info [memberId=" + memberId + ", study_Id=" + study_Id + ", mentoring_Id=" + mentoring_Id
				+ ", class_Id=" + class_Id + ", type=" + type + "]";
	}
	
	
	
	

}
