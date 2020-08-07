package category.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.model.service.CategoryService;

@WebServlet("/insertca")
public class InsertCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertCategoryServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String catename = request.getParameter("catename");
		
		int result = new CategoryService().insertCategory(catename);
		System.out.println("서블릿의 result : " + result);
		RequestDispatcher view = null;
		if(result > 0) {
			view = request.getRequestDispatcher("views/categoryTest/categoryTestView.jsp");
			request.setAttribute("message", catename +" 이 추가되었습니다.");
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", catename +" 추가에 실패하였습니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
