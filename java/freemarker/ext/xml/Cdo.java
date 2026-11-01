package freemarker.ext.xml;

import android.support.v4.k52;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateScalarModel;
import java.util.HashMap;
import java.util.List;

/* renamed from: freemarker.ext.xml.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo implements TemplateMethodModel, Cloneable {

    /* renamed from: do, reason: not valid java name */
    private HashMap f25032do;

    /* renamed from: if, reason: not valid java name */
    private boolean f25033if;

    public Cdo() {
        HashMap map = new HashMap();
        this.f25032do = map;
        map.put("", "");
        this.f25032do.put("xml", "http://www.w3.org/XML/1998/namespace");
        this.f25033if = false;
    }

    public Object clone() {
        try {
            Cdo cdo = (Cdo) super.clone();
            cdo.f25032do = (HashMap) this.f25032do.clone();
            cdo.f25033if = false;
            return cdo;
        } catch (CloneNotSupportedException unused) {
            throw new Error();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m29161do() {
        return this.f25033if;
    }

    @Override // freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        if (list.size() != 2) {
            throw new k52("_registerNamespace(prefix, uri) requires two arguments");
        }
        m29162for((String) list.get(0), (String) list.get(1));
        return TemplateScalarModel.EMPTY_STRING;
    }

    /* renamed from: for, reason: not valid java name */
    public void m29162for(String str, String str2) {
        synchronized (this.f25032do) {
            this.f25032do.put(str, str2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m29163if() {
        if (this.f25033if) {
            return;
        }
        this.f25033if = true;
    }

    /* renamed from: new, reason: not valid java name */
    public String mo29164new(String str) {
        String str2;
        synchronized (this.f25032do) {
            str2 = (String) this.f25032do.get(str);
        }
        return str2;
    }
}
