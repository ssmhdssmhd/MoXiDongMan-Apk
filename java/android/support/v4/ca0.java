package android.support.v4;

import java.io.IOException;
import net.lingala.zip4j.io.inputstream.Ccase;
import net.lingala.zip4j.io.inputstream.Cthis;

/* loaded from: classes3.dex */
public class ca0 extends Cprotected<Cdo> {

    /* renamed from: case, reason: not valid java name */
    private Ccase f661case;

    /* renamed from: try, reason: not valid java name */
    private char[] f662try;

    /* renamed from: android.support.v4.ca0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private String f663do;

        /* renamed from: for, reason: not valid java name */
        private String f664for;

        /* renamed from: if, reason: not valid java name */
        private oa0 f665if;

        public Cdo(String str, oa0 oa0Var, String str2) {
            this.f663do = str;
            this.f665if = oa0Var;
            this.f664for = str2;
        }
    }

    public ca0(uf1 uf1Var, boolean z, rk2 rk2Var, char[] cArr) {
        super(uf1Var, z, rk2Var);
        this.f662try = cArr;
    }

    @Override // android.support.v4.f4
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(Cdo cdo) {
        return cdo.f665if.m8093super();
    }

    /* renamed from: super, reason: not valid java name */
    public Cthis m824super(oa0 oa0Var) throws IOException {
        Ccase ccase = new Ccase(m6214catch().m7027catch(), m6214catch().m7029const(), m6214catch().m7051try().m9068new());
        this.f661case = ccase;
        ccase.m31456for(oa0Var);
        return new Cthis(this.f661case, this.f662try);
    }

    @Override // android.support.v4.f4
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(Cdo cdo, uf1 uf1Var) throws IOException {
        try {
            Cthis cthisM824super = m824super(cdo.f665if);
            try {
                m6213break(cthisM824super, cdo.f665if, cdo.f663do, cdo.f664for, uf1Var);
                if (cthisM824super != null) {
                    cthisM824super.close();
                }
            } finally {
            }
        } finally {
            Ccase ccase = this.f661case;
            if (ccase != null) {
                ccase.close();
            }
        }
    }
}
