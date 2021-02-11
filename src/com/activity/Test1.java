package com.activity;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;

/**
 * Servlet implementation class Test1
 */
@WebServlet("/Test1")
public class Test1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test1() {
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
		
		String Aque1,Aque2,Aque3,Aque4,Aque5,Aans1,Aans2,Aans3,Aans4,Aans5;
		Aque1=request.getParameter("Aque1");
		Aque2=request.getParameter("Aque2");
		Aque3=request.getParameter("Aque3");
		Aque4=request.getParameter("Aque4");
		Aque5=request.getParameter("Aque5");
		Aans1=request.getParameter("Aans1");
		Aans2=request.getParameter("Aans2");
		Aans3=request.getParameter("Aans3");
		Aans4=request.getParameter("Aans4");
		Aans5=request.getParameter("Aans5");
		
		System.out.println("QuestionId 1===>"+Aque1);
		System.out.println("Answer 1===>"+Aans1);
		System.out.println("QuestionId 2===>"+Aque2);
		System.out.println("Answer 2===>"+Aans2);
		System.out.println("QuestionId 3===>"+Aque3);
		System.out.println("Answer 3===>"+Aans3);
		System.out.println("QuestionId 4===>"+Aque4);
		System.out.println("Answer 4===>"+Aans4);
		System.out.println("QuestionId 5===>"+Aque5);
		System.out.println("Answer 5===>"+Aans5);
		
		int count1=0;
		count1=CheckAnswerSection1(Aque1,Aans1,count1);	
		count1=CheckAnswerSection1(Aque2,Aans2,count1);	
		count1=CheckAnswerSection1(Aque3,Aans3,count1);	
		count1=CheckAnswerSection1(Aque4,Aans4,count1);	
		count1=CheckAnswerSection1(Aque5,Aans5, count1);	
		
		System.out.println("Apptitude Score===>"+count1);
		
		System.out.println("================================================================================================================");
		
		String Eque1,Eque2,Eque3,Eque4,Eque5,Eans1,Eans2,Eans3,Eans4,Eans5;
		Eque1=request.getParameter("Eque1");
		Eque2=request.getParameter("Eque2");
		Eque3=request.getParameter("Eque3");
		Eque4=request.getParameter("Eque4");
		Eque5=request.getParameter("Eque5");
		Eans1=request.getParameter("Eans1");
		Eans2=request.getParameter("Eans2");
		Eans3=request.getParameter("Eans3");
		Eans4=request.getParameter("Eans4");
		Eans5=request.getParameter("Eans5");
		
		System.out.println("QuestionId 1===>"+Eque1);
		System.out.println("Answer 1===>"+Eans1);
		System.out.println("QuestionId 2===>"+Eque2);
		System.out.println("Answer 2===>"+Eans2);
		System.out.println("QuestionId 3===>"+Eque3);
		System.out.println("Answer 3===>"+Eans3);
		System.out.println("QuestionId 4===>"+Eque4);
		System.out.println("Answer 4===>"+Eans4);
		System.out.println("QuestionId 5===>"+Eque5);
		System.out.println("Answer 5===>"+Eans5);
		
		int count2=0;
		count2=CheckAnswerSection1(Eque1,Eans1,count2);	
		count2=CheckAnswerSection1(Eque2,Eans2,count2);	
		count2=CheckAnswerSection1(Eque3,Eans3,count2);	
		count2=CheckAnswerSection1(Eque4,Eans4,count2);	
		count2=CheckAnswerSection1(Eque5,Eans5,count2);	
		
		System.out.println("English Score===>"+count2);
		
		System.out.println("================================================================================================================");
		
		String Lque1,Lque2,Lque3,Lque4,Lque5,Lans1,Lans2,Lans3,Lans4,Lans5;
		Lque1=request.getParameter("Lque1");
		Lque2=request.getParameter("Lque2");
		Lque3=request.getParameter("Lque3");
		Lque4=request.getParameter("Lque4");
		Lque5=request.getParameter("Lque5");
		Lans1=request.getParameter("Lans1");
		Lans2=request.getParameter("Lans2");
		Lans3=request.getParameter("Lans3");
		Lans4=request.getParameter("Lans4");
		Lans5=request.getParameter("Lans5");
		
		System.out.println("QuestionId 1===>"+Lque1);
		System.out.println("Answer 1===>"+Lans1);
		System.out.println("QuestionId 2===>"+Lque2);
		System.out.println("Answer 2===>"+Lans2);
		System.out.println("QuestionId 3===>"+Lque3);
		System.out.println("Answer 3===>"+Lans3);
		System.out.println("QuestionId 4===>"+Lque4);
		System.out.println("Answer 4===>"+Lans4);
		System.out.println("QuestionId 5===>"+Lque5);
		System.out.println("Answer 5===>"+Lans5);
		
