package pl.sda.servlet;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet",
        urlPatterns = {"/", "/hello"},
        initParams = {
                @WebInitParam(name = "localization", value = "Poland"),
                @WebInitParam(name = "newParam", value = "newValue")
        },
        loadOnStartup = 1
)
public class HelloWorldServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        PrintWriter writer = response.getWriter();
        writer.println("newParam: " + getInitParameter("newParam"));
        writer.println("Localization: " + getInitParameter("localization"));
    }
}
