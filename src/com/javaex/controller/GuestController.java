package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.GuestDao;
import com.javaex.vo.GuestVo;


@WebServlet("/gbc") //가상의 주소값
public class GuestController extends HttpServlet {
       
    public GuestController() { } //기본생성자

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//컨트롤러 테스트
		System.out.println("컨트롤러 테스트");
		
		//파라미터 action값을 임의로 만듬 (action값 이 어떤건지에 따라서  다른 화면이 나오도록)
	   String action = request.getParameter("action");
	   System.out.println(action); // 초기값은 null로 나옴 
	   
	   
	   if("list".equals(action) ) { //addList 출력관련 , action값으로 list가 들어가면 출력 
		   
		   //리스트 출력처리
		   GuestDao guestDao = new GuestDao();
		   List<GuestVo> guestList = guestDao.getGuestList();
		   
		   
		   //데이터 전달 (리퀘스트)
		   request.setAttribute("gList", guestList);
		   
		   //jsp에 포워드 (서블릿에서jsp파일에 포워드) , getRequestDispatcher("포워드 경로");
		   RequestDispatcher rd = request.getRequestDispatcher("/addList.jsp");
		   rd.forward(request, response);
		   
		   
	   }
	   
	   
	   
	   
	   
	   
	   
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
	}

}
