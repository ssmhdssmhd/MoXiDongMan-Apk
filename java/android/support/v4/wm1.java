package android.support.v4;

import android.support.v4.uf1;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.List;
import java.util.Random;
import net.lingala.zip4j.io.outputstream.Celse;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* loaded from: classes3.dex */
public class wm1 extends f4<oa0> {

    /* renamed from: for, reason: not valid java name */
    private rk2 f7571for;

    public wm1(uf1 uf1Var, boolean z, rk2 rk2Var) {
        super(uf1Var, z);
        this.f7571for = rk2Var;
    }

    /* renamed from: break, reason: not valid java name */
    private void m9231break(boolean z, File file, File file2) throws rj2 {
        if (z) {
            m9238throw(file, file2);
        } else {
            file2.delete();
        }
    }

    /* renamed from: class, reason: not valid java name */
    private long m9232class(int i, long j, List<oa0> list) {
        if (i == list.size() - 1) {
            return j - 1;
        }
        oa0 oa0Var = list.get(i + 1);
        long jG = oa0Var.g() - 1;
        return (oa0Var.m8102while() == null || oa0Var.m8102while().m6094try() == -1) ? jG : oa0Var.m8102while().m6094try() - 1;
    }

    /* renamed from: const, reason: not valid java name */
    private long m9233const(oa0 oa0Var) {
        long jG = oa0Var.g();
        return (oa0Var.m8102while() == null || oa0Var.m8102while().m6094try() == -1) ? jG : oa0Var.m8102while().m6094try();
    }

    /* renamed from: final, reason: not valid java name */
    private long m9234final(rk2 rk2Var) {
        long jM9060case = rk2Var.m7051try().m9060case();
        return (!rk2Var.m7034final() || rk2Var.m7025break() == null) ? jM9060case : rk2Var.m7025break().m5676case();
    }

    /* renamed from: import, reason: not valid java name */
    private void m9235import(List<oa0> list, long j, long j2, int i) {
        while (i < list.size()) {
            oa0 oa0Var = list.get(i);
            long jG = oa0Var.g();
            if (oa0Var.m8102while() != null && oa0Var.m8102while().m6094try() != -1) {
                jG = oa0Var.m8102while().m6094try();
            }
            oa0Var.n((jG - (j - j2)) - 1);
            i++;
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m9236native(rk2 rk2Var, Celse celse, int i, long j, long j2) throws IOException {
        m9239while(rk2Var, celse);
        rk2Var.m7038if().m9135if().remove(i);
        m9235import(rk2Var.m7038if().m9135if(), j, j2, i);
        new gj0().m2715if(rk2Var, celse);
    }

    /* renamed from: super, reason: not valid java name */
    private File m9237super(String str) {
        Random random = new Random();
        File file = new File(str + random.nextInt(FastDtoa.kTen4));
        while (file.exists()) {
            file = new File(str + random.nextInt(FastDtoa.kTen4));
        }
        return file;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m9238throw(File file, File file2) throws rj2 {
        if (!file.delete()) {
            throw new rj2("cannot delete old zip file");
        }
        if (!file2.renameTo(file)) {
            throw new rj2("cannot rename modified zip file");
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m9239while(rk2 rk2Var, Celse celse) throws IOException {
        w70 w70VarM7051try = rk2Var.m7051try();
        w70VarM7051try.m9063const(celse.m31521for());
        w70VarM7051try.m9069super(w70VarM7051try.m9067goto() - 1);
        w70VarM7051try.m9071throw(w70VarM7051try.m9070this() - 1);
        rk2Var.m7040native(w70VarM7051try);
    }

    @Override // android.support.v4.f4
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(oa0 oa0Var, uf1 uf1Var) throws Throwable {
        Throwable th;
        if (this.f7571for.m7029const()) {
            throw new rj2("This is a split archive. Zip file format does not allow updating split/spanned files");
        }
        File fileM9237super = m9237super(this.f7571for.m7027catch().getPath());
        boolean z = false;
        try {
            Celse celse = new Celse(fileM9237super);
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f7571for.m7027catch(), el1.READ.getValue());
                try {
                    int iM2317new = fj0.m2317new(this.f7571for, oa0Var);
                    long jM9233const = m9233const(oa0Var);
                    long jM9234final = m9234final(this.f7571for);
                    List<oa0> listM9135if = this.f7571for.m7038if().m9135if();
                    long jM9232class = m9232class(iM2317new, jM9234final, listM9135if);
                    if (iM2317new == 0) {
                        if (this.f7571for.m7038if().m9135if().size() > 1) {
                            db0.m1210try(randomAccessFile, celse, jM9232class + 1, jM9234final, uf1Var);
                        }
                    } else if (iM2317new == listM9135if.size() - 1) {
                        db0.m1210try(randomAccessFile, celse, 0L, jM9233const, uf1Var);
                    } else {
                        db0.m1210try(randomAccessFile, celse, 0L, jM9233const, uf1Var);
                        db0.m1210try(randomAccessFile, celse, jM9232class + 1, jM9234final, uf1Var);
                    }
                    m2136goto();
                    m9236native(this.f7571for, celse, iM2317new, jM9232class, jM9233const);
                    try {
                        randomAccessFile.close();
                        try {
                            celse.close();
                            m9231break(true, this.f7571for.m7027catch(), fileM9237super);
                        } catch (Throwable th2) {
                            th = th2;
                            z = true;
                            m9231break(z, this.f7571for.m7027catch(), fileM9237super);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        z = true;
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            try {
                                celse.close();
                                throw th4;
                            } catch (Throwable th5) {
                                th.addSuppressed(th5);
                                throw th4;
                            }
                        }
                    }
                } finally {
                }
            } catch (Throwable th6) {
                th = th6;
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            m9231break(z, this.f7571for.m7027catch(), fileM9237super);
            throw th;
        }
    }

    @Override // android.support.v4.f4
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(oa0 oa0Var) {
        return this.f7571for.m7027catch().length() - oa0Var.m8085new();
    }

    @Override // android.support.v4.f4
    /* renamed from: try */
    public uf1.Cfor mo173try() {
        return uf1.Cfor.REMOVE_ENTRY;
    }
}
