package android.support.v4;

import androidx.annotation.NonNull;
import com.google.android.material.shape.Cif;

/* loaded from: classes.dex */
public class w82 extends a60 {

    /* renamed from: do, reason: not valid java name */
    private final float f7416do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f7417if;

    public w82(float f, boolean z) {
        this.f7416do = f;
        this.f7417if = z;
    }

    @Override // android.support.v4.a60
    /* renamed from: if */
    public void mo51if(float f, float f2, float f3, @NonNull Cif cif) {
        cif.m14065final(f2 - (this.f7416do * f3), 0.0f);
        cif.m14065final(f2, (this.f7417if ? this.f7416do : -this.f7416do) * f3);
        cif.m14065final(f2 + (this.f7416do * f3), 0.0f);
        cif.m14065final(f, 0.0f);
    }
}
