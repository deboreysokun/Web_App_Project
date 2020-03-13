
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class ConvertorFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        int value = Integer.parseInt(request.getParameter("currency"));
        int ReilValue = value*4000;
        request.setAttribute("ReilValue", ReilValue);
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        
    }
    
}
