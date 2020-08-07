package scholarship.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import scholarship.model.vo.Scholarship;

/**
 * Servlet implementation class InsertScholarshipServlet
 */
@WebServlet("/insertss")
public class InsertScholarshipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertScholarshipServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Scholarship ss = new Scholarship();
		
		ss.setSsname(request.getParameter("ssname"));
		ss.setBenefitcon(request.getParameter("benefitcon"));
		ss.setValue(Integer.parseInt(request.getParameter("value")));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
