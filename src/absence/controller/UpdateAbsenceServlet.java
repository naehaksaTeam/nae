package absence.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absence.model.service.AbsenceService;
import absence.model.vo.Absence;

@WebServlet("/updateab")
public class UpdateAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestid = request.getParameter("requestid");
		System.out.println("requestid"+requestid);
		String ab = requestid.substring(0, 1);
		AbsenceService aservice = new AbsenceService();
		Absence a = aservice.selectOneAbsence(requestid);

		RequestDispatcher view = null;
		if (a.getApproval().equals("N")) {
			int result = aservice.updateYAbsence(requestid);
			if(result > 0) { //승인성공하면 학생테이블가서 휴학여부 바꾸어주고 휴학 카운트 +1

				int re = aservice.studentAbsenceChange(a.getStudentid());
				if(re > 0){
					if(ab.equals("a")) { // 휴학신청일때
						int r = aservice.studentCountPlus(a.getStudentid());
						if(r > 0) {
							response.sendRedirect("selectaball");
						}else {
							view = request.getRequestDispatcher("views/common/error.jsp");
							request.setAttribute("message", "학생정보 변경에 실패해였습니다.");
							view.forward(request, response);
						}
					}else { //복학신청일때
						response.sendRedirect("selectaball");
					}
				}else {
					view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", "학생정보 변경에 실패해였습니다.");
					view.forward(request, response);
				}
			}else {
				view = request.getRequestDispatcher("views/common/error.jsp");
				request.setAttribute("message", "승인에 실패해였습니다.");
				view.forward(request, response);
			}
		}else {	//approval이 Y면 되돌려보낸다
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "이미 승인 완료된 신청입니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
