package kubo;

import java.sql.Date;


public class Comment {
	private String comment;
	private String time;
	private String username;
	private int vedioid;
	private int commentid;
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getVedioid() {
		return vedioid;
	}
	public void setVedioid(int vedioid) {
		this.vedioid = vedioid;
	}
	public int getCommentid() {
		return commentid;
	}
	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}
	
}
