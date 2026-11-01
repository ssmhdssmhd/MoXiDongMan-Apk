package android.support.v4;

/* loaded from: classes2.dex */
public final class j1 extends yn1 {

    /* renamed from: for, reason: not valid java name */
    private final float f2948for;

    public j1(float f, float f2, float f3) {
        super(f, f2);
        this.f2948for = f3;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m3645case(float f, float f2, float f3) {
        if (Math.abs(f2 - m9912new()) > f || Math.abs(f3 - m9911for()) > f) {
            return false;
        }
        float fAbs = Math.abs(f - this.f2948for);
        return fAbs <= 1.0f || fAbs <= this.f2948for;
    }

    /* renamed from: else, reason: not valid java name */
    public j1 m3646else(float f, float f2, float f3) {
        return new j1((m9911for() + f2) / 2.0f, (m9912new() + f) / 2.0f, (this.f2948for + f3) / 2.0f);
    }
}
