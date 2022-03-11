package model;

public class Qna {
	private String qna_Id, writer, title, content;
	private int secret;
	
	public Qna(String qna_Id, String writer, String title, String content, int secret) {
		super();
		this.qna_Id = qna_Id;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.secret = secret;
	}

	public Qna() {
		super();
	}

	public String getQna_Id() {
		return qna_Id;
	}

	public void setQna_Id(String qna_Id) {
		this.qna_Id = qna_Id;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public int getSecret() {
		return secret;
	}

	public void setSecret(int secret) {
		this.secret = secret;
	}

	@Override
	public String toString() {
		return "Qna [qna_Id=" + qna_Id + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", secret=" + secret + "]";
	}
	

	
}
