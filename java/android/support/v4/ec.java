package android.support.v4;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.Cif;

/* loaded from: classes.dex */
public class ec extends a60 implements Cloneable {

    /* renamed from: break, reason: not valid java name */
    private static final int f1374break = 180;

    /* renamed from: catch, reason: not valid java name */
    private static final float f1375catch = 1.75f;

    /* renamed from: else, reason: not valid java name */
    private static final int f1376else = 90;

    /* renamed from: goto, reason: not valid java name */
    private static final int f1377goto = 180;

    /* renamed from: this, reason: not valid java name */
    private static final int f1378this = 270;

    /* renamed from: case, reason: not valid java name */
    private float f1379case = -1.0f;

    /* renamed from: do, reason: not valid java name */
    private float f1380do;

    /* renamed from: for, reason: not valid java name */
    private float f1381for;

    /* renamed from: if, reason: not valid java name */
    private float f1382if;

    /* renamed from: new, reason: not valid java name */
    private float f1383new;

    /* renamed from: try, reason: not valid java name */
    private float f1384try;

    public ec(float f, float f2, float f3) {
        this.f1382if = f;
        this.f1380do = f2;
        m1770break(f3);
        this.f1384try = 0.0f;
    }

    /* renamed from: break, reason: not valid java name */
    public void m1770break(@FloatRange(from = 0.0d) float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f1383new = f;
    }

    /* renamed from: case, reason: not valid java name */
    public float m1771case() {
        return this.f1382if;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m1772catch(float f) {
        this.f1379case = f;
    }

    /* renamed from: class, reason: not valid java name */
    public void m1773class(float f) {
        this.f1382if = f;
    }

    /* renamed from: const, reason: not valid java name */
    public void m1774const(float f) {
        this.f1380do = f;
    }

    /* renamed from: else, reason: not valid java name */
    public float m1775else() {
        return this.f1380do;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: final, reason: not valid java name */
    public void m1776final(float f) {
        this.f1381for = f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: goto, reason: not valid java name */
    public float m1777goto() {
        return this.f1381for;
    }

    @Override // android.support.v4.a60
    /* renamed from: if */
    public void mo51if(float f, float f2, float f3, @NonNull Cif cif) {
        float f4;
        float f5;
        float f6 = this.f1381for;
        if (f6 == 0.0f) {
            cif.m14065final(f, 0.0f);
            return;
        }
        float f7 = ((this.f1382if * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.f1380do;
        float f9 = f2 + this.f1384try;
        float f10 = (this.f1383new * f3) + ((1.0f - f3) * f7);
        if (f10 / f7 >= 1.0f) {
            cif.m14065final(f, 0.0f);
            return;
        }
        float f11 = this.f1379case;
        float f12 = f11 * f3;
        boolean z = f11 == -1.0f || Math.abs((f11 * 2.0f) - f6) < 0.1f;
        if (z) {
            f4 = f10;
            f5 = 0.0f;
        } else {
            f5 = 1.75f;
            f4 = 0.0f;
        }
        float f13 = f7 + f8;
        float f14 = f4 + f8;
        float fSqrt = (float) Math.sqrt((f13 * f13) - (f14 * f14));
        float f15 = f9 - fSqrt;
        float f16 = f9 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f14));
        float f17 = (90.0f - degrees) + f5;
        cif.m14065final(f15, 0.0f);
        float f18 = f8 * 2.0f;
        cif.m14063do(f15 - f8, 0.0f, f15 + f8, f18, 270.0f, degrees);
        if (z) {
            cif.m14063do(f9 - f7, (-f7) - f4, f9 + f7, f7 - f4, 180.0f - f17, (f17 * 2.0f) - 180.0f);
        } else {
            float f19 = this.f1382if;
            float f20 = f12 * 2.0f;
            float f21 = f9 - f7;
            cif.m14063do(f21, -(f12 + f19), f21 + f19 + f20, f19 + f12, 180.0f - f17, ((f17 * 2.0f) - 180.0f) / 2.0f);
            float f22 = f9 + f7;
            float f23 = this.f1382if;
            cif.m14065final(f22 - ((f23 / 2.0f) + f12), f23 + f12);
            float f24 = this.f1382if;
            cif.m14063do(f22 - (f20 + f24), -(f12 + f24), f22, f24 + f12, 90.0f, f17 - 90.0f);
        }
        cif.m14063do(f16 - f8, 0.0f, f16 + f8, f18, 270.0f - degrees, degrees);
        cif.m14065final(f, 0.0f);
    }

    /* renamed from: new, reason: not valid java name */
    public float m1778new() {
        return this.f1383new;
    }

    /* renamed from: super, reason: not valid java name */
    public void m1779super(float f) {
        this.f1384try = f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: this, reason: not valid java name */
    public float m1780this() {
        return this.f1384try;
    }

    /* renamed from: try, reason: not valid java name */
    public float m1781try() {
        return this.f1379case;
    }
}
