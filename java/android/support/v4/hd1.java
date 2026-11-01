package android.support.v4;

/* loaded from: classes2.dex */
public final class hd1 {

    /* renamed from: case, reason: not valid java name */
    private final float f2373case;

    /* renamed from: do, reason: not valid java name */
    private final float f2374do;

    /* renamed from: else, reason: not valid java name */
    private final float f2375else;

    /* renamed from: for, reason: not valid java name */
    private final float f2376for;

    /* renamed from: goto, reason: not valid java name */
    private final float f2377goto;

    /* renamed from: if, reason: not valid java name */
    private final float f2378if;

    /* renamed from: new, reason: not valid java name */
    private final float f2379new;

    /* renamed from: this, reason: not valid java name */
    private final float f2380this;

    /* renamed from: try, reason: not valid java name */
    private final float f2381try;

    private hd1(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f2374do = f;
        this.f2378if = f4;
        this.f2376for = f7;
        this.f2379new = f2;
        this.f2381try = f5;
        this.f2373case = f8;
        this.f2375else = f3;
        this.f2377goto = f6;
        this.f2380this = f9;
    }

    /* renamed from: for, reason: not valid java name */
    public static hd1 m2986for(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return m2988new(f, f2, f3, f4, f5, f6, f7, f8).m2990do();
    }

    /* renamed from: if, reason: not valid java name */
    public static hd1 m2987if(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        return m2988new(f9, f10, f11, f12, f13, f14, f15, f16).m2992try(m2986for(f, f2, f3, f4, f5, f6, f7, f8));
    }

    /* renamed from: new, reason: not valid java name */
    public static hd1 m2988new(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = ((f - f3) + f5) - f7;
        float f10 = ((f2 - f4) + f6) - f8;
        if (f9 == 0.0f && f10 == 0.0f) {
            return new hd1(f3 - f, f5 - f3, f, f4 - f2, f6 - f4, f2, 0.0f, 0.0f, 1.0f);
        }
        float f11 = f3 - f5;
        float f12 = f7 - f5;
        float f13 = f4 - f6;
        float f14 = f8 - f6;
        float f15 = (f11 * f14) - (f12 * f13);
        float f16 = ((f14 * f9) - (f12 * f10)) / f15;
        float f17 = ((f11 * f10) - (f9 * f13)) / f15;
        return new hd1((f16 * f3) + (f3 - f), (f17 * f7) + (f7 - f), f, (f4 - f2) + (f16 * f4), (f8 - f2) + (f17 * f8), f2, f16, f17, 1.0f);
    }

    /* renamed from: case, reason: not valid java name */
    public void m2989case(float[] fArr) {
        int length = fArr.length;
        float f = this.f2374do;
        float f2 = this.f2378if;
        float f3 = this.f2376for;
        float f4 = this.f2379new;
        float f5 = this.f2381try;
        float f6 = this.f2373case;
        float f7 = this.f2375else;
        float f8 = this.f2377goto;
        float f9 = this.f2380this;
        for (int i = 0; i < length; i += 2) {
            float f10 = fArr[i];
            int i2 = i + 1;
            float f11 = fArr[i2];
            float f12 = (f3 * f10) + (f6 * f11) + f9;
            fArr[i] = (((f * f10) + (f4 * f11)) + f7) / f12;
            fArr[i2] = (((f10 * f2) + (f11 * f5)) + f8) / f12;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public hd1 m2990do() {
        float f = this.f2381try;
        float f2 = this.f2380this;
        float f3 = this.f2373case;
        float f4 = this.f2377goto;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = this.f2375else;
        float f7 = this.f2379new;
        float f8 = (f3 * f6) - (f7 * f2);
        float f9 = (f7 * f4) - (f * f6);
        float f10 = this.f2376for;
        float f11 = this.f2378if;
        float f12 = (f10 * f4) - (f11 * f2);
        float f13 = this.f2374do;
        return new hd1(f5, f8, f9, f12, (f2 * f13) - (f10 * f6), (f6 * f11) - (f4 * f13), (f11 * f3) - (f10 * f), (f10 * f7) - (f3 * f13), (f13 * f) - (f11 * f7));
    }

    /* renamed from: else, reason: not valid java name */
    public void m2991else(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            float f = fArr[i];
            float f2 = fArr2[i];
            float f3 = (this.f2376for * f) + (this.f2373case * f2) + this.f2380this;
            fArr[i] = (((this.f2374do * f) + (this.f2379new * f2)) + this.f2375else) / f3;
            fArr2[i] = (((this.f2378if * f) + (this.f2381try * f2)) + this.f2377goto) / f3;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public hd1 m2992try(hd1 hd1Var) {
        float f = this.f2374do;
        float f2 = hd1Var.f2374do;
        float f3 = this.f2379new;
        float f4 = hd1Var.f2378if;
        float f5 = this.f2375else;
        float f6 = hd1Var.f2376for;
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = hd1Var.f2379new;
        float f9 = hd1Var.f2381try;
        float f10 = hd1Var.f2373case;
        float f11 = (f * f8) + (f3 * f9) + (f5 * f10);
        float f12 = hd1Var.f2375else;
        float f13 = hd1Var.f2377goto;
        float f14 = hd1Var.f2380this;
        float f15 = (f * f12) + (f3 * f13) + (f5 * f14);
        float f16 = this.f2378if;
        float f17 = this.f2381try;
        float f18 = this.f2377goto;
        float f19 = (f16 * f2) + (f17 * f4) + (f18 * f6);
        float f20 = (f16 * f8) + (f17 * f9) + (f18 * f10);
        float f21 = (f18 * f14) + (f16 * f12) + (f17 * f13);
        float f22 = this.f2376for;
        float f23 = this.f2373case;
        float f24 = (f2 * f22) + (f4 * f23);
        float f25 = this.f2380this;
        return new hd1(f7, f11, f15, f19, f20, f21, (f6 * f25) + f24, (f8 * f22) + (f9 * f23) + (f10 * f25), (f22 * f12) + (f23 * f13) + (f25 * f14));
    }
}
