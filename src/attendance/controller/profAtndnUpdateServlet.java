package attendance.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attendance.model.service.AtndnService;




/**
 * Servlet implementation class AtndnUpdateServlet
 */
@WebServlet("/atnup.p")
public class profAtndnUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 414L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profAtndnUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		String value = (request.getParameter("value").equals("○"))? "1" : ((request.getParameter("sid").equals("Ⅹ"))? "2" : "3" );
		String week = request.getParameter("getweek");
		String lcode = request.getParameter("lcode");
		
		
		int result = new AtndnService().updateOneAtndn(sid, value, week, lcode);
		RequestDispatcher view = null;
		
		if(result > 0) { //성공하면 목록으로 갈것다
	           //서블릿이 서블릿 호출할때 문법
	           response.sendRedirect("atnone.p");
	           
	        }else {
	           view = request.getRequestDispatcher("views/common/error.jsp");
	           request.setAttribute("message", "출결입력실패");
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
