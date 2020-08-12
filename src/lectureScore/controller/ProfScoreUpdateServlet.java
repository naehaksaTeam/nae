package lectureScore.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import lectureScore.model.service.LectureScoreService;
import lectureScore.model.vo.LectureScore;
import notice.model.vo.Notice;

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
		ArrayList<LectureScore> list = new LectureScoreService().ScoreUpdate();
		
		JSONObject sendJSON = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(LectureScore lscore : list) {
			JSONObject job = new JSONObject();
			job.put("atndnScore", lscore.getAtndnscore()); //꺼내서 no라는 이름으러로 넣어줌
			job.put("title", URLEncoder.encode(lscore.getNoticeTitle(), "utf-8")); //깨진한글 인코딩
			job.put("date", lscore.getNoticeDate().toString());
			jarr.add(job); 
		}
		
		sendJSON.put("list", jarr);
		
		response.setContentType("application/json; charset=utf-8"); //내보내는 콘텐츠 타입은 이거다
		PrintWriter out = response.getWriter();
		out.write(sendJSON.toJSONString()); //JSON 문자열로 바꿔서 출력
		
		out.flush();
		out.close();
		
		/*LectureScore lscore = new LectureScore();
		
		lscore.setReceptionno(request.getParameter("categoryname"));
		lscore.setLcode(request.getParameter("sid"));
		lscore.setLname(request.getParameter("sname"));
		lscore.setCategory(request.getParameter("retake"));
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
		}*/


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
