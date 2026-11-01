package freemarker.ext.servlet;

import android.support.v4.k52;
import freemarker.template.Cimport;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* renamed from: freemarker.ext.servlet.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements TemplateHashModelEx {

    /* renamed from: do, reason: not valid java name */
    private final HttpServletRequest f24970do;

    /* renamed from: for, reason: not valid java name */
    private final ObjectWrapper f24971for;

    /* renamed from: if, reason: not valid java name */
    private final HttpServletResponse f24972if;

    public Cif(HttpServletRequest httpServletRequest, ObjectWrapper objectWrapper) {
        this(httpServletRequest, null, objectWrapper);
    }

    /* renamed from: do, reason: not valid java name */
    public ObjectWrapper m29119do() {
        return this.f24971for;
    }

    /* renamed from: for, reason: not valid java name */
    public HttpServletResponse m29120for() {
        return this.f24972if;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        return this.f24971for.wrap(this.f24970do.getAttribute(str));
    }

    /* renamed from: if, reason: not valid java name */
    public HttpServletRequest m29121if() {
        return this.f24970do;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return !this.f24970do.getAttributeNames().hasMoreElements();
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel keys() {
        ArrayList arrayList = new ArrayList();
        Enumeration attributeNames = this.f24970do.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            arrayList.add(attributeNames.nextElement());
        }
        return new Cimport(arrayList.iterator());
    }

    @Override // freemarker.template.TemplateHashModelEx
    public int size() {
        Enumeration attributeNames = this.f24970do.getAttributeNames();
        int i = 0;
        while (attributeNames.hasMoreElements()) {
            attributeNames.nextElement();
            i++;
        }
        return i;
    }

    @Override // freemarker.template.TemplateHashModelEx
    public TemplateCollectionModel values() {
        ArrayList arrayList = new ArrayList();
        Enumeration attributeNames = this.f24970do.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            arrayList.add(this.f24970do.getAttribute((String) attributeNames.nextElement()));
        }
        return new Cimport(arrayList.iterator(), this.f24971for);
    }

    public Cif(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, ObjectWrapper objectWrapper) {
        this.f24970do = httpServletRequest;
        this.f24972if = httpServletResponse;
        this.f24971for = objectWrapper;
    }
}
