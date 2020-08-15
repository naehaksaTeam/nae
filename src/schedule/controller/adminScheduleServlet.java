package schedule.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import schedule.model.service.ScheduleService;
import schedule.model.vo.Schedule;


@WebServlet("/adsch")
public class adminScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public adminScheduleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage = 1;
		if(request.getParameter("page") !=null) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		int limit = 10;
		
		 ScheduleService sservice = new ScheduleService();
		 
		 int listCount = sservice.getListCount();
		 ArrayList<Schedule> list = sservice.selectList(currentPage, limit);
		 
		   int maxPage = (int)((double)listCount / limit + 0.9);
		   int startPage = (((int)((double)currentPage / limit + 0.9)) -1)* limit +1;
		   int endPage = startPage + limit -1;
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			RequestDispatcher view = null;
			if(list.size() > 0) {
				view = request.getRequestDispatcher("views/schedule/newschedule.jsp");
				request.setAttribute("list", list);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("maxPage", maxPage);
				request.setAttribute("startPage", startPage);
				request.setAttribute("endPage", endPage);
				request.setAttribute("listCount", listCount);
				
				view.forward(request, response);
				
			}
	}
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}









