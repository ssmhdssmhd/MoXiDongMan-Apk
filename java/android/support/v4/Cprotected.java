package android.support.v4;

import android.support.v4.uf1;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import net.lingala.zip4j.io.inputstream.Cthis;

/* renamed from: android.support.v4.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cprotected<T> extends f4<T> {

    /* renamed from: for, reason: not valid java name */
    private rk2 f5177for;

    /* renamed from: new, reason: not valid java name */
    private byte[] f5178new;

    public Cprotected(uf1 uf1Var, boolean z, rk2 rk2Var) {
        super(uf1Var, z);
        this.f5178new = new byte[4096];
        this.f5177for = rk2Var;
    }

    /* renamed from: class, reason: not valid java name */
    private void m6210class(Cthis cthis, oa0 oa0Var, String str, String str2, uf1 uf1Var) throws Exception {
        if (!mj2.m4939try(str2)) {
            str2 = oa0Var.m8069catch();
        }
        File file = new File(str + System.getProperty("file.separator") + str2);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            while (true) {
                try {
                    int i = cthis.read(this.f5178new);
                    if (i == -1) {
                        fileOutputStream.close();
                        wc2.m9119do(oa0Var, file);
                        return;
                    } else {
                        fileOutputStream.write(this.f5178new, 0, i);
                        uf1Var.m8427throws(i);
                        m2136goto();
                    }
                } finally {
                }
            }
        } catch (Exception e) {
            if (file.exists()) {
                file.delete();
            }
            throw e;
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m6211const(Cthis cthis, oa0 oa0Var) throws IOException {
        mu0 mu0VarM31495else = cthis.m31495else(oa0Var);
        if (mu0VarM31495else != null) {
            if (!oa0Var.m8069catch().equals(mu0VarM31495else.m8069catch())) {
                throw new rj2("File header and local file header mismatch");
            }
        } else {
            throw new rj2("Could not read corresponding local file header for file header: " + oa0Var.m8069catch());
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m6212this(oa0 oa0Var, String str, String str2) throws rj2 {
        String strM8069catch = oa0Var.m8069catch();
        if (!mj2.m4939try(str2)) {
            str2 = strM8069catch;
        }
        if (mj2.m4939try(str2)) {
            File file = new File(str + str2);
            if (file.getParentFile().exists() || file.getParentFile().mkdirs()) {
                return;
            }
            throw new rj2("Unable to create parent directories: " + file.getParentFile());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m6213break(Cthis cthis, oa0 oa0Var, String str, String str2, uf1 uf1Var) throws Exception {
        uf1Var.m8417import(oa0Var.m8069catch());
        String str3 = on0.f4691const;
        if (!str.endsWith(str3)) {
            str = str + str3;
        }
        String str4 = str;
        String str5 = str4 + oa0Var.m8069catch();
        if (!new File(str5).getCanonicalPath().startsWith(new File(str4).getPath())) {
            throw new rj2("illegal file name that breaks out of the target directory: " + oa0Var.m8069catch());
        }
        m6211const(cthis, oa0Var);
        if (!oa0Var.m8084native()) {
            m6212this(oa0Var, str4, str2);
            m6210class(cthis, oa0Var, str4, str2, uf1Var);
            return;
        }
        File file = new File(str5);
        if (file.exists() || file.mkdirs()) {
            return;
        }
        throw new rj2("Could not create directory: " + file);
    }

    /* renamed from: catch, reason: not valid java name */
    public rk2 m6214catch() {
        return this.f5177for;
    }

    @Override // android.support.v4.f4
    /* renamed from: try */
    public uf1.Cfor mo173try() {
        return uf1.Cfor.EXTRACT_ENTRY;
    }
}
