package admin.model.vo;

import java.sql.Date;

public class Admin implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	
	private String adminid;
	private String adminname;
	private String adminssn;
	private String address;
	private String phone;
	private String gender;
	private String email;
	private String treasure;
	private java.sql.Date adminhiredate;
	
	public Admin() {
		super();
		
	}

	public Admin(String adminid, String adminname, String adminssn, String address, String phone, String gender,
			String email, String treasure, Date adminhiredate) {
		super();
		this.adminid = adminid;
		this.adminname = adminname;
		this.adminssn = adminssn;
		this.address = address;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.treasure = treasure;
		this.adminhiredate = adminhiredate;
	}

	public String getAdminid() {
		return adminid;
	}

	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getAdminssn() {
		return adminssn;
	}

	public void setAdminssn(String adminssn) {
		this.adminssn = adminssn;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTreasure() {
		return treasure;
	}

	public void setTreasure(String treasure) {
		this.treasure = treasure;
	}

	public java.sql.Date getAdminhiredate() {
		return adminhiredate;
	}

	public void setAdminhiredate(java.sql.Date adminhiredate) {
		this.adminhiredate = adminhiredate;
	}

	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", adminname=" + adminname + ", adminssn=" + adminssn + ", address="
				+ address + ", phone=" + phone + ", gender=" + gender + ", email=" + email + ", treasure=" + treasure
				+ ", adminhiredate=" + adminhiredate + "]";
	}

	
	
	
}
