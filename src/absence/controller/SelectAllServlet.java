package absence.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absence.model.service.AbsenceService;
import absence.model.vo.Absence;

@WebServlet("/selectaball")
public class SelectAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SelectAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Absence> list = new AbsenceService().selectAbsence();
		
		RequestDispatcher view = null;
		if(list != null) {
			view = request.getRequestDispatcher("views/absence/absenceManagementView.jsp");
			request.setAttribute("list", list);
			view.forward(request, response);
		}else{
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "휴학, 복학 신청 내역이 없거나 조회에 실패하였습니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}