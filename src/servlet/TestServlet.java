package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse resonse) {
        int count = 0;
        String grade = null;
        String a1 = request.getParameter("first");
        String a2 = request.getParameter("second");
        String a3 = request.getParameter("third");
        String a4 = request.getParameter("fourth");
        if (a1.equals("A")) count += 25;
        if (a2.equals("B")) count += 25;
        if (a3.equals("A")) count += 25;
        if (a4.equals("B")) count += 25;
        switch (count) {
            case 25:
                grade="D";
                break;
            case 50:
                grade="C";
                break;
            case 75:
                grade="B";
                break;
            case 100:
                grade="A";
                break;
            default:
                grade="D";
                break;
        }
        request.setAttribute("count",count);
        request.setAttribute("grade",grade);
        RequestDispatcher rd=request.getRequestDispatcher("result.jsp");
        try {
            rd.forward(request,resonse);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        doGet(request, response);
    }

}
