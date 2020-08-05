package professor.model.vo;

public class Professor implements java.io.Serializable {
	private static final long serialversionUID = 1L;
	
	private String professorid;
	private String professorname;
	private String professorssn;
	private String address;
	private String phone;
	private String gender;
	private String email;
	private String treasure;
	private String categoryname;
	private String majorno;
	
	public Professor() {
		super();
		
	}

	public Professor(String professorid, String professorname, String professorssn, String address, String phone,
			String gender, String email, String treasure, String categoryname, String majorno) {
		super();
		this.professorid = professorid;
		this.professorname = professorname;
		this.professorssn = professorssn;
		this.address = address;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.treasure = treasure;
		this.categoryname = categoryname;
		this.majorno = majorno;
	}

	public String getProfessorid() {
		return professorid;
	}

	public void setProfessorid(String professorid) {
		this.professorid = professorid;
	}

	public String getProfessorname() {
		return professorname;
	}

	public void setProfessorname(String professorname) {
		this.professorname = professorname;
	}

	public String getProfessorssn() {
		return professorssn;
	}

	public void setProfessorssn(String professorssn) {
		this.professorssn = professorssn;
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

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public String getMajorno() {
		return majorno;
	}

	public void setMajorno(String majorno) {
		this.majorno = majorno;
	}

	@Override
	public String toString() {
		return "Professor [professorid=" + professorid + ", professorname=" + professorname + ", professorssn="
				+ professorssn + ", address=" + address + ", phone=" + phone + ", gender=" + gender + ", email=" + email
				+ ", treasure=" + treasure + ", categoryname=" + categoryname + ", majorno=" + majorno + "]";
	}

	
	
	
	
}
