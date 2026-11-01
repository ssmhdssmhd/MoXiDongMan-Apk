package android.support.v4;

import androidx.annotation.NonNull;
import com.google.android.material.shape.Cif;

/* loaded from: classes.dex */
public class ro1 extends yr {

    /* renamed from: do, reason: not valid java name */
    public float f5895do;

    public ro1() {
        this.f5895do = -1.0f;
    }

    @Override // android.support.v4.yr
    /* renamed from: if */
    public void mo3572if(@NonNull Cif cif, float f, float f2, float f3) {
        cif.m14070while(0.0f, f3 * f2, 180.0f, 180.0f - f);
        float f4 = f3 * 2.0f * f2;
        cif.m14063do(0.0f, 0.0f, f4, f4, 180.0f, f);
    }

    @Deprecated
    public ro1(float f) {
        this.f5895do = -1.0f;
        this.f5895do = f;
    }
}
