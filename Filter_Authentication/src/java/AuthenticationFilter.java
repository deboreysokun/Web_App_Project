
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sath_
 */
public class AuthenticationFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try{
            HttpServletRequest req = (HttpServletRequest)request;
            HttpSession session = req.getSession();
            if((Boolean)session.getAttribute("flag")){
                chain.doFilter(request, response);
            }else{
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        }catch(NullPointerException np){
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
        }
    }

    @Override
    public void destroy() {
        
    }
    
}
