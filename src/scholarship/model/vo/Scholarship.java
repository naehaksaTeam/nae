package scholarship.model.vo;

import java.io.Serializable;

public class Scholarship implements Serializable{
	private final long serialVersionUID = 6661L;
	private String ssname;
	private String benefitcon;
	private int value;
	private int startrank;
	private int endrank;

	public Scholarship() {
		super();
	}

	public Scholarship(String ssname, String benefitcon, int value, int startrank, int endrank) {
		super();
		this.ssname = ssname;
		this.benefitcon = benefitcon;
		this.value = value;
		this.startrank = startrank;
		this.endrank = endrank;
	}

	public String getSsname() {
		return ssname;
	}

	public void setSsname(String ssname) {
		this.ssname = ssname;
	}

	public String getBenefitcon() {
		return benefitcon;
	}

	public void setBenefitcon(String benefitcon) {
		this.benefitcon = benefitcon;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public int getStartrank() {
		return startrank;
	}

	public void setStartrank(int startrank) {
		this.startrank = startrank;
	}

	public int getEndrank() {
		return endrank;
	}

	public void setEndrank(int endrank) {
		this.endrank = endrank;
	}

	@Override
	public String toString() {
		return "Scholarship [ssname=" + ssname + ", benefitcon=" + benefitcon + ", value=" + value + ", startrank="
				+ startrank + ", endrank=" + endrank + "]";
	}

	
	
}
