package com.bysjy.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bysjy.po.Enterprise;
import com.bysjy.po.Manager;
import com.bysjy.po.Student;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
/**
 * 登录拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		// 获取请求的URL
		String url = request.getRequestURI();
		// URL:除了登录请求外，其他的URL都进行拦截控制
		if (url.contains("/login")) {
			return true;
		}
		if (url.contains("/registerEnt")) {
			return true;
		}
		// 获取Session
		HttpSession session = request.getSession();
		Student student = (Student) session.getAttribute("Student");
		Enterprise enterprise= (Enterprise) session.getAttribute("Enterprise");
		Manager manager= (Manager) session.getAttribute("Manager");
		// 判断Session中是否有用户数据，如果有，则返回true,继续向下执行
		if (student != null||enterprise!=null||manager!=null) {
			return true;
		}
		// 不符合条件的给出提示信息，并转发到登录页面
		session.setAttribute("msg", "您还没有登录，请先登录！");
		response.sendRedirect(request.getContextPath()+"/login.action");
		return false;
	}
	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}
	@Override
	public void afterCompletion(HttpServletRequest request, 
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
}
