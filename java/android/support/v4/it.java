package android.support.v4;

import androidx.annotation.NonNull;
import com.google.android.material.shape.Cif;

/* loaded from: classes.dex */
public class it extends yr {

    /* renamed from: do, reason: not valid java name */
    public float f2875do;

    public it() {
        this.f2875do = -1.0f;
    }

    @Override // android.support.v4.yr
    /* renamed from: if, reason: not valid java name */
    public void mo3572if(@NonNull Cif cif, float f, float f2, float f3) {
        cif.m14070while(0.0f, f3 * f2, 180.0f, 180.0f - f);
        double dSin = Math.sin(Math.toRadians(f));
        double d = f3;
        Double.isNaN(d);
        double d2 = f2;
        Double.isNaN(d2);
        double dSin2 = Math.sin(Math.toRadians(90.0f - f));
        Double.isNaN(d);
        Double.isNaN(d2);
        cif.m14065final((float) (dSin * d * d2), (float) (dSin2 * d * d2));
    }

    @Deprecated
    public it(float f) {
        this.f2875do = -1.0f;
        this.f2875do = f;
    }
}
