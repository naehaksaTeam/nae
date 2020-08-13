package lectureScore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lectureScore.model.service.LectureScoreService;
import lectureScore.model.vo.LectureScore;

/**
 * Servlet implementation class ScoreUpdateServlet
 */
@WebServlet("/scupdate.prof")
public class test_ProfScoreUpdateServlet2 extends HttpServlet {
	private static final long serialVersionUID = 428L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test_ProfScoreUpdateServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//성적수정
		request.setCharacterEncoding("utf-8");
		
		
		LectureScore lscore = new LectureScore();
		
		lscore.setReceptionno(request.getParameter("receptionno"));
		lscore.setLcode(request.getParameter("lcode"));
		lscore.setLname(request.getParameter("lname"));
		lscore.setCategory(request.getParameter("category"));
		lscore.setAtndnscore(Integer.parseInt(request.getParameter("atndnscore")));
		lscore.setMidscore(Integer.parseInt(request.getParameter("midscore")));
		lscore.setFinalscore(Integer.parseInt(request.getParameter("finalscore")));
		lscore.setTotalscore(Integer.parseInt(request.getParameter("totalscore")));
		lscore.setGrade(request.getParameter("grade"));
		
		int result = new LectureScoreService().updateScore(lscore);
		
		if(result > 0) {
			response.sendRedirect("/beet/scmain.p?userid="+lscore.getPid());
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", " 성적 수정 실패");
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
