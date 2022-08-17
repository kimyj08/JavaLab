package db;

public class DTOboard {

	private String bid;
	private String btitle;
	private String bmemo;
	private String bdate;
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBmemo() {
		return bmemo;
	}
	public void setBmemo(String bmemo) {
		this.bmemo = bmemo;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	
	public DTOboard(String bid, String btitle, String bmemo, String bdate) {
		super();
		this.bid = bid;
		this.btitle = btitle;
		this.bmemo = bmemo;
		this.bdate = bdate;
	}
	
}
