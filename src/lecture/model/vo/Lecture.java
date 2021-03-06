package lecture.model.vo;
//강의
public class Lecture implements java.io.Serializable{
	private final static long serialVersionUID = 1232342343L;
	
	private String lcode;
	private String lname;
	private String category;
	private int capacity;
	private String content;
	private String lclock;
	public String getLclock() {
		return lclock;
	}
	public void setLclock(String lclock) {
		this.lclock = lclock;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private String name;
	public Lecture(String lcode, String lname, String category, int capacity, String content, String lclock,
			String name, String ltime, String professorid, String room) {
		super();
		this.lcode = lcode;
		this.lname = lname;
		this.category = category;
		this.capacity = capacity;
		this.content = content;
		this.lclock = lclock;
		this.name = name;
		this.ltime = ltime;
		this.professorid = professorid;
		this.room = room;
	}
	private String ltime;
	private String professorid;
	private String room;
	public Lecture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getLcode() {
		return lcode;
	}
	public void setLcode(String lcode) {
		this.lcode = lcode;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCapacity() {
		return capacity;
	}
	public Lecture(String lcode, String lname, String category, int capacity, String content, String name, String ltime,
			String professorid, String room) {
		super();
		this.lcode = lcode;
		this.lname = lname;
		this.category = category;
		this.capacity = capacity;
		this.content = content;
		this.name = name;
		this.ltime = ltime;
		this.professorid = professorid;
		this.room = room;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLtime() {
		return ltime;
	}
	public void setLtime(String ltime) {
		this.ltime = ltime;
	}
	public String getProfessorid() {
		return professorid;
	}
	public void setProfessorid(String professorid) {
		this.professorid = professorid;
	}
	public String getRoom() {
		return room;
	}
	public Lecture(String lcode, String lname, String category, int capacity, String content, String ltime,
			String professorid, String room) {
		super();
		this.lcode = lcode;
		this.lname = lname;
		this.category = category;
		this.capacity = capacity;
		this.content = content;
		this.ltime = ltime;
		this.professorid = professorid;
		this.room = room;
	}
	@Override
	public String toString() {
		return "Lecture [lcode=" + lcode + ", lname=" + lname + ", category=" + category + ", capacity=" + capacity
				+ ", content=" + content + ", lclock=" + lclock + ", name=" + name + ", ltime=" + ltime
				+ ", professorid=" + professorid + ", room=" + room + "]";
	}
	public void setRoom(String room) {
		this.room = room;
	}
	
	
	
}
