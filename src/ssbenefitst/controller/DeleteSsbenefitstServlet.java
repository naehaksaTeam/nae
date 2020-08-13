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

@WebServlet("/deletebenest")
public class DeleteSsbenefitstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteSsbenefitstServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int benefitterm = Integer.parseInt(request.getParameter("benefitterm"));
		String studentid = request.getParameter("studentid");
		
		int result = new SsbenefitstService().deleteSsbenefitst(benefitterm, studentid);
		
		if(result > 0 ) {
			response.sendRedirect("views/ssbenefitst/ssbenefitstManagementView.jsp");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "장학금 수혜학생정보 삭제에 실패하였습니다.");
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
