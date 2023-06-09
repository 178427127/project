package com.qjnu.pojo;

import java.util.Date;

public class Users extends BaseDomain  {
	private Integer uid;
	private String unickname;
	private String ucardid;
	private String uhead;
	private String uname;
	private String umailbox;
	private String uphonenumber;
	private Date uregisterdate;
	private String uflip;
	private Date ufldate;
	private String ureferrer;
	private String ureferrername;
	private String userpaytoid;
	private String ucertnumber;
	private String upassword;
	private String upwd_zd;

	
	public String getUpwd_zd() {
		return upwd_zd;
	}

	public void setUpwd_zd(String upwd_zd) {
		this.upwd_zd = upwd_zd;
	}

	public Users() {

	}

	public Users(Integer uid, String unickname, String ucardid, String uhead, String uname, String umailbox,
			String uphonenumber, Date uregisterdate, String uflip, Date ufldate, String ureferrer, String ureferrername,
			String userpaytoid, String ucertnumber, String upassword) {

		this.uid = uid;
		this.unickname = unickname;
		this.ucardid = ucardid;
		this.uhead = uhead;
		this.uname = uname;
		this.umailbox = umailbox;
		this.uphonenumber = uphonenumber;
		this.uregisterdate = uregisterdate;
		this.uflip = uflip;
		this.ufldate = ufldate;
		this.ureferrer = ureferrer;
		this.ureferrername = ureferrername;
		this.userpaytoid = userpaytoid;
		this.ucertnumber = ucertnumber;
		this.upassword = upassword;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUnickname() {
		return unickname;
	}

	public void setUnickname(String unickname) {
		this.unickname = unickname;
	}

	public String getUcardid() {
		return ucardid;
	}

	public void setUcardid(String ucardid) {
		this.ucardid = ucardid;
	}

	public String getUhead() {
		return uhead;
	}

	public void setUhead(String uhead) {
		this.uhead = uhead;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUmailbox() {
		return umailbox;
	}

	public void setUmailbox(String umailbox) {
		this.umailbox = umailbox;
	}

	public String getUphonenumber() {
		return uphonenumber;
	}

	public void setUphonenumber(String uphonenumber) {
		this.uphonenumber = uphonenumber;
	}

	public Date getUregisterdate() {
		return uregisterdate;
	}

	public void setUregisterdate(Date uregisterdate) {
		this.uregisterdate = uregisterdate;
	}

	public String getUflip() {
		return uflip;
	}

	public void setUflip(String uflip) {
		this.uflip = uflip;
	}

	public Date getUfldate() {
		return ufldate;
	}

	public void setUfldate(Date ufldate) {
		this.ufldate = ufldate;
	}

	public String getUreferrer() {
		return ureferrer;
	}

	public void setUreferrer(String ureferrer) {
		this.ureferrer = ureferrer;
	}

	public String getUreferrername() {
		return ureferrername;
	}

	public void setUreferrername(String ureferrername) {
		this.ureferrername = ureferrername;
	}

	public String getUserpaytoid() {
		return userpaytoid;
	}

	public void setUserpaytoid(String userpaytoid) {
		this.userpaytoid = userpaytoid;
	}

	public String getUcertnumber() {
		return ucertnumber;
	}

	public void setUcertnumber(String ucertnumber) {
		this.ucertnumber = ucertnumber;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

}
