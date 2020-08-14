package user;

import java.time.LocalDateTime;
import java.util.Date;

public class Reply {
	
	private int tno;
	private String rname;
	private String rcomment;
	private Date rdate;
	
	public Reply(int tno, String rname, String rcomment, Date rdate) {
		this.tno=tno;
		this.rname=rname;
		this.rcomment=rcomment;
		this.rdate=rdate;
	}
	
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRcomment() {
		return rcomment;
	}
	public void setRcomment(String rcomment) {
		this.rcomment = rcomment;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
}
