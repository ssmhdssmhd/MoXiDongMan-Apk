package android.support.v4;

/* loaded from: classes3.dex */
public abstract class uh2 {

    /* renamed from: do, reason: not valid java name */
    private th2 f6894do;

    /* renamed from: do, reason: not valid java name */
    public abstract th2 mo8457do();

    /* renamed from: if, reason: not valid java name */
    public synchronized th2 m8458if() {
        if (this.f6894do == null) {
            this.f6894do = mo8457do();
        }
        return this.f6894do;
    }
}
