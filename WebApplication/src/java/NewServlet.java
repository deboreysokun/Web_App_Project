/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sath_
 */
public class NewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
//            String name = request.getParameter("username");
//            String ip = request.getRemoteAddr();
//            System.out.println("Welcome : "+name+", IP: "+ip);
//            
//            ServletConfig sc = getServletConfig();
//            String color = sc.getInitParameter("color");
//            System.out.println(color);
            
//            ServletContext context = getServletContext();
//            String brand = context.getInitParameter("Brand");
//            System.out.println(brand);
//            Enumeration<String> headerNames = request.getHeaderNames();
//            while(headerNames.hasMoreElements()){
//                String headerName = headerNames.nextElement();
//                String values = request.getHeader(headerName);
//                System.out.println(headerName+" : "+values);
//            }
            String name = request.getParameter("username");
            String pass = request.getParameter("pass");
            if(name.trim().equals("vireak") && pass.trim().equals("123")){
//                response.sendRedirect("newjsp.jsp");
                RequestDispatcher rd =  request.getRequestDispatcher("newjsp.jsp");
//                rd.forward(request, response);
                   out.println("<h1> Success Page </h1>");
                   rd.include(request, response);
            }else{
                out.println("<h1>Invalid User</h1>");
            }
            
            System.out.println("*********************************");
//            out.println("<h1>Hello " + name + "</h1>");
//            out.println("<h1>IP: " + ip + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
