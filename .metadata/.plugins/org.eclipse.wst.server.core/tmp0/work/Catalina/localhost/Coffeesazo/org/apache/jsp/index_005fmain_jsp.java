/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-02 14:03:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_005fmain_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"view/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"view/css/index.css\" type=\"text/css\">    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("        <div class='main'>\r\n");
      out.write("            <!-- slider 시작 -->\r\n");
      out.write("            <div class=\"silder-cover\"></div>\r\n");
      out.write("            <div class=\"slider\" id=\"main-slider\">\r\n");
      out.write("                <!-- outermost container element -->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"slider-wrapper\">\r\n");
      out.write("                    <!-- innermost wrapper element -->\r\n");
      out.write("                    <img src=\"view/img/7-1.png\" alt=\"First\" class=\"slide\" /><!-- slides -->\r\n");
      out.write("                    <img src=\"view/img/4-1.png\" alt=\"Second\" class=\"slide\" />\r\n");
      out.write("                    <img src=\"view/img/5.png\" alt=\"Third\" class=\"slide\" />\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- hastag 링크 걸기 -->\r\n");
      out.write("        <div class='hashtag'>\r\n");
      out.write("            <div class=\"title\">\r\n");
      out.write("                <h2>키워드로 상품을 찾아보세요!</h2>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"hashtag-box\">\r\n");
      out.write("                <div class=\"tag\"><a href='index.jsp?inc=view/shopping/product/whole_bean.jsp'>#풍부한산미</a></div>\r\n");
      out.write("                <div class=\"tag\"><a href='index.jsp?inc=view/shopping/product/whole_bean.jsp#tag_body'>#묵직한바디감</a></div>\r\n");
      out.write("                <div class=\"tag\"><a href='index.jsp?inc=view/shopping/product/whole_bean.jsp#tag_latin'>#중남미원두</a></div>\r\n");
      out.write("                <div class=\"tag\"><a href='index.jsp?inc=view/shopping/product/whole_bean.jsp#tag_africa'>#아프리카원두</a></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"hashtag-box\">\r\n");
      out.write("                <div class=\"tag\"><a href='index.jsp?inc=view/shopping/product/stick_coffee.jsp'>#쉽고간편한</a></div>\r\n");
      out.write("                <div class=\"tag\"><a href='index.jsp?inc=view/shopping/product/capsule_coffee.jsp'>#룽고</a></div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    \r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("    <!-- slider script -->\r\n");
      out.write("    <script>\r\n");
      out.write("        (function () {\r\n");
      out.write("\r\n");
      out.write("            function Slideshow(element) {\r\n");
      out.write("                this.el = document.querySelector(element);\r\n");
      out.write("                this.init();\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            Slideshow.prototype = {\r\n");
      out.write("                init: function () {\r\n");
      out.write("                    this.wrapper = this.el.querySelector(\".slider-wrapper\");\r\n");
      out.write("                    this.slides = this.el.querySelectorAll(\".slide\");\r\n");
      out.write("                    this.previous = this.el.querySelector(\".slider-previous\");\r\n");
      out.write("                    this.next = this.el.querySelector(\".slider-next\");\r\n");
      out.write("                    this.index = 0;\r\n");
      out.write("                    this.total = this.slides.length;\r\n");
      out.write("                    this.timer = null;\r\n");
      out.write("\r\n");
      out.write("                    this.action();\r\n");
      out.write("                    this.stopStart();\r\n");
      out.write("                },\r\n");
      out.write("                _slideTo: function (slide) {\r\n");
      out.write("                    var currentSlide = this.slides[slide];\r\n");
      out.write("                    currentSlide.style.opacity = 1;\r\n");
      out.write("\r\n");
      out.write("                    for (var i = 0; i < this.slides.length; i++) {\r\n");
      out.write("                        var slide = this.slides[i];\r\n");
      out.write("                        if (slide !== currentSlide) {\r\n");
      out.write("                            slide.style.opacity = 0;\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                action: function () {\r\n");
      out.write("                    var self = this;\r\n");
      out.write("                    self.timer = setInterval(function () {\r\n");
      out.write("                        self.index++;\r\n");
      out.write("                        if (self.index == self.slides.length) {\r\n");
      out.write("                            self.index = 0;\r\n");
      out.write("                        }\r\n");
      out.write("                        self._slideTo(self.index);\r\n");
      out.write("\r\n");
      out.write("                    }, 4000);\r\n");
      out.write("                },\r\n");
      out.write("                stopStart: function () {\r\n");
      out.write("                    var self = this;\r\n");
      out.write("                    self.el.addEventListener(\"mouseover\", function () {\r\n");
      out.write("                        clearInterval(self.timer);\r\n");
      out.write("                        self.timer = null;\r\n");
      out.write("\r\n");
      out.write("                    }, false);\r\n");
      out.write("                    self.el.addEventListener(\"mouseout\", function () {\r\n");
      out.write("                        self.action();\r\n");
      out.write("\r\n");
      out.write("                    }, false);\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("            };\r\n");
      out.write("\r\n");
      out.write("            document.addEventListener(\"DOMContentLoaded\", function () {\r\n");
      out.write("                var slider = new Slideshow(\"#main-slider\");\r\n");
      out.write("\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        })();\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
