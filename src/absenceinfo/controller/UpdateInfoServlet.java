package absenceinfo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absenceinfo.model.service.AbsenceinfoService;
import absenceinfo.model.vo.Absenceinfo;

@WebServlet("/updateinfo")
public class UpdateInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateInfoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 휴학 안내사항 조회처리용 컨트롤러
		Absenceinfo info = new AbsenceinfoService().selectInfo();
		
		RequestDispatcher view = null;
		if(info !=null) {
			view = request.getRequestDispatcher("views/absence/absenceRequestView.jsp");
			request.setAttribute("info", info);
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
