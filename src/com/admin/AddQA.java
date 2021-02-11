package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;

/**
 * Servlet implementation class AddQA
 */
@WebServlet("/AddQA")
public class AddQA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		PrintWriter pw=response.getWriter();
		String uname,sub,que,ans,opt1,opt2,opt3,opt4;
		
		uname=(String)session.getAttribute("name");
		sub=request.getParameter("txt_sub");
		que=request.getParameter("txt_Que");
		ans=request.getParameter("txt_Ans");
		opt1=request.getParameter("txt_Opt1");
		opt2=request.getParameter("txt_Opt2");
		opt3=request.getParameter("txt_Opt3");
		opt4=request.getParameter("txt_Opt4");
		
		try {
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			PreparedStatement ps=con.prepareStatement("insert into que_ans_table(user,subject,question,answer,option1,option2,option3,option4) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, sub);
			ps.setString(3, que);
			ps.setString(4, ans);
			ps.setString(5, opt1);
			ps.setString(6, opt2);
			ps.setString(7, opt3);
			ps.setString(8, opt4);
			ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("AddQA.jsp");
			rd.include(request, response);
		
		
	}

}
