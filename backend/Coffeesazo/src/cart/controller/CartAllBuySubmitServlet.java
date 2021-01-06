package cart.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cart.model.service.CartService;
import cart.model.vo.Cart;
import cart.model.vo.OrderDtailVo;
import cart.model.vo.OrderIndex;
import cart.model.vo.OrderVo;

/**
 * Servlet implementation class CartAllButSubmitServlet
 */
@WebServlet("/allbuy_submit")
public class CartAllBuySubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartAllBuySubmitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//요청사항 모든 텍스트 등등 을 utf-8인코딩해서 가져와라
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); //나 세션을 가지고올래
		
		String memberid = ((String)session.getAttribute("id"));
		String[] orderAddressArray = request.getParameterValues("address");
		String orderAddress = "";

		for(int i=0; i<orderAddressArray.length; i++) {
			orderAddress += orderAddressArray[i] + "+";
		}
	    String orderPayment = request.getParameter("gener");
		String orderZipcode = request.getParameter("postcode");
		String orederText = request.getParameter("delivery-rq");
		String orderReceiver = request.getParameter("recipient-rq");
		String orderReceiverPhone = request.getParameter("number-rq");
		String orderTotalPrice = request.getParameter("allresult");
		String orderPhone = request.getParameter("number");
		
		OrderVo ordervo = new OrderVo();
		ordervo.setMemberId(memberid);
		ordervo.setOrderAddress(orderAddress);
		
		ordervo.setOrderPayment(orderPayment);
		ordervo.setOrderReceiver(orderReceiver);
		ordervo.setOrderReceiverPhone(orderReceiverPhone);
		ordervo.setOrderTotalPrice(orderTotalPrice);
		ordervo.setOrderZipcode(orderZipcode);
		ordervo.setOrederText(orederText);
		ordervo.setOrderPhone(orderPhone);
		int submit = new CartService().OrderAllSubmit(ordervo);
		//주문테이블식별자를 가지고오기위한 로직 뇌절온다....
		ArrayList<OrderIndex> index = new CartService().FindOrderIndex(memberid);
		OrderIndex lastElement = null;
		if(!index.isEmpty()) {
			lastElement = index.get(index.size() - 1);
		}
		
			
		
		OrderDtailVo orderdtailvo = new OrderDtailVo();
		String[] allproduct = request.getParameterValues("index");
		String[] count = request.getParameterValues("count");
		
		int[] ap = new int[allproduct.length];
		int[] apc = new int[count.length];
		
		for(int i=0; i<ap.length ; i++) {
			ap[i] = Integer.parseInt(allproduct[i]);
		}
		for(int i=0; i<apc.length ; i++) {
			apc[i] = Integer.parseInt(count[i]);
		}
		int submit2 = new CartService().OrderAllbuydetail(ap,apc,lastElement);
		System.out.println("인서트횟수" + submit2);

		int result = new CartService().CartAllDelete(memberid);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
