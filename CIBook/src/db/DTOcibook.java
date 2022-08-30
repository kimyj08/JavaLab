package db;

public class DTOcibook {
	
	private String cid;
	private String cname;
	private String cbirth;
	private String cgender;
	private String ciname1;
	private String ciname2;
	private String ciname3;
	private String cft;
	private String cdesc;
	private String cowner;
	private String caddr;
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
	public String getCft() {
		return cft;
	}
	public void setCft(String cft) {
		this.cft = cft;
	}
	public String getCdesc() {
		return cdesc;
	}
	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}
	public String getCowner() {
		return cowner;
	}
	public void setCowner(String cowner) {
		this.cowner = cowner;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	
	public DTOcibook(String cid, String cname, String cbirth, String cgender, String ciname1, String ciname2,
			String ciname3, String cft, String cdesc, String cowner, String caddr, String cdate) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cbirth = cbirth;
		this.cgender = cgender;
		this.ciname1 = ciname1;
		this.ciname2 = ciname2;
		this.ciname3 = ciname3;
		this.cft = cft;
		this.cdesc = cdesc;
		this.cowner = cowner;
		this.caddr = caddr;
		this.cdate = cdate;
	}
	
}
