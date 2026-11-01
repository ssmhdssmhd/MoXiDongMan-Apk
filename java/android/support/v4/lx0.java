package android.support.v4;

import androidx.annotation.NonNull;
import com.google.android.material.shape.Cif;

/* loaded from: classes.dex */
public final class lx0 extends a60 {

    /* renamed from: do, reason: not valid java name */
    private final float f3789do;

    public lx0(float f) {
        this.f3789do = f - 0.001f;
    }

    @Override // android.support.v4.a60
    /* renamed from: do */
    public boolean mo49do() {
        return true;
    }

    @Override // android.support.v4.a60
    /* renamed from: if */
    public void mo51if(float f, float f2, float f3, @NonNull Cif cif) {
        double d = this.f3789do;
        double dSqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        float f4 = (float) ((d * dSqrt) / 2.0d);
        float fSqrt = (float) Math.sqrt(Math.pow(this.f3789do, 2.0d) - Math.pow(f4, 2.0d));
        double d2 = this.f3789do;
        double dSqrt2 = Math.sqrt(2.0d);
        Double.isNaN(d2);
        double d3 = d2 * dSqrt2;
        double d4 = this.f3789do;
        Double.isNaN(d4);
        cif.m14068throw(f2 - f4, ((float) (-(d3 - d4))) + fSqrt);
        double d5 = this.f3789do;
        double dSqrt3 = Math.sqrt(2.0d);
        Double.isNaN(d5);
        double d6 = d5 * dSqrt3;
        double d7 = this.f3789do;
        Double.isNaN(d7);
        cif.m14065final(f2, (float) (-(d6 - d7)));
        double d8 = this.f3789do;
        double dSqrt4 = Math.sqrt(2.0d);
        Double.isNaN(d8);
        double d9 = d8 * dSqrt4;
        double d10 = this.f3789do;
        Double.isNaN(d10);
        cif.m14065final(f2 + f4, ((float) (-(d9 - d10))) + fSqrt);
    }
}
