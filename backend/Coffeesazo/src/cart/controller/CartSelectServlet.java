package cart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.coffeesazo.member.model.vo.MemberVo;

import cart.model.service.CartService;
import cart.model.vo.Cart;

/**
 * Servlet implementation class CartSelectServlet
 */
@WebServlet("/cart")
public class CartSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public CartSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//요청사항 모든 텍스트 등등 을 utf-8인코딩해서 가져와라
		response.setCharacterEncoding("utf-8");
		
		
		HttpSession session = request.getSession(); //나 세션을 가지고올래
		String memberid = ((String)session.getAttribute("id"));
		//뇌절오는부분 -- 50%이해햇다 아주칭찬해
		ArrayList<Cart> pList = new CartService().selectCartList(memberid);
	    
		if(!pList.isEmpty()) {
			request.setAttribute("pList", pList);
			RequestDispatcher view = request.getRequestDispatcher("view/order/shopping_cart.jsp");
			view.forward(request, response);
			System.out.println(pList);
		} else {
			response.sendRedirect("");
		}
	    
		
		
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