		int count3=0;
		count3=CheckAnswerSection1(Lque1,Lans1,count3);	
		count3=CheckAnswerSection1(Lque2,Lans2,count3);	
		count3=CheckAnswerSection1(Lque3,Lans3,count3);	
		count3=CheckAnswerSection1(Lque4,Lans4,count3);	
		count3=CheckAnswerSection1(Lque5,Lans5, count3);	
		
		System.out.println("Logical Score===>"+count3);
		
		System.out.println("================================================================================================================");
		
		String Sque1,Sque2,Sque3,Sque4,Sque5,Sans1,Sans2,Sans3,Sans4,Sans5;
		Sque1=request.getParameter("Sque1");
		Sque2=request.getParameter("Sque2");
		Sque3=request.getParameter("Sque3");
		Sque4=request.getParameter("Sque4");
		Sque5=request.getParameter("Sque5");
		Sans1=request.getParameter("Sans1");
		Sans2=request.getParameter("Sans2");
		Sans3=request.getParameter("Sans3");
		Sans4=request.getParameter("Sans4");
		Sans5=request.getParameter("Sans5");
		
		System.out.println("QuestionId 1===>"+Sque1);
		System.out.println("Answer 1===>"+Sans1);
		System.out.println("QuestionId 2===>"+Sque2);
		System.out.println("Answer 2===>"+Sans2);
		System.out.println("QuestionId 3===>"+Sque3);
		System.out.println("Answer 3===>"+Sans3);
		System.out.println("QuestionId 4===>"+Sque4);
		System.out.println("Answer 4===>"+Sans4);
		System.out.println("QuestionId 5===>"+Sque5);
		System.out.println("Answer 5===>"+Sans5);
		
		int count4=0;
		count4=CheckAnswerSection1(Sque1,Sans1,count4);	
		count4=CheckAnswerSection1(Sque2,Sans2,count4);	
		count4=CheckAnswerSection1(Sque3,Sans3,count4);	
		count4=CheckAnswerSection1(Sque4,Sans4,count4);	
		count4=CheckAnswerSection1(Sque5,Sans5, count4);	
		
		System.out.println("Social Science Score===>"+count4);
		
		System.out.println("================================================================================================================");
		
		String Mque1,Mque2,Mque3,Mque4,Mque5,Mans1,Mans2,Mans3,Mans4,Mans5;
		Mque1=request.getParameter("Mque1");
		Mque2=request.getParameter("Mque2");
		Mque3=request.getParameter("Mque3");
		Mque4=request.getParameter("Mque4");
		Mque5=request.getParameter("Mque5");
		Mans1=request.getParameter("Mans1");
		Mans2=request.getParameter("Mans2");
		Mans3=request.getParameter("Mans3");
		Mans4=request.getParameter("Mans4");
		Mans5=request.getParameter("Mans5");
		
		System.out.println("QuestionId 1===>"+Mque1);
		System.out.println("Answer 1===>"+Mans1);
		System.out.println("QuestionId 2===>"+Mque2);
		System.out.println("Answer 2===>"+Mans2);
		System.out.println("QuestionId 3===>"+Mque3);
		System.out.println("Answer 3===>"+Mans3);
		System.out.println("QuestionId 4===>"+Mque4);
		System.out.println("Answer 4===>"+Mans4);
		System.out.println("QuestionId 5===>"+Mque5);
		System.out.println("Answer 5===>"+Mans5);
		
		int count5=0;
		count5=CheckAnswerSection1(Mque1,Mans1,count5);	
		count5=CheckAnswerSection1(Mque2,Mans2,count5);	
		count5=CheckAnswerSection1(Mque3,Mans3,count5);	
		count5=CheckAnswerSection1(Mque4,Mans4,count5);	
		count5=CheckAnswerSection1(Mque5,Mans5, count5);	

		System.out.println("Math Score===>"+count5);
		
		System.out.println("================================================================================================================");

		int totalcnt=count1+count2+count3+count4+count5;
		int total=25;
		int scr=(totalcnt*100)/total;
	String usr=(String)session.getAttribute("name");
		try {
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			st.executeUpdate("insert into scoretable(User,Aptitude,English,LogicalReasoning,SocialScience,Math,Obtainedmarks,Totalmarks,Score) values('"+usr+"','"+count1+"','"+count2+"','"+count3+"','"+count4+"','"+count5+"','"+totalcnt+"','"+total+"','"+scr+"')");
		
			pw.println("<script> alert(' Test1 Submitted Successfully');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/ResultTest1.jsp");
					rd.include(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	
	}

	private int CheckAnswerSection1(String aque1, String aans1, int count1) {
		// TODO Auto-generated method stub
		int count =count1;
		try {
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from que_ans_table where id="+aque1+" and answer='"+aans1+"'");
			if (rs.next()) {
				count++;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return count;
	}

}
