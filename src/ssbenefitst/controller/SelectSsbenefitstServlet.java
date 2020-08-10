package ssbenefitst.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import scholarship.model.vo.Scholarship;
import ssbenefitst.model.service.SsbenefitstService;
import ssbenefitst.model.vo.Ssbenefitst;

@WebServlet("/selectbenest")
public class SelectSsbenefitstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SelectSsbenefitstServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentid = (String)request.getAttribute("studentid");
		ArrayList<Scholarship> listss = (ArrayList<Scholarship>)request.getAttribute("list");
		ArrayList<Ssbenefitst> listssst = new SsbenefitstService().selectPrivateSsst(studentid);
		RequestDispatcher view = null;

			view = request.getRequestDispatcher("views/scholarship/selectScholarView.jsp");
			request.setAttribute("listss", listss);
			request.setAttribute("listssst", listssst);
			view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
