package android.support.v4;

/* loaded from: classes3.dex */
public class uy0 extends ez0 {

    /* renamed from: goto, reason: not valid java name */
    private final String f7011goto;

    public uy0() {
        this(11, 50, "SHA-256");
    }

    public uy0(int i) {
        this(i, "SHA-256");
    }

    public uy0(int i, int i2) {
        this(i, i2, "SHA-256");
    }

    public uy0(int i, int i2, int i3) {
        this(i, i2, i3, "SHA-256");
    }

    public uy0(int i, int i2, int i3, String str) {
        super(i, i2, i3);
        this.f7011goto = str;
    }

    public uy0(int i, int i2, String str) {
        super(i, i2);
        this.f7011goto = str;
    }

    public uy0(int i, String str) {
        super(i);
        this.f7011goto = str;
    }

    public uy0(String str) {
        this(11, 50, str);
    }

    /* renamed from: try, reason: not valid java name */
    public String m8699try() {
        return this.f7011goto;
    }
}
