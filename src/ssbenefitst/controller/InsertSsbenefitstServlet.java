package ssbenefitst.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ssbenefitst.model.service.SsbenefitstService;
import ssbenefitst.model.vo.Ssbenefitst;

@WebServlet("/insertbenest")
public class InsertSsbenefitstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertSsbenefitstServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Ssbenefitst ssst = new Ssbenefitst(); //ssst에 값 셋팅해서 전송하면 됨.
		
		ssst.setBenefitterm(Integer.parseInt(request.getParameter("benefitterm")));
		ssst.setStudentid(request.getParameter("studentid"));
		ssst.setSsname(request.getParameter("ssname"));
		
		int result = new SsbenefitstService().insertSsbenefitst(ssst);
		
		if(result > 0) {
			response.sendRedirect("views/ssbenefitst/ssbenefitstManagementView.jsp");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "장학금수혜학생 정보추가에 실패하였습니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
