package attendance.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attendance.model.service.AtndnService;
import attendance.model.vo.Atndn;


/**
 * Servlet implementation class AtndnUpdateServlet
 */
@WebServlet("/atnupdate")
public class AtndnUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 414L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AtndnUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Atndn atndn = new Atndn();
		
		atndn.setSid(request.getParameter(""));
		
//		  atndn.setSid(String.join(",", request.getParameterValues("sid")));
//		  atndn.setSname(String.join(",", request.getParameterValues("sname")));
//		  atndn.setMajorname(String.join(",",
//		  request.getParameterValues("majorname"))); atndn.setWeek1(String.join(",",
//		  request.getParameterValues("week1"))); atndn.setWeek2(String.join(",",
//		  request.getParameterValues("week2"))); atndn.setWeek3(String.join(",",
//		  request.getParameterValues("week3"))); atndn.setWeek4(String.join(",",
//		  request.getParameterValues("week4"))); atndn.setWeek5(String.join(",",
//		  request.getParameterValues("week5"))); atndn.setWeek6(String.join(",",
//		  request.getParameterValues("week6"))); atndn.setWeek7(String.join(",",
//		  request.getParameterValues("week7"))); atndn.setWeek8(String.join(",",
//		  request.getParameterValues("week8"))); atndn.setWeek9(String.join(",",
//		  request.getParameterValues("week9"))); atndn.setWeek10(String.join(",",
//		  request.getParameterValues("week10"))); atndn.setWeek11(String.join(",",
//		  request.getParameterValues("week11"))); atndn.setWeek12(String.join(",",
//		  request.getParameterValues("week12"))); atndn.setWeek13(String.join(",",
//		  request.getParameterValues("week13"))); atndn.setWeek14(String.join(",",
//		  request.getParameterValues("week14"))); atndn.setWeek15(String.join(",",
//		  request.getParameterValues("week15"))); atndn.setWeek16(String.join(",",
//		  request.getParameterValues("week16")));
		 
				
				int result = new AtndnService().updateAtndn(atndn);
				
				if(result > 0) {
					response.sendRedirect("/beet/atnupdate?userid=" + atndn.getSid());
				}else {
					RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", atndn.getSid()+ " 출결 수정 실패");
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
