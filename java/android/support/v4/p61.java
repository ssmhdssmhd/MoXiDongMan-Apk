package android.support.v4;

import androidx.annotation.NonNull;
import com.google.android.material.shape.Cif;

/* loaded from: classes.dex */
public final class p61 extends a60 {

    /* renamed from: do, reason: not valid java name */
    private final a60 f4861do;

    /* renamed from: if, reason: not valid java name */
    private final float f4862if;

    public p61(@NonNull a60 a60Var, float f) {
        this.f4861do = a60Var;
        this.f4862if = f;
    }

    @Override // android.support.v4.a60
    /* renamed from: do */
    public boolean mo49do() {
        return this.f4861do.mo49do();
    }

    @Override // android.support.v4.a60
    /* renamed from: if */
    public void mo51if(float f, float f2, float f3, @NonNull Cif cif) {
        this.f4861do.mo51if(f, f2 - this.f4862if, f3, cif);
    }
}
