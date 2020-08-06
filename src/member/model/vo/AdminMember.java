package member.model.vo;

public class AdminMember implements java.io.Serializable {
	private static final long serialVersionUID = 1L;  
	
	private String userid;  //학번(교직원,교수는 번호)
	private String userpwd;
	private String username;
	private String userssn;
	private String address;
	private String phone;
	private String email;
	private String treasure;
	
	public AdminMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminMember(String userid, String userpwd, String username, String userssn, String address, String phone,
			String email, String treasure) {
		super();
		this.userid = userid;
		this.userpwd = userpwd;
		this.username = username;
		this.userssn = userssn;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.treasure = treasure;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserssn() {
		return userssn;
	}

	public void setUserssn(String userssn) {
		this.userssn = userssn;
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

	@Override
	public String toString() {
		return "AdminMember [userid=" + userid + ", userpwd=" + userpwd + ", username=" + username + ", userssn="
				+ userssn + ", address=" + address + ", phone=" + phone + ", email=" + email + ", treasure=" + treasure
				+ "]";
	}
	
	
	
}
