package db;

public class DTOrcomment {

	private String rid;
	private String rcid;
	private String rnick;
	private String rcm;
	private String rdate;
	
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRcid() {
		return rcid;
	}
	public void setRcid(String rcid) {
		this.rcid = rcid;
	}
	public String getRnick() {
		return rnick;
	}
	public void setRnick(String rnick) {
		this.rnick = rnick;
	}
	public String getRcm() {
		return rcm;
	}
	public void setRcm(String rcm) {
		this.rcm = rcm;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	
	public DTOrcomment(String rid, String rcid, String rnick, String rcm, String rdate) {
		super();
		this.rid = rid;
		this.rcid = rcid;
		this.rnick = rnick;
		this.rcm = rcm;
		this.rdate = rdate;
	}
	
}
