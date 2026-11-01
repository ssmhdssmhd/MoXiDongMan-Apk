package android.support.v4;

/* loaded from: classes2.dex */
public final class ei1 {

    /* renamed from: do, reason: not valid java name */
    private final boolean f1504do;

    public ei1(boolean z) {
        this.f1504do = z;
    }

    /* renamed from: do, reason: not valid java name */
    public void m1925do(yn1[] yn1VarArr) {
        if (!this.f1504do || yn1VarArr == null || yn1VarArr.length < 3) {
            return;
        }
        yn1 yn1Var = yn1VarArr[0];
        yn1VarArr[0] = yn1VarArr[2];
        yn1VarArr[2] = yn1Var;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m1926if() {
        return this.f1504do;
    }
}
