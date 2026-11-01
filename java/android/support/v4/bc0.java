package android.support.v4;

/* loaded from: classes2.dex */
public final class bc0 extends yn1 {

    /* renamed from: for, reason: not valid java name */
    private final float f404for;

    /* renamed from: new, reason: not valid java name */
    private final int f405new;

    public bc0(float f, float f2, float f3) {
        this(f, f2, f3, 1);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m510case(float f, float f2, float f3) {
        if (Math.abs(f2 - m9912new()) > f || Math.abs(f3 - m9911for()) > f) {
            return false;
        }
        float fAbs = Math.abs(f - this.f404for);
        return fAbs <= 1.0f || fAbs <= this.f404for;
    }

    /* renamed from: else, reason: not valid java name */
    public bc0 m511else(float f, float f2, float f3) {
        int i = this.f405new;
        int i2 = i + 1;
        float fM9911for = (i * m9911for()) + f2;
        float f4 = i2;
        return new bc0(fM9911for / f4, ((this.f405new * m9912new()) + f) / f4, ((this.f405new * this.f404for) + f3) / f4, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public int m512goto() {
        return this.f405new;
    }

    /* renamed from: this, reason: not valid java name */
    public float m513this() {
        return this.f404for;
    }

    private bc0(float f, float f2, float f3, int i) {
        super(f, f2);
        this.f404for = f3;
        this.f405new = i;
    }
}
