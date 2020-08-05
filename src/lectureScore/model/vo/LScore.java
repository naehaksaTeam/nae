package lectureScore.model.vo;

public class LScore {
	private String receptionno;
	private String lcode;
	private String studentid;
	private int atndnscore;
	private int midscore;
	private int finalscore;
	private int totalscore;
	private String grade;
	private String atndnbelow;
	
	public LScore() {}

	public LScore(String receptionno, String lcode, String studentid, int atndnscore, int midscore, int finalscore,
			int totalscore, String grade, String atndnbelow) {
		super();
		this.receptionno = receptionno;
		this.lcode = lcode;
		this.studentid = studentid;
		this.atndnscore = atndnscore;
		this.midscore = midscore;
		this.finalscore = finalscore;
		this.totalscore = totalscore;
		this.grade = grade;
		this.atndnbelow = atndnbelow;
	}

	public void setReceptionno(String receptionno) {
		this.receptionno = receptionno;
	}

	public void setLcode(String lcode) {
		this.lcode = lcode;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public void setAtndnscore(int atndnscore) {
		this.atndnscore = atndnscore;
	}

	public void setMidscore(int midscore) {
		this.midscore = midscore;
	}

	public void setFinalscore(int finalscore) {
		this.finalscore = finalscore;
	}

	public void setTotalscore(int totalscore) {
		this.totalscore = totalscore;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setAtndnbelow(String atndnbelow) {
		this.atndnbelow = atndnbelow;
	}

	public String getReceptionno() {
		return receptionno;
	}

	public String getLcode() {
		return lcode;
	}

	public String getStudentid() {
		return studentid;
	}

	public int getAtndnscore() {
		return atndnscore;
	}

	public int getMidscore() {
		return midscore;
	}

	public int getFinalscore() {
		return finalscore;
	}

	public int getTotalscore() {
		return totalscore;
	}

	public String getGrade() {
		return grade;
	}

	public String getAtndnbelow() {
		return atndnbelow;
	}

	@Override
	public String toString() {
		return "LScore [receptionno=" + receptionno + ", lcode=" + lcode + ", studentid=" + studentid + ", atndnscore="
				+ atndnscore + ", midscore=" + midscore + ", finalscore=" + finalscore + ", totalscore=" + totalscore
				+ ", grade=" + grade + ", atndnbelow=" + atndnbelow + "]";
	}
	
	
}
