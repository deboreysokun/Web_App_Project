/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sokun
 */
public class NextServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            ArrayList <String> list = new ArrayList<String>();
            list.add("Linna");
            list.add("Daneth");
            
            HttpSession hs = request.getSession();
            hs.setAttribute("studentList", list);
            
            RequestDispatcher rd = request.getRequestDispatcher("Next.jsp");
            rd.forward(request, response);
            
            LinkedHashMap<Integer, String> lmap = new LinkedHashMap<Integer, String>();
            lmap.put(123, "Vireak");
            lmap.put(125, "Vireak");
            lmap.put(126, "Vireak");
            lmap.put(1247, "Vireak");
            
        }
    }

