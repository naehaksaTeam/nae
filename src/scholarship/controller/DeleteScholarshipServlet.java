package scholarship.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import scholarship.model.service.ScholarshipService;
import scholarship.model.vo.Scholarship;

@WebServlet("/deletess")
public class DeleteScholarshipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteScholarshipServlet() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ssname = request.getParameter("ssname");

		int result = new ScholarshipService().deleteScholarship(ssname);
		
		if(result > 0) {
			response.sendRedirect("views/scholarship/scholarshipManagementView.jsp");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", ssname + "삭제에 실패하였습니다");
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
