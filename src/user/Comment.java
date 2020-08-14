package user;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;

public class Comment {
	private int tno;
	private String uname;
	private String ucomment;
	private Date cdate;

	public Comment(int tno, String uname, String ucomment, Date cdate) {
		this.tno = tno;
		this.uname = uname;
		this.ucomment = ucomment;
		this.cdate = cdate;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUcomment() {
		return ucomment;
	}

	public void setUcomment(String ucomment) {
		this.ucomment = ucomment;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	@Override
	public String toString() {
		return "Comment [uname=" + uname + ", ucomment=" + ucomment + ", cdate=" + cdate + "]";
	}

}
