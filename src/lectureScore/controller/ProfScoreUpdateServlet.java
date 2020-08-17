package lectureScore.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import lectureScore.model.service.LectureScoreService;
import lectureScore.model.vo.LectureScore;
/**
 * Servlet implementation class ScoreUpdateServlet
 */
@WebServlet("/scupdate.p")
public class ProfScoreUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 43428L;
	private Object ServletRequestUtils;
	private JSONArray jarr;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfScoreUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		JSONArray jarr = new JSONArray(request.getParameter("jsondata"));
		
		int result = 0;
		
		for(int i=0; i < jarr.length();i++) {
			JSONObject jobj = jarr.getJSONObject(i);
			LectureScore lscore = new LectureScore();
			
			lscore.setReceptionno(jobj.getString("receptionno"));
			lscore.setAtndnscore(Integer.parseInt(jobj.getString("atndnScore")));
			lscore.setMidscore(Integer.parseInt(jobj.getString("midScore")));
			lscore.setFinalscore(Integer.parseInt(jobj.getString("finalScore")));
			lscore.setGrade(jobj.getString("grade"));
			
			System.out.println("입력시작");
			result = new LectureScoreService().updatelScore(lscore);
		}	
	
		RequestDispatcher view = null;
		if(result > 0) { 
			view = request.getRequestDispatcher("views/lectureScore/profscoreEdit_m_lecture.jsp");
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "성적입력에 실패했습니다.");
			view.forward(request, response);
		}
<<<<<<< HEAD
		sendJSON.put("list", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.write(sendJSON.toJSONString()); 
		out.flush();
		out.close();
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
=======
		  
>>>>>>> d413755b7e51d2f80e713f43916edaf3566c81d3
	}

}
