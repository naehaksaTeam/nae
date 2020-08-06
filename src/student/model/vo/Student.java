package student.model.vo;

import java.sql.Date;

public class Student implements java.io.Serializable {
   private static final long serialVersionUID = 1L;
   private String studentid;
   private String studentname;
   private String studentssn;
   private String address;
   private String phone;
   private String gender;
   private String email;
   private String treasure;
   private String categoryname;
   private String majorno;
   private java.sql.Date entrancedate;
   private String absencewhether;
   private int absencecount;
   private String ssname;

   public Student() {
      super();
      // TODO Auto-generated constructor stub
   }	
   
   public Student(String studentid, String studentname, String studentssn, String address, String phone, String gender,
         String email, String treasure, String categoryname, String majorno,
         String absencewhether, int absencecount, String ssname) {
      super();
      this.studentid = studentid;
      this.studentname = studentname;
      this.studentssn = studentssn;
      this.address = address;
      this.phone = phone;
      this.gender = gender;
      this.email = email;
      this.treasure = treasure;
      this.categoryname = categoryname;
      this.majorno = majorno;
      this.absencewhether = absencewhether;
      this.absencecount = absencecount;
      this.ssname = ssname;
   }

   public String getStudentid() {
      return studentid;
   }

   public void setStudentid(String studentid) {
      this.studentid = studentid;
   }

   public String getStudentname() {
      return studentname;
   }

   public void setStudentname(String studentname) {
      this.studentname = studentname;
   }

   public String getStudentssn() {
      return studentssn;
   }

   public void setStudentssn(String studentssn) {
      this.studentssn = studentssn;
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

   public java.sql.Date getEntrancedate() {
      return entrancedate;
   }

   public void setEntrancedate(java.sql.Date entrancedate) {
      this.entrancedate = entrancedate;
   }

   public String getAbsencewhether() {
      return absencewhether;
   }

   public void setAbsencewhether(String absencewhether) {
      this.absencewhether = absencewhether;
   }

   public int getAbsencecount() {
      return absencecount;
   }

   public void setAbsencecount(int absencecount) {
      this.absencecount = absencecount;
   }

   public String getSsname() {
      return ssname;
   }

   public void setSsname(String ssname) {
      this.ssname = ssname;
   }

   @Override
   public String toString() {
      return "Student [studentid=" + studentid + ", studentname=" + studentname + ", studentssn=" + studentssn
            + ", address=" + address + ", phone=" + phone + ", gender=" + gender + ", email=" + email
            + ", treasure=" + treasure + ", categoryname=" + categoryname + ", majorno=" + majorno
            + ", entrancedate=" + entrancedate + ", absencewhether=" + absencewhether + ", absencecount="
            + absencecount + ", ssname=" + ssname + "]";
   }

   
   
}