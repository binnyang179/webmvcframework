### self defined Tag's execute process
JSP引擎遇到自定义标签时，首先创建标签处理器类的实例对象，然后按照JSP规范定义的通信规则依次调用它的方法。
    1、public void setPageContext(PageContext pc)， JSP引擎实例化标签处理器后，将调用setPageContext方法将JSP页面的pageContext对象传递给标签处理器，标签处理器以后可以通过这个pageContext对象与JSP页面进行通信。
    2、public void setParent(Tag t)，setPageContext方法执行完后，WEB容器接着调用的setParent方法将当前标签的父标签传递给当前标签处理器，如果当前标签没有父标签，则传递给setParent方法的参数值为null。
    3、public int doStartTag()，调用了setPageContext方法和setParent方法之后，WEB容器执行到自定义标签的开始标记时，就会调用标签处理器的doStartTag方法。
    4、public int doEndTag()，WEB容器执行完自定义标签的标签体后，就会接着去执行自定义标签的结束标记，此时，WEB容器会去调用标签处理器的doEndTag方法。
    5、public void release()，通常WEB容器执行完自定义标签后，标签处理器会驻留在内存中，为其它请求服务器，直至停止web应用时，web容器才会调用release方法。

 　　我们在tomcat服务器的"work\Catalina\localhost\JavaWeb_JspTag_study_20140816\org\apache\jsp"目录下可以找到将jspTag_Test1.jsp翻译成Servlet后的java源代码，如下图所示：