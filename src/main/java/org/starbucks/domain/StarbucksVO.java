package org.starbucks.domain;

public class StarbucksVO {

	private Integer tno;
	private String tname,tcontent,twriter;
	public Integer getTno() {
		return tno;
	}
	public void setTno(Integer tno) {
		this.tno = tno;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTcontent() {
		return tcontent;
	}
	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}
	public String getTwriter() {
		return twriter;
	}
	public void setTwriter(String twriter) {
		this.twriter = twriter;
	}
	@Override
	public String toString() {
		return "StarbucksVO [tno=" + tno + ", tname=" + tname + ", tcontent=" + tcontent + ", twriter=" + twriter + "]";
	}
	
	
	
}
