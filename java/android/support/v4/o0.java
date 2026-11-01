package android.support.v4;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.io.outputstream.Cbreak;
import net.lingala.zip4j.io.outputstream.Celse;

/* loaded from: classes3.dex */
public class o0 extends Cabstract<Cdo> {

    /* renamed from: android.support.v4.o0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private InputStream f4392do;

        /* renamed from: if, reason: not valid java name */
        private sk2 f4393if;

        public Cdo(InputStream inputStream, sk2 sk2Var) {
            this.f4392do = inputStream;
            this.f4393if = sk2Var;
        }
    }

    public o0(uf1 uf1Var, boolean z, rk2 rk2Var, char[] cArr, gj0 gj0Var) {
        super(uf1Var, z, rk2Var, cArr, gj0Var);
    }

    @Override // android.support.v4.f4
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(Cdo cdo) {
        return 0L;
    }

    @Override // android.support.v4.f4
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(Cdo cdo, uf1 uf1Var) throws IOException {
        m174while(cdo.f4393if);
        cdo.f4393if.m7497strictfp(true);
        if (cdo.f4393if.m7491new().equals(hq.STORE)) {
            cdo.f4393if.m7480default(0L);
        }
        Celse celse = new Celse(m169class().m7027catch(), m169class().m7032else());
        try {
            Cbreak cbreakM170const = m170const(celse);
            try {
                byte[] bArr = new byte[4096];
                sk2 sk2Var = cdo.f4393if;
                cbreakM170const.m31508goto(sk2Var);
                if (!sk2Var.m7500this().endsWith(on0.f4694final) && !sk2Var.m7500this().endsWith("\\")) {
                    while (true) {
                        int i = cdo.f4392do.read(bArr);
                        if (i == -1) {
                            break;
                        } else {
                            cbreakM170const.write(bArr, 0, i);
                        }
                    }
                }
                oa0 oa0VarM31507do = cbreakM170const.m31507do();
                if (oa0VarM31507do.m8100try().equals(hq.STORE)) {
                    m172throw(oa0VarM31507do, celse);
                }
                cbreakM170const.close();
                celse.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    celse.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
