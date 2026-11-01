package android.support.v4;

import android.support.v4.uf1;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import net.lingala.zip4j.io.outputstream.Cbreak;
import net.lingala.zip4j.io.outputstream.Celse;

/* renamed from: android.support.v4.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cabstract<T> extends f4<T> {

    /* renamed from: for, reason: not valid java name */
    private rk2 f85for;

    /* renamed from: new, reason: not valid java name */
    private char[] f86new;

    /* renamed from: try, reason: not valid java name */
    private gj0 f87try;

    public Cabstract(uf1 uf1Var, boolean z, rk2 rk2Var, char[] cArr, gj0 gj0Var) {
        super(uf1Var, z);
        this.f85for = rk2Var;
        this.f86new = cArr;
        this.f87try = gj0Var;
    }

    /* renamed from: catch, reason: not valid java name */
    private sk2 m165catch(sk2 sk2Var, File file, uf1 uf1Var) throws IOException {
        sk2 sk2Var2 = new sk2(sk2Var);
        sk2Var2.m7492package(mj2.m4934case(file.lastModified()));
        if (file.isDirectory()) {
            sk2Var2.m7480default(0L);
        } else {
            sk2Var2.m7480default(file.length());
        }
        sk2Var2.m7497strictfp(false);
        sk2Var2.m7492package(file.lastModified());
        if (!mj2.m4939try(sk2Var.m7500this())) {
            sk2Var2.m7483extends(db0.m1208this(file.getAbsolutePath(), sk2Var.m7503try()));
        }
        if (file.isDirectory()) {
            sk2Var2.m7494public(hq.STORE);
            sk2Var2.m7499switch(t70.NONE);
            sk2Var2.m7496static(false);
        } else {
            if (sk2Var2.m7476catch() && sk2Var2.m7475case() == t70.ZIP_STANDARD) {
                uf1Var.m8426throw(uf1.Cfor.CALCULATE_CRC);
                sk2Var2.m7502throws(ks.m4482do(file, uf1Var));
                uf1Var.m8426throw(uf1.Cfor.ADD_ENTRY);
            }
            if (file.length() == 0) {
                sk2Var2.m7494public(hq.STORE);
            }
        }
        return sk2Var2;
    }

    /* renamed from: final, reason: not valid java name */
    private void m166final(oa0 oa0Var, uf1 uf1Var) throws rj2 {
        new wm1(uf1Var, false, this.f85for).m2135for(oa0Var);
    }

    /* renamed from: super, reason: not valid java name */
    private List<File> m167super(List<File> list, sk2 sk2Var, uf1 uf1Var) throws rj2 {
        ArrayList arrayList = new ArrayList(list);
        if (!this.f85for.m7027catch().exists()) {
            return arrayList;
        }
        for (File file : list) {
            oa0 oa0VarM2316if = fj0.m2316if(this.f85for, db0.m1208this(file.getAbsolutePath(), sk2Var.m7503try()));
            if (oa0VarM2316if != null) {
                if (sk2Var.m7478const()) {
                    uf1Var.m8426throw(uf1.Cfor.REMOVE_ENTRY);
                    m166final(oa0VarM2316if, uf1Var);
                    m2136goto();
                    uf1Var.m8426throw(uf1.Cfor.ADD_ENTRY);
                } else {
                    arrayList.remove(file);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: break, reason: not valid java name */
    public long m168break(List<File> list, sk2 sk2Var) throws rj2 {
        long length = 0;
        for (File file : list) {
            if (file.exists()) {
                length += (sk2Var.m7476catch() && sk2Var.m7475case() == t70.ZIP_STANDARD) ? file.length() * 2 : file.length();
                oa0 oa0VarM2316if = fj0.m2316if(m169class(), db0.m1208this(file.getAbsolutePath(), sk2Var.m7503try()));
                if (oa0VarM2316if != null) {
                    length += m169class().m7027catch().length() - oa0VarM2316if.m8085new();
                }
            }
        }
        return length;
    }

    /* renamed from: class, reason: not valid java name */
    public rk2 m169class() {
        return this.f85for;
    }

    /* renamed from: const, reason: not valid java name */
    public Cbreak m170const(Celse celse) throws IOException {
        if (this.f85for.m7027catch().exists()) {
            if (this.f85for.m7051try() == null) {
                throw new rj2("invalid end of central directory record");
            }
            celse.m31522goto(this.f85for.m7051try().m9060case());
        }
        return new Cbreak(celse, this.f86new, this.f85for);
    }

    /* renamed from: this, reason: not valid java name */
    public void m171this(List<File> list, uf1 uf1Var, sk2 sk2Var) throws IOException {
        List<File> listM167super = m167super(list, sk2Var, uf1Var);
        Celse celse = new Celse(this.f85for.m7027catch(), this.f85for.m7032else());
        try {
            Cbreak cbreakM170const = m170const(celse);
            try {
                byte[] bArr = new byte[4096];
                for (File file : listM167super) {
                    m2136goto();
                    sk2 sk2VarM165catch = m165catch(sk2Var, file, uf1Var);
                    uf1Var.m8417import(file.getAbsolutePath());
                    cbreakM170const.m31508goto(sk2VarM165catch);
                    if (file.isDirectory()) {
                        cbreakM170const.m31507do();
                    } else {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        while (true) {
                            try {
                                int i = fileInputStream.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                cbreakM170const.write(bArr, 0, i);
                                uf1Var.m8427throws(i);
                                m2136goto();
                            } finally {
                            }
                        }
                        fileInputStream.close();
                        oa0 oa0VarM31507do = cbreakM170const.m31507do();
                        oa0VarM31507do.j(db0.m1193case(file));
                        m172throw(oa0VarM31507do, celse);
                    }
                }
                if (cbreakM170const != null) {
                    cbreakM170const.close();
                }
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

    /* renamed from: throw, reason: not valid java name */
    public void m172throw(oa0 oa0Var, Celse celse) throws IOException {
        this.f87try.m2714goto(oa0Var, m169class(), celse);
    }

    @Override // android.support.v4.f4
    /* renamed from: try, reason: not valid java name */
    public uf1.Cfor mo173try() {
        return uf1.Cfor.ADD_ENTRY;
    }

    /* renamed from: while, reason: not valid java name */
    public void m174while(sk2 sk2Var) throws rj2 {
        if (sk2Var == null) {
            throw new rj2("cannot validate zip parameters");
        }
        if (sk2Var.m7491new() != hq.STORE && sk2Var.m7491new() != hq.DEFLATE) {
            throw new rj2("unsupported compression type");
        }
        if (!sk2Var.m7476catch()) {
            sk2Var.m7499switch(t70.NONE);
        } else {
            if (sk2Var.m7475case() == t70.NONE) {
                throw new rj2("Encryption method has to be set, when encrypt files flag is set");
            }
            char[] cArr = this.f86new;
            if (cArr == null || cArr.length <= 0) {
                throw new rj2("input password is empty or null");
            }
        }
    }
}
