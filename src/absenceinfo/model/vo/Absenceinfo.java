package absenceinfo.model.vo;

import java.io.Serializable;

public class Absenceinfo implements Serializable{
	private final long serialVersionUID = 6879L;
	private String info;
	
	public Absenceinfo() {}
	
	public Absenceinfo(String info) {
		this.info = info;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	@Override
	public String toString() {
		return "Absenceinfo [info=" + info + "]";
	}
	
	
	
}
