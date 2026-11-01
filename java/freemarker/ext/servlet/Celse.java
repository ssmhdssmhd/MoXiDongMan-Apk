package freemarker.ext.servlet;

import android.support.v4.k52;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import javax.servlet.GenericServlet;
import javax.servlet.ServletContext;

/* renamed from: freemarker.ext.servlet.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse implements TemplateHashModel {

    /* renamed from: do, reason: not valid java name */
    private final GenericServlet f24963do;

    /* renamed from: for, reason: not valid java name */
    private final ObjectWrapper f24964for;

    /* renamed from: if, reason: not valid java name */
    private final ServletContext f24965if;

    public Celse(GenericServlet genericServlet, ObjectWrapper objectWrapper) {
        this.f24963do = genericServlet;
        this.f24965if = genericServlet.getServletContext();
        this.f24964for = objectWrapper;
    }

    /* renamed from: do, reason: not valid java name */
    public GenericServlet m29115do() {
        return this.f24963do;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        return this.f24964for.wrap(this.f24965if.getAttribute(str));
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return !this.f24965if.getAttributeNames().hasMoreElements();
    }

    @Deprecated
    public Celse(ServletContext servletContext, ObjectWrapper objectWrapper) {
        this.f24963do = null;
        this.f24965if = servletContext;
        this.f24964for = objectWrapper;
    }
}
