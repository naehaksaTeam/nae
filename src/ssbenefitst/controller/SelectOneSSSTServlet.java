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

/**
 * Servlet implementation class SelectOneSSSTServlet
 */
@WebServlet("/selectonessst")
public class SelectOneSSSTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneSSSTServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentid = request.getParameter("studentid");
		int benefitterm = Integer.parseInt(request.getParameter("benefitterm"));
		
		Ssbenefitst ssst = new SsbenefitstService().selectOneSsbenefitst(benefitterm, studentid);
		
		RequestDispatcher view = null;
		if(ssst != null) {
			view = request.getRequestDispatcher("views/ssbenefitst/ssbenefitstManagementView.jsp");
			request.setAttribute("ssst", ssst);
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "요청하신 검색결과가 없거나 검색에 실패하였습니다.");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
