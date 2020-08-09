package absence.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateab")
public class UpdateAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//approval이 Y면 되돌려보낸다
		//1. approval Y로 바꾸고승인 완료되면 
		
		
		//2. a면 휴학신청: 학생테이블의 휴학여부= Y, absencecount + 1.
		//	 b면 복학신청: 학생테이블의 휴학여부= N
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
