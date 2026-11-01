package android.support.v4;

import java.io.File;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public class n0 extends Cabstract<Cdo> {

    /* renamed from: android.support.v4.n0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private File f4098do;

        /* renamed from: if, reason: not valid java name */
        private sk2 f4099if;

        public Cdo(File file, sk2 sk2Var) {
            this.f4098do = file;
            this.f4099if = sk2Var;
        }
    }

    public n0(uf1 uf1Var, boolean z, rk2 rk2Var, char[] cArr, gj0 gj0Var) {
        super(uf1Var, z, rk2Var, cArr, gj0Var);
    }

    /* renamed from: public, reason: not valid java name */
    private List<File> m5062public(Cdo cdo) throws rj2 {
        List<File> listM1198else = db0.m1198else(cdo.f4098do, cdo.f4099if.m7484final(), cdo.f4099if.m7498super());
        if (cdo.f4099if.m7477class()) {
            listM1198else.add(cdo.f4098do);
        }
        return listM1198else;
    }

    /* renamed from: return, reason: not valid java name */
    private void m5063return(Cdo cdo) {
        File file = cdo.f4098do;
        cdo.f4099if.m7495return(cdo.f4099if.m7477class() ? file.getParentFile().getPath() : file.getAbsolutePath());
    }

    @Override // android.support.v4.f4
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(Cdo cdo) throws rj2 {
        List<File> listM1198else = db0.m1198else(cdo.f4098do, cdo.f4099if.m7484final(), cdo.f4099if.m7498super());
        if (cdo.f4099if.m7477class()) {
            listM1198else.add(cdo.f4098do);
        }
        return m168break(listM1198else, cdo.f4099if);
    }

    @Override // android.support.v4.f4
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(Cdo cdo, uf1 uf1Var) throws IOException {
        List<File> listM5062public = m5062public(cdo);
        m5063return(cdo);
        m171this(listM5062public, uf1Var, cdo.f4099if);
    }
}
