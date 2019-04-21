package me.crab179.web.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;
import java.io.IOException;

public class ViewIPTag implements Tag {

    private PageContext pageContext;

    @Override
    public void setPageContext(PageContext pageContext) {
        System.out.println("setPageContext(PageContext pageContext)");
        this.pageContext = pageContext;
    }

    @Override
    public void setParent(Tag tag) {

    }

    @Override
    public Tag getParent() {
        return null;
    }

    @Override
    public int doStartTag() throws JspException {
        System.out.println("use doStartGar() method");
        HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
        JspWriter out = pageContext.getOut();
        String ip = request.getRemoteAddr();
        try {
            out.write(ip);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

    @Override
    public int doEndTag() throws JspException {
        System.out.println("use doEndTag() method");
        return 0;
    }

    @Override
    public void release() {
        System.out.println("use release() method");
    }
}
