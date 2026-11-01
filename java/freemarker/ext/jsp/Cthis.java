package freemarker.ext.jsp;

import android.support.v4.k52;
import freemarker.ext.beans.Ctry;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import javax.servlet.jsp.PageContext;

/* renamed from: freemarker.ext.jsp.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis implements TemplateHashModel {

    /* renamed from: case, reason: not valid java name */
    public static final int f24874case = 3;

    /* renamed from: else, reason: not valid java name */
    public static final int f24875else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f24876for = -1;

    /* renamed from: new, reason: not valid java name */
    public static final int f24877new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f24878try = 2;

    /* renamed from: do, reason: not valid java name */
    private final PageContext f24879do;

    /* renamed from: if, reason: not valid java name */
    private final int f24880if;

    public Cthis(PageContext pageContext, int i) {
        this.f24879do = pageContext;
        this.f24880if = i;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        int i = this.f24880if;
        return Ctry.m28685super().wrap(i == -1 ? this.f24879do.findAttribute(str) : this.f24879do.getAttribute(str, i));
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return false;
    }
}
