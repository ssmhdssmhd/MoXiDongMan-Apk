package android.support.v4;

import android.support.v4.uf1;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public class m0 extends Cabstract<Cdo> {

    /* renamed from: android.support.v4.m0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private List<File> f3813do;

        /* renamed from: if, reason: not valid java name */
        private sk2 f3814if;

        public Cdo(List<File> list, sk2 sk2Var) {
            this.f3813do = list;
            this.f3814if = sk2Var;
        }
    }

    public m0(uf1 uf1Var, boolean z, rk2 rk2Var, char[] cArr, gj0 gj0Var) {
        super(uf1Var, z, rk2Var, cArr, gj0Var);
    }

    @Override // android.support.v4.f4
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(Cdo cdo) throws rj2 {
        return m168break(cdo.f3813do, cdo.f3814if);
    }

    @Override // android.support.v4.f4
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(Cdo cdo, uf1 uf1Var) throws IOException {
        m174while(cdo.f3814if);
        m171this(cdo.f3813do, uf1Var, cdo.f3814if);
    }

    @Override // android.support.v4.Cabstract, android.support.v4.f4
    /* renamed from: try */
    public uf1.Cfor mo173try() {
        return super.mo173try();
    }
}
