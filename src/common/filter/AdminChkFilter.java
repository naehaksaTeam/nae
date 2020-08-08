package common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import student.model.vo.Member;

/**
 * Servlet Filter implementation class AdminChkFilter
 */
@WebFilter(".admin")
public class AdminChkFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AdminChkFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
			HttpServletRequest hrequest = (HttpServletRequest)request;
			Member loginMember = (Member)hrequest.getSession(false).getAttribute("loginMember");
			if (loginMember == null) {
				RequestDispatcher view = hrequest.getRequestDispatcher("views/common/error.jsp");
				request.setAttribute("message", "필터 : 로그인해야 이용할 수 있습니다.");
				view.forward(hrequest, response);
			} else {
				if((loginMember.getId()).contains("A")) {
					chain.doFilter(request, response);
				}else {
					RequestDispatcher view = hrequest.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", "필터 : 관리자 전용 페이지입니다.");
					view.forward(hrequest, response);
				}
			}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
