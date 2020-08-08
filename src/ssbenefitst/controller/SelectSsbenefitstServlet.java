package ssbenefitst.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ssbenefitst.model.service.SsbenefitstService;
import ssbenefitst.model.vo.Ssbenefitst;

@WebServlet("/selectbenest")
public class SelectSsbenefitstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SelectSsbenefitstServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentid = request.getParameter("studentid");
		System.out.println(studentid);
		ArrayList<Ssbenefitst> list = new SsbenefitstService().selectPrivateSsst(studentid);
		
		RequestDispatcher view = null;
		if(list != null) {
			view = request.getRequestDispatcher("views/scholarship/selectScholarView.jsp");
			request.setAttribute("list", list);
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
