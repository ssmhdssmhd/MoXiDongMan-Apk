package freemarker.core;

import android.support.v4.w41;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.util.Objects;

/* loaded from: classes.dex */
abstract class z1 extends v3 {

    /* renamed from: final, reason: not valid java name */
    public y1 f24321final;

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        Objects.requireNonNull(this.f24321final, "outputFormat was null");
        return s(d0Var);
    }

    public void r(y1 y1Var) {
        w41.check(y1Var);
        this.f24321final = y1Var;
    }

    public abstract TemplateModel s(d0 d0Var) throws TemplateException;
}
