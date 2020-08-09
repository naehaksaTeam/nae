package notice.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeTop3Servlet
 */
@WebServlet("/ntop5")
public class NoticeTop5Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeTop5Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ajax 통신으로 최근 공지글 3개 조회 반환 처리용 컨트롤러
				ArrayList<Notice> list = new NoticeService().selectTop5();
				
				// 전송용 json 객체 만들기
				JSONObject sendJSON = new JSONObject();
				// list 옮겨 담을 json 배열 객체 만들기
				JSONArray jarr = new JSONArray();
				
				// list에서 notice 하나씩 꺼내서 jarr에 복사 저장
				for (Notice notice : list) {
					// notice 저장용 json 객체 만들기
					JSONObject job = new JSONObject();
					job.put("no", notice.getNoticeNo());
					job.put("title", URLEncoder.encode(notice.getNoticeTitle(), "utf-8"));
					job.put("readcount", notice.getNoticeReadCount());
					
					jarr.add(job);
				}
				
				// 전송용 객체에 배열 저장하기
				sendJSON.put("list", jarr);
				
				// 요청자에게 응답 내보내기
				response.setContentType("application/jso; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.write(sendJSON.toJSONString());
				out.flush();
				out.close();
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
