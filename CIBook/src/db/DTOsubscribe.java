package db;

public class DTOsubscribe {

	private String sid;
	private String scid;
	private String smno;
	private String dmtel;
	private String scname;
	private String scprice;
	private String sstatus;
	private String sdone;
	private String sdate;
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getScid() {
		return scid;
	}
	public void setScid(String scid) {
		this.scid = scid;
	}
	public String getSmno() {
		return smno;
	}
	public void setSmno(String smno) {
		this.smno = smno;
	}
	public String getDmtel() {
		return dmtel;
	}
	public void setDmtel(String dmtel) {
		this.dmtel = dmtel;
	}
	public String getScname() {
		return scname;
	}
	public void setScname(String scname) {
		this.scname = scname;
	}
	public String getScprice() {
		return scprice;
	}
	public void setScprice(String scprice) {
		this.scprice = scprice;
	}
	public String getSstatus() {
		return sstatus;
	}
	public void setSstatus(String sstatus) {
		this.sstatus = sstatus;
	}
	public String getSdone() {
		return sdone;
	}
	public void setSdone(String sdone) {
		this.sdone = sdone;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	
	public DTOsubscribe(String sid, String scid, String smno, String dmtel, String scname, String scprice,
			String sstatus, String sdone, String sdate) {
		super();
		this.sid = sid;
		this.scid = scid;
		this.smno = smno;
		this.dmtel = dmtel;
		this.scname = scname;
		this.scprice = scprice;
		this.sstatus = sstatus;
		this.sdone = sdone;
		this.sdate = sdate;
	}
	
}
