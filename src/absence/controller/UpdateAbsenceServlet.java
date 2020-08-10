package absence.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler;

import absence.model.service.AbsenceService;

@WebServlet("/updateab")
public class UpdateAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestid = request.getParameter("requestid");
		String id = request.getParameter("id");
		String approval = request.getParameter("approval");
		String ab = requestid.substring(0, 1);
		AbsenceService aservice = new AbsenceService();
		RequestDispatcher view = null;
		if (approval.equals("N")) {
			int result = aservice.updateYAbsence(requestid);
			if(result > 0) { //승인성공하면 학생테이블가서 휴학여부 바꾸어주고 휴학 카운트 +1
				int re = aservice.studentAbsenceChange(id);
				if(re > 0){
					if(ab.equals("a")) { // 휴학신청일때
						int r = aservice.studentCountPlus(id);
						if(r > 0) {
							response.sendRedirect("views/absence/absenceManagementView.jsp");
						}else {
							view = request.getRequestDispatcher("views/common/error.jsp");
							request.setAttribute("message", "학생정보 변경에 실패해였습니다.");
							view.forward(request, response);
						}
					}else { //복학신청일때
						response.sendRedirect("views/absence/absenceManagementView.jsp");
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
