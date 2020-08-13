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

@WebServlet("/insertss")
public class InsertScholarshipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertScholarshipServlet() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Scholarship ss = new Scholarship();
		String ssname = request.getParameter("ssname");

		System.out.println(ssname);
		System.out.println(request.getParameter("benefitcon"));
		System.out.println(request.getParameter("value"));
		
		ss.setSsname(ssname);
		ss.setBenefitcon(request.getParameter("benefitcon"));
		ss.setValue(Integer.parseInt(request.getParameter("value")));
		
		
		
		int result = new ScholarshipService().insertScholarship(ss);
		RequestDispatcher view = null;
		if(result > 0) {
			view = request.getRequestDispatcher("selectss");
			request.setAttribute("message", ssname + "추가에 성공하였습니다");
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", ssname + "추가에 실패하였습니다");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
