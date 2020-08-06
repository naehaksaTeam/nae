package student.model.vo;

public class Member implements java.io.Serializable {
	private static final long serialVersionUID = 77463L;
	   private String id;
	   private String name;
	   private String ssn;
	   private String address;
	   private String phone;
	   private String gender;
	   private String email;
	   private String treasure;
	   public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", ssn=" + ssn + ", address=" + address + ", phone=" + phone
				+ ", gender=" + gender + ", email=" + email + ", treasure=" + treasure + ", password=" + password + "]";
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String id, String name, String ssn, String address, String phone, String gender, String email,
			String treasure, String password) {
		super();
		this.id = id;
		this.name = name;
		this.ssn = ssn;
		this.address = address;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.treasure = treasure;
		this.password = password;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String password;
}
