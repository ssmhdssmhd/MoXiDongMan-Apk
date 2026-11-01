package android.support.v4;

import java.util.Locale;

/* loaded from: classes3.dex */
public class nv0 extends Exception {
    private Throwable cause;
    public g80 message;

    public nv0(g80 g80Var) {
        super(g80Var.m1147final(Locale.getDefault()));
        this.message = g80Var;
    }

    public nv0(g80 g80Var, Throwable th) {
        super(g80Var.m1147final(Locale.getDefault()));
        this.message = g80Var;
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public g80 getErrorMessage() {
        return this.message;
    }
}
