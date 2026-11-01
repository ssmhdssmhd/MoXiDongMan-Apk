package freemarker.ext.servlet;

import android.support.v4.ez1;
import freemarker.template.Cimport;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/* renamed from: freemarker.ext.servlet.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements TemplateHashModelEx {

    /* renamed from: do, reason: not valid java name */
    private final HttpServletRequest f24966do;

    /* renamed from: if, reason: not valid java name */
    private List f24967if;

    /* renamed from: freemarker.ext.servlet.for$do, reason: invalid class name */
    public class Cdo implements Iterator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterator f24968do;

        public Cdo(Iterator it) {
            this.f24968do = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f24968do.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return Cfor.this.f24966do.getParameter((String) this.f24968do.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public Cfor(HttpServletRequest httpServletRequest) {
        this.f24966do = httpServletRequest;
    }

    /* renamed from: if, reason: not valid java name */
    private synchronized List m29117if() {
        if (this.f24967if == null) {
            this.f24967if = new ArrayList();
            Enumeration parameterNames = this.f24966do.getParameterNames();
            while (parameterNames.hasMoreElements()) {
                this.f24967if.add(parameterNames.nextElement());
            }
        }
        return this.f24967if;
    }

    /* renamed from: for, reason: not valid java name */
    public String m29118for(String str) {
        return str;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) {
        String parameter = this.f24966do.getParameter(str);
        if (parameter == null) {
            return null;
        }
        return new ez1(parameter);
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return !this.f24966do.getParameterNames().hasMoreElements();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() {
        return new Cimport(m29117if().iterator());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        return m29117if().size();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() {
        return new Cimport(new Cdo(m29117if().iterator()));
    }
}
