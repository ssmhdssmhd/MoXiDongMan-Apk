package freemarker.core;

import android.support.v4.e91;
import android.support.v4.w41;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.util.Objects;

/* loaded from: classes.dex */
abstract class e3 extends v3 {

    /* renamed from: final, reason: not valid java name */
    public e91 f23683final;

    /* renamed from: super, reason: not valid java name */
    public int f23684super;

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        Objects.requireNonNull(this.f23683final, "outputFormat was null");
        return s(d0Var);
    }

    public void r(e91 e91Var, int i) {
        w41.check(e91Var);
        this.f23683final = e91Var;
        this.f23684super = i;
    }

    public abstract TemplateModel s(d0 d0Var) throws TemplateException;
}
