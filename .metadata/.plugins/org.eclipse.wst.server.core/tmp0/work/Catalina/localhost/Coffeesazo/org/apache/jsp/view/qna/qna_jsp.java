/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.40
 * Generated at: 2021-01-02 16:08:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.qna;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class qna_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/My/Desktop/seoow/seoow1/kh-semiproject/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Coffeesazo/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c-1_0-rt.tld", Long.valueOf(1425946270000L));
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1609591156442L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fend_005fbegin;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fend_005fbegin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fend_005fbegin.release();
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

      out.write("`\t\r\n");
      out.write("  \t\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>1:1문의 | COFFEESAZO</title>\r\n");
      out.write("<!-- 부트스트랩 불러오기 -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"index copy.css\" type=\"text/css\">\r\n");
      out.write("<!--favicon-->\r\n");
      out.write("<link rel=\"shortcut icon\"\r\n");
      out.write("\thref=\"https://p7.hiclipart.com/preview/988/211/651/white-coffee-tea-cafe-computer-icons-cup-of-coffee-icon.jpg\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.js\"\r\n");
      out.write("\tintegrity=\"sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=\"\r\n");
      out.write("\tcrossorigin=\"anonymous\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"view/css/qna.css\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<main>\r\n");
      out.write("\t\t<div id=\"container\">\r\n");
      out.write("\t\t\t<div id=\"contents\">\r\n");
      out.write("\t\t\t\t<a href=\"index.jsp?inc=view/notice/notice.jsp\"><h1>고객센터</h1></a>\r\n");
      out.write("\t\t\t\t<div class=\"title-area\">\r\n");
      out.write("\t\t\t\t\t<div class=\"boardnavi\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"index.jsp?inc=view/notice/notice.jsp\" class=\"navi01\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>공지사항</span>\r\n");
      out.write("\t\t\t\t\t\t</a> <a href=\"index.jsp?inc=view/qna/qna.jsp\" class=\"navi02\"> <strong>1:1\r\n");
      out.write("\t\t\t\t\t\t\t\t문의</strong>\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"base-table\">\r\n");
      out.write("\t\t\t\t\t<table border=\"1\" summary>\r\n");
      out.write("\t\t\t\t\t\t<caption>게시판 목록</caption>\r\n");
      out.write("\t\t\t\t\t\t<thead class=\"element-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th scope=\"col\">순번</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th scope=\"col\" class=\"displaynone\">카테고리</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th scope=\"col\">제목</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th scope=\"col\">작성자</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t<th scope=\"col\" class>작성일</th>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t\t\t<tbody class=\"index-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: black;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>6</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"displaynone\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"subject\"><a\r\n");
      out.write("\t\t\t\t\t\t\t\t\thref=\"index.jsp?inc=view/qna/qna_check.jsp\">문의</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>제윤지</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"txtLess \">2020-12-16</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t<tbody class=\"index-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: black;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>5</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"displaynone\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"subject\"><a href=\"#\">문의문의</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이지현</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"txtLess \">2020-12-16</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t<tbody class=\"index-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: black;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>4</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"displaynone\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"subject\"><a href=\"#\">문의문의문의</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>박서우</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"txtLess \">2020-12-16</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t<tbody class=\"index-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: black;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>3</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"displaynone\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"subject\"><a href=\"#\">문의문의</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이민영</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"txtLess \">2020-12-16</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t<tbody class=\"index-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: black;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>2</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"displaynone\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"subject\"><a href=\"#\">문의</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>제윤지</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"txtLess \">2020-12-16</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t\t<tbody class=\"index-box\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr style=\"background-color: #FFFFFF; color: black;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"bottom\">1</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"displaynone\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"subject\"><a href=\"#\">무니</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>제윤지</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td class=\"txtLess \">2020-12-16</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class='btns'>\r\n");
      out.write("\t\t\t\t\t<input type='button' value='Prev' />\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<input type='button' value='Next' /> \r\n");
      out.write("\t\t\t\t\t<div class=\"bottom-button\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"bottom-button\" onclick=\"javascript:bottom_button();\">등록하기</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</main>\r\n");
      out.write("\t<!-- 부트스트랩 자바스크립트 추가 -->\r\n");
      out.write("    <script src=\"./js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\tfunction bottom_button() {\r\n");
      out.write("\t\tvar id = '");
      out.print((String)session.getAttribute("id"));
      out.write("';\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(id == \"null\") {\r\n");
      out.write("\t\t\talert(\"로그인이 필요한 항목입니다.\"); \r\n");
      out.write("\t\t\tlocation.href = \"index.jsp?inc=view/signin/login.jsp\";\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\tlocation.href = \"index.jsp?inc=view/qna/qna_write.jsp\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\t</script>\r\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fend_005fbegin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /view/qna/qna.jsp(106,5) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("i");
      // /view/qna/qna.jsp(106,5) name = begin type = int reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setBegin(1);
      // /view/qna/qna.jsp(106,5) name = end type = int reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setEnd(5);
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t\t\t\t<input type='button' value='");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${i }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("' onclick='goPage(");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${i}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(")' />\r\n");
            out.write("\t\t\t\t\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fend_005fbegin.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}