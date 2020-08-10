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
import member.model.service.MemberService;
import member.model.vo.Member;

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
	
				request.setCharacterEncoding("utf-8");
				
				Atndn atndn = new Atndn();

				atndn.setSid(String.join(",", request.getParameterValues("sid")));		
				atndn.setSname(String.join(",", request.getParameterValues("sname"));	
				atndn.setMajorname(String.join(",", request.getParameterValues("majorname"));
		
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
