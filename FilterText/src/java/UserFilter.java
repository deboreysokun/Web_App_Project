
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author sokun
 */
public class UserFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       String role = request.getParameter("role");
       if (role.equals("admin")|| role.equals("hr"))
       {
           chain.doFilter(request, response);
       }
       else
       {
           RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
           rd.forward(request, response);
       }
    }

    @Override
    public void destroy() {
        
    }
    
}
