package lectureScore.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import board.model.service.BoardService;
import board.model.vo.Board;
import lectureScore.model.service.LectureScoreService;
import lectureScore.model.vo.LectureScore;

/**
 * Servlet implementation class ScoreUpdateServlet
 */
@WebServlet("/scupdate.p")
public class ProfScoreUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 428L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfScoreUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//성적수정
		
		ArrayList<LectureScore> list = new LectureScoreService().updateScore();
		
		JSONObject sendJSON = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(LectureScore lscore : list) {
			JSONObject job = new JSONObject();
			
			job.put("receptionno", lscore.getReceptionno());
			job.put("category", URLEncoder.encode(lscore.getCategory()));
			job.put("sid", URLEncoder.encode(lscore.getSid()));
			job.put("sname", URLEncoder.encode(lscore.getSname()));
			job.put("majorname", URLEncoder.encode(lscore.getMajorname()));
			job.put("atndnscore", lscore.getAtndnscore());
			job.put("midscore", lscore.getMidscore());
			job.put("finalscore", lscore.getFinalscore());
			job.put("totalscore", lscore.getTotalscore());
			job.put("grade", lscore.getGrade());
			
			jarr.add(job);
		}
		sendJSON.put("list", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.write(sendJSON.toJSONString()); 
		out.flush();
		out.close();
	};
	}	
		
	/*
	 * request.setCharacterEncoding("utf-8");
	 * 
	 * 
	 * LectureScore lscore = new LectureScore();
	 * 
	 * lscore.setReceptionno(request.getParameter("receptionno"));
	 * lscore.setLcode(request.getParameter("lcode"));
	 * lscore.setLname(request.getParameter("lname"));
	 * lscore.setCategory(request.getParameter("category"));
	 * lscore.setAtndnscore(Integer.parseInt(request.getParameter("atndnscore")));
	 * lscore.setMidscore(Integer.parseInt(request.getParameter("midscore")));
	 * lscore.setFinalscore(Integer.parseInt(request.getParameter("finalscore")));
	 * lscore.setTotalscore(Integer.parseInt(request.getParameter("totalscore")));
	 * lscore.setGrade(request.getParameter("grade"));
	 * 
	 * int result = new LectureScoreService().updateScore(lscore);
	 * 
	 * if(result > 0) {
	 * response.sendRedirect("/beet/scmain.p?userid="+lscore.getPid()); }else {
	 * RequestDispatcher view =
	 * request.getRequestDispatcher("views/common/error.jsp");
	 * request.setAttribute("message", " 성적 수정 실패"); view.forward(request,
	 * response); } }
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
