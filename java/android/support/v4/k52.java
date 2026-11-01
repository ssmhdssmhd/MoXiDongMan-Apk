package android.support.v4;

import freemarker.template.TemplateException;

/* loaded from: classes3.dex */
public class k52 extends TemplateException {
    private final boolean replaceWithCause;

    public k52() {
        this((String) null, (Exception) null);
    }

    public boolean getReplaceWithCause() {
        return this.replaceWithCause;
    }

    public k52(String str) {
        this(str, (Exception) null);
    }

    public k52(Exception exc) {
        this((String) null, exc);
    }

    public k52(Throwable th) {
        this((String) null, th);
    }

    public k52(String str, Exception exc) {
        this(str, (Throwable) exc);
    }

    public k52(String str, Throwable th) {
        this(str, false, th);
    }

    public k52(String str, boolean z, Throwable th) {
        super(str, th, (freemarker.core.d0) null);
        this.replaceWithCause = z;
    }

    public k52(Throwable th, freemarker.core.d0 d0Var, String str, boolean z) {
        super(str, th, d0Var);
        this.replaceWithCause = false;
    }

    public k52(Throwable th, freemarker.core.d0 d0Var, freemarker.core.z4 z4Var, boolean z) {
        super(th, d0Var, null, z4Var);
        this.replaceWithCause = false;
    }
}
