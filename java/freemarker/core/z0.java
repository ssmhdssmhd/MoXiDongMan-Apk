package freemarker.core;

import freemarker.template.TemplateException;

/* loaded from: classes.dex */
abstract class z0 extends b4 {
    @Override // freemarker.core.b4
    public boolean h() {
        return true;
    }

    public abstract Object r(d0 d0Var) throws TemplateException;

    public abstract String s(boolean z, boolean z2);

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public final String mo27846switch(boolean z) {
        return s(z, false);
    }

    public final String t() {
        return s(true, true);
    }
}
