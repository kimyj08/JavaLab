package db;

public class DTOdelivery0822 {

	private String did;
	private String dpid;
	private String dmno;
	private String dmaddr;
	private String dmtel;
	private String dpname;
	private String dpprice;
	private String dstatus;
	private String ddone;
	private String ddate;
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDpid() {
		return dpid;
	}
	public void setDpid(String dpid) {
		this.dpid = dpid;
	}
	public String getDmno() {
		return dmno;
	}
	public void setDmno(String dmno) {
		this.dmno = dmno;
	}
	public String getDmaddr() {
		return dmaddr;
	}
	public void setDmaddr(String dmaddr) {
		this.dmaddr = dmaddr;
	}
	public String getDmtel() {
		return dmtel;
	}
	public void setDmtel(String dmtel) {
		this.dmtel = dmtel;
	}
	public String getDpname() {
		return dpname;
	}
	public void setDpname(String dpname) {
		this.dpname = dpname;
	}
	public String getDpprice() {
		return dpprice;
	}
	public void setDpprice(String dpprice) {
		this.dpprice = dpprice;
	}
	public String getDstatus() {
		return dstatus;
	}
	public void setDstatus(String dstatus) {
		this.dstatus = dstatus;
	}
	public String getDdone() {
		return ddone;
	}
	public void setDdone(String ddone) {
		this.ddone = ddone;
	}
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	
	public DTOdelivery0822(String did, String dpid, String dmno, String dmaddr, String dmtel, String dpname,
			String dpprice, String dstatus, String ddone, String ddate) {
		super();
		this.did = did;
		this.dpid = dpid;
		this.dmno = dmno;
		this.dmaddr = dmaddr;
		this.dmtel = dmtel;
		this.dpname = dpname;
		this.dpprice = dpprice;
		this.dstatus = dstatus;
		this.ddone = ddone;
		this.ddate = ddate;
	}
	
}
