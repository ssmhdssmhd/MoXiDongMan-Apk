package android.support.v4;

/* renamed from: android.support.v4.default, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdefault {

    /* renamed from: new, reason: not valid java name */
    private static final Cdefault f1025new;

    /* renamed from: do, reason: not valid java name */
    private boolean f1026do;

    /* renamed from: for, reason: not valid java name */
    private boolean f1027for;

    /* renamed from: if, reason: not valid java name */
    private boolean f1028if;

    static {
        Cdefault cdefault = new Cdefault();
        f1025new = cdefault;
        cdefault.m1313try();
    }

    public Cdefault() {
        this.f1028if = true;
        this.f1027for = false;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdefault m1306do() {
        return f1025new;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1307case(boolean z) {
        m1310goto();
        this.f1027for = z;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1308else(boolean z) {
        m1310goto();
        this.f1028if = z;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m1309for() {
        return this.f1026do;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m1310goto() {
        if (m1309for()) {
            throw new IllegalStateException("The object is read only.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m1311if() {
        return this.f1027for;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m1312new() {
        return this.f1028if;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1313try() {
        this.f1026do = true;
    }

    public Cdefault(Cdefault cdefault) {
        this.f1028if = cdefault.f1028if;
        this.f1027for = cdefault.f1027for;
    }
}
