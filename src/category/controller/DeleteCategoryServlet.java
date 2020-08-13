package category.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.model.service.CategoryService;

@WebServlet("/deleteca")
public class DeleteCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteCategoryServlet() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String catename = request.getParameter("catename");
		
		int result = new CategoryService().deleteCategory(catename);
		
		RequestDispatcher view = null;
		if(result >0) {
			view = request.getRequestDispatcher("selectca");
			request.setAttribute("message", catename + " 계열의 삭제가 완료되었습니다.");
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", catename + " 계열 삭제에 실패하였습니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
