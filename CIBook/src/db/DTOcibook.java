package db;

public class DTOcibook {
	
	private String cid;
	private String cname;
	private String cbirth;
	private String cgender;
	private String ciname1;
	private String ciname2;
	private String ciname3;
	private String ciname4;
	private String ciname5;
	private String cdesc;
	private String ccolor;
	private String cctgr;
	private String cdate;
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCbirth() {
		return cbirth;
	}
	public void setCbirth(String cbirth) {
		this.cbirth = cbirth;
	}
	public String getCgender() {
		return cgender;
	}
	public void setCgender(String cgender) {
		this.cgender = cgender;
	}
	public String getCiname1() {
		return ciname1;
	}
	public void setCiname1(String ciname1) {
		this.ciname1 = ciname1;
	}
	public String getCiname2() {
		return ciname2;
	}
	public void setCiname2(String ciname2) {
		this.ciname2 = ciname2;
	}
	public String getCiname3() {
		return ciname3;
	}
	public void setCiname3(String ciname3) {
		this.ciname3 = ciname3;
	}
	public String getCiname4() {
		return ciname4;
	}
	public void setCiname4(String ciname4) {
		this.ciname4 = ciname4;
	}
	public String getCiname5() {
		return ciname5;
	}
	public void setCiname5(String ciname5) {
		this.ciname5 = ciname5;
	}
	public String getCdesc() {
		return cdesc;
	}
	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}
	public String getCcolor() {
		return ccolor;
	}
	public void setCcolor(String ccolor) {
		this.ccolor = ccolor;
	}
	public String getCctgr() {
		return cctgr;
	}
	public void setCctgr(String cctgr) {
		this.cctgr = cctgr;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	
	public DTOcibook(String cid, String cname, String cbirth, String cgender, String ciname1, String ciname2,
			String ciname3, String ciname4, String ciname5, String cdesc, String ccolor, String cctgr, String cdate) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cbirth = cbirth;
		this.cgender = cgender;
		this.ciname1 = ciname1;
		this.ciname2 = ciname2;
		this.ciname3 = ciname3;
		this.ciname4 = ciname4;
		this.ciname5 = ciname5;
		this.cdesc = cdesc;
		this.ccolor = ccolor;
		this.cctgr = cctgr;
		this.cdate = cdate;
	}

}
