package db;

public class DTOmember {
	
	private String mno;
	private String mnick;
	private String mpass;
	private String mtel;
	private String memail;
	private String mgender;
	private String miname;
	private String mlevel;
	private String mdate;
	
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getMiname() {
		return miname;
	}
	public void setMiname(String miname) {
		this.miname = miname;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	
	public DTOmember(String mno, String mnick, String mpass, String mtel, String memail, String mgender, String miname,
			String mlevel, String mdate) {
		super();
		this.mno = mno;
		this.mnick = mnick;
		this.mpass = mpass;
		this.mtel = mtel;
		this.memail = memail;
		this.mgender = mgender;
		this.miname = miname;
		this.mlevel = mlevel;
		this.mdate = mdate;
	}
	
}
