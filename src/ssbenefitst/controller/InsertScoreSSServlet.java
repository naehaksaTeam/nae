package ssbenefitst.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import scholarship.model.service.ScholarshipService;
import scholarship.model.vo.Scholarship;
import ssbenefitst.model.service.SsbenefitstService;

@WebServlet("/insertscoress")
public class InsertScoreSSServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertScoreSSServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int term = Integer.parseInt(request.getParameter("term1"));

		String ssname = request.getParameter("ssname1");
		
		Scholarship ss = new ScholarshipService().selectOneScholarship(ssname);
		
		SsbenefitstService stservice = new SsbenefitstService();
		ArrayList<String> studentlist = stservice.selectRank(term, ss.getStartrank(), ss.getEndrank());
		int plusterm = stservice.termPlus(term);
		System.out.println(studentlist);
		
		int result = stservice.insertScoreRank(plusterm, studentlist, ssname);
		PrintWriter out = response.getWriter();	
		RequestDispatcher view = null;
		if (result > 0) {
			out.print("<script>");
			out.print("alert('성적장학금 수혜학생 입력이 완료되었습니다.');");
			out.print("location.href = 'selectbeneall'");
			out.print("</script>");
			out.close();
		}else {
			out.print("<script>");
			out.print("alert('성적장학금 수혜학생 입력에 실패하였습니다.');");
			out.print("location.href = 'selectbeneall'");
			out.print("</script>");
			out.close();
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
