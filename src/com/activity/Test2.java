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
 * Servlet implementation class Test2
 */
@WebServlet("/Test2")
public class Test2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test2() {
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
		String subID=request.getParameter("subid");
		String Aque1,Aque2,Aque3,Aque4,Aque5,Aque6,Aque7,Aque8,Aque9,Aque10,Aque11,Aque12,Aque13,Aque14,Aque15,Aque16,Aque17,Aque18,Aque19,Aque20,Aans1,Aans2,Aans3,Aans4,Aans5,Aans6,Aans7,Aans8,Aans9,Aans10,Aans11,Aans12,Aans13,Aans14,Aans15,Aans16,Aans17,Aans18,Aans19,Aans20;
		
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
		
		Aque6=request.getParameter("Aque6");
		Aque7=request.getParameter("Aque7");
		Aque8=request.getParameter("Aque8");
		Aque9=request.getParameter("Aque9");
		Aque10=request.getParameter("Aque10");
		Aans6=request.getParameter("Aans6");
		Aans7=request.getParameter("Aans7");
		Aans8=request.getParameter("Aans8");
		Aans9=request.getParameter("Aans9");
		Aans10=request.getParameter("Aans10");
		
		Aque11=request.getParameter("Aque11");
		Aque12=request.getParameter("Aque12");
		Aque13=request.getParameter("Aque13");
		Aque14=request.getParameter("Aque14");
		Aque15=request.getParameter("Aque15");
		Aans11=request.getParameter("Aans11");
		Aans12=request.getParameter("Aans12");
		Aans13=request.getParameter("Aans13");
		Aans14=request.getParameter("Aans14");
		Aans15=request.getParameter("Aans15");
		
		Aque16=request.getParameter("Aque16");
		Aque17=request.getParameter("Aque17");
		Aque18=request.getParameter("Aque18");
		Aque19=request.getParameter("Aque19");
		Aque20=request.getParameter("Aque20");
		Aans16=request.getParameter("Aans16");
		Aans17=request.getParameter("Aans17");
		Aans18=request.getParameter("Aans18");
		Aans19=request.getParameter("Aans19");
		Aans20=request.getParameter("Aans20");
		
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
		count1=CheckAnswerSection1(Aque6,Aans6,count1);	
		count1=CheckAnswerSection1(Aque7,Aans7,count1);	
		count1=CheckAnswerSection1(Aque8,Aans8,count1);	
		count1=CheckAnswerSection1(Aque9,Aans9,count1);	
		count1=CheckAnswerSection1(Aque10,Aans10, count1);
		count1=CheckAnswerSection1(Aque11,Aans11,count1);	
		count1=CheckAnswerSection1(Aque12,Aans12,count1);	
		count1=CheckAnswerSection1(Aque13,Aans13,count1);	
		count1=CheckAnswerSection1(Aque14,Aans14,count1);	
		count1=CheckAnswerSection1(Aque15,Aans15, count1);
		count1=CheckAnswerSection1(Aque16,Aans16,count1);	
		count1=CheckAnswerSection1(Aque17,Aans17,count1);	
		count1=CheckAnswerSection1(Aque18,Aans18,count1);	
		count1=CheckAnswerSection1(Aque19,Aans19,count1);	
		count1=CheckAnswerSection1(Aque20,Aans20, count1);
		System.out.println("Apptitude Score===>"+count1);
		
		System.out.println("================================================================================================================");
	
		int totalcnt=count1;
		int total=25;
		int scr=(totalcnt*100)/total;
	String usr=(String)session.getAttribute("name");
		try {
			Dbconn db=new Dbconn();
			Connection con=db.conn();
			Statement st=con.createStatement();
			st.executeUpdate("insert into scoretable1(User,subject,Obtainedmarks,Totalmarks,Score) values('"+usr+"','"+subID+"','"+totalcnt+"','"+total+"','"+scr+"')");
		
			pw.println("<script> alert(' Test2 Submitted Successfully');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/ResultTest2.jsp");
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
