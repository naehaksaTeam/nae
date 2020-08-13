package common.wrapper;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class CryptoPasswordWrapper extends HttpServletRequestWrapper {
	public CryptoPasswordWrapper(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String name) {

		String value = null;
		// 전송은 userpwd의 값만 암호화 처리
		if (name != null && name.equals("userpwd")) {
			value = getSha512(super.getParameter(name));
		} else {
			// userpwd가 아닌 값들은 그대로 둠
			value = super.getParameter(name);

		}
		return value;
	}

	// 패스워드 암호화 처리하는 메소드
	private String getSha512(String password) {
		String cryptoPwd = null;

		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512"); // 암호화 처리할 객체를 생성함
			// 암호화 처리를 위해 문자열을 byte[]로 바꿈
			byte[] pwdValues = password.getBytes(Charset.forName("UTF-8")); // String을 byte[]로 바꿔줘야함
			// byte[]을 이용해 암호화 처리함
			md.update(pwdValues); // update는 byte[] 쓴다 -> 암호화!
			// 암호화된 byte[]을 다시 String으로 바꿈
			cryptoPwd = Base64.getEncoder().encodeToString(pwdValues);
			System.out.println("cryptoPwd : " + cryptoPwd);
		} catch (Exception e) {
			System.out.println("Sha512 Error....");
			e.printStackTrace();
		}

		return cryptoPwd;
	}
}
