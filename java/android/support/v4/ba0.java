package android.support.v4;

import java.io.IOException;
import net.lingala.zip4j.io.inputstream.Ccase;
import net.lingala.zip4j.io.inputstream.Cthis;

/* loaded from: classes3.dex */
public class ba0 extends Cprotected<Cdo> {

    /* renamed from: case, reason: not valid java name */
    private Ccase f393case;

    /* renamed from: try, reason: not valid java name */
    private char[] f394try;

    /* renamed from: android.support.v4.ba0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private String f395do;

        public Cdo(String str) {
            this.f395do = str;
        }
    }

    public ba0(uf1 uf1Var, boolean z, rk2 rk2Var, char[] cArr) {
        super(uf1Var, z, rk2Var);
        this.f394try = cArr;
    }

    /* renamed from: throw, reason: not valid java name */
    private oa0 m490throw(rk2 rk2Var) {
        if (rk2Var.m7038if() == null || rk2Var.m7038if().m9135if() == null || rk2Var.m7038if().m9135if().size() == 0) {
            return null;
        }
        return rk2Var.m7038if().m9135if().get(0);
    }

    /* renamed from: while, reason: not valid java name */
    private Cthis m491while() throws IOException {
        this.f393case = new Ccase(m6214catch().m7027catch(), m6214catch().m7029const(), m6214catch().m7051try().m9068new());
        oa0 oa0VarM490throw = m490throw(m6214catch());
        if (oa0VarM490throw != null) {
            this.f393case.m31456for(oa0VarM490throw);
        }
        return new Cthis(this.f393case, this.f394try);
    }

    @Override // android.support.v4.f4
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(Cdo cdo) {
        long jM8093super = 0;
        for (oa0 oa0Var : m6214catch().m7038if().m9135if()) {
            jM8093super += (oa0Var.m8102while() == null || oa0Var.m8102while().m6089else() <= 0) ? oa0Var.m8093super() : oa0Var.m8102while().m6089else();
        }
        return jM8093super;
    }

    @Override // android.support.v4.f4
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(Cdo cdo, uf1 uf1Var) throws IOException {
        try {
            Cthis cthisM491while = m491while();
            try {
                for (oa0 oa0Var : m6214catch().m7038if().m9135if()) {
                    if (oa0Var.m8069catch().startsWith("__MACOSX")) {
                        uf1Var.m8427throws(oa0Var.m8093super());
                        cthisM491while.m31495else(oa0Var);
                    } else {
                        this.f393case.m31456for(oa0Var);
                        this.f393case.skip(cthisM491while.m31496for());
                        m6213break(cthisM491while, oa0Var, cdo.f395do, null, uf1Var);
                        m2136goto();
                    }
                }
                if (cthisM491while != null) {
                    cthisM491while.close();
                }
            } finally {
            }
        } finally {
            Ccase ccase = this.f393case;
            if (ccase != null) {
                ccase.close();
            }
        }
    }
}
