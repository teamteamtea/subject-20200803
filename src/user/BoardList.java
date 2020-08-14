package user;

import java.time.LocalDateTime;

public class BoardList {
	private   int tno;
	private String uname;
	private String utext;
	private String btext;
	private static LocalDateTime bdate;
	
	public BoardList(  int tno, String uname,String utext,String board_text,LocalDateTime bdate) {
		this.tno=tno;
		this.uname=uname;
		this.utext=utext;
		this.btext=board_text;
		this.bdate=bdate;
	}
	
	public BoardList(int tno) {
		// TODO Auto-generated constructor stub
		this.tno=tno;
	}
	
	public  int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno=tno;
	
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUtext() {
		return utext;
	}
	public void setUtext(String utext) {
		this.utext = utext;
	}
	public String getBoard_text() {
		return btext;
	}
	public void setBoard_text(String board_text) {
		this.btext = board_text;
	}
	public  LocalDateTime getBdate() {
		return bdate;
	}
	public void setBdate(LocalDateTime bdate) {
		this.bdate = bdate;
	}

	public String getBtext() {
		return btext;
	}
	
	@Override
	public String toString() {
		return "BoardList [tno=" + tno + ", uname=" + uname + ", utext=" + utext + ", btext=" + btext + "]";
	}

	
	
	
	
}
