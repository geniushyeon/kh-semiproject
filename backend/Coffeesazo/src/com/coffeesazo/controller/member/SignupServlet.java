package com.coffeesazo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coffeesazo.model.member.MemberDao;
import com.coffeesazo.model.member.MemberVo;

/**
 * Servlet implementation class MemberServlet
 */

// 회원가입 처리 서블릿 
@WebServlet("/signup.do")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String url = "index.jsp?inc=./signup/";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String memberName = request.getParameter("memberName");
		String memberEmail = request.getParameter("memberEmail");
		String memberPhone = request.getParameter("memberPhone");
		String memberZipcode = request.getParameter("memberZipcode");
		String memberAddress = request.getParameter("memberAddress");
		
		MemberVo memberVo = new MemberVo();
		memberVo.setMemberId(memberId);
		memberVo.setMemberPwd(memberPwd);
		memberVo.setMemberName(memberName);
		memberVo.setMemberEmail(memberEmail);
		memberVo.setMemberPhone(memberPhone);
		memberVo.setMemberZipcode(memberZipcode);
		memberVo.setMemberAddress(memberAddress);
		
		int affectedRows = new MemberDao().signup(memberVo);
		RequestDispatcher rd = null;

		if(affectedRows > 0) {
			rd = request.getRequestDispatcher(url + "signup_complete.jsp");
			request.setAttribute("memberVo", memberVo);
			rd.forward(request, response);
		}
	}

}
