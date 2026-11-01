package net.lingala.zip4j.io.inputstream;

import android.support.v4.aa0;
import android.support.v4.b9;
import android.support.v4.db0;
import android.support.v4.dj0;
import android.support.v4.ej0;
import android.support.v4.hq;
import android.support.v4.mj2;
import android.support.v4.mu0;
import android.support.v4.oa0;
import android.support.v4.on0;
import android.support.v4.rj2;
import android.support.v4.rw;
import android.support.v4.t70;
import android.support.v4.x0;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;

/* renamed from: net.lingala.zip4j.io.inputstream.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends InputStream {

    /* renamed from: case, reason: not valid java name */
    private CRC32 f28141case;

    /* renamed from: do, reason: not valid java name */
    private PushbackInputStream f28142do;

    /* renamed from: else, reason: not valid java name */
    private boolean f28143else;

    /* renamed from: for, reason: not valid java name */
    private dj0 f28144for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f28145goto;

    /* renamed from: if, reason: not valid java name */
    private Cfor f28146if;

    /* renamed from: new, reason: not valid java name */
    private char[] f28147new;

    /* renamed from: try, reason: not valid java name */
    private mu0 f28148try;

    public Cthis(InputStream inputStream) {
        this(inputStream, null);
    }

    /* renamed from: break, reason: not valid java name */
    private Cfor m31479break(mu0 mu0Var) throws IOException {
        return m31490this(m31485goto(new Cgoto(this.f28142do, m31488new(mu0Var)), mu0Var), mu0Var);
    }

    /* renamed from: catch, reason: not valid java name */
    private boolean m31480catch(mu0 mu0Var) {
        return mu0Var.m8089public() && t70.ZIP_STANDARD.equals(mu0Var.m8079goto());
    }

    /* renamed from: class, reason: not valid java name */
    private boolean m31481class(String str) {
        return str.endsWith(on0.f4694final) || str.endsWith("\\");
    }

    /* renamed from: const, reason: not valid java name */
    private boolean m31482const(mu0 mu0Var) {
        return b9.m476do(mu0Var.m8071const()[0], 3);
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m31483do(List<aa0> list) {
        if (list == null) {
            return false;
        }
        Iterator<aa0> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().m113new() == ej0.ZIP64_EXTRA_FIELD_SIGNATURE.getValue()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    private void m31484final() throws IOException {
        if (m31482const(this.f28148try)) {
            rw rwVarM1361this = this.f28144for.m1361this(this.f28142do, m31483do(this.f28148try.m8096this()));
            this.f28148try.m8094switch(rwVarM1361this.m7181for());
            this.f28148try.m8082instanceof(rwVarM1361this.m7184try());
            this.f28148try.m8073default(rwVarM1361this.m7183new());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private Cif m31485goto(Cgoto cgoto, mu0 mu0Var) throws IOException {
        return !mu0Var.m8089public() ? new Ctry(cgoto, mu0Var, this.f28147new) : mu0Var.m8079goto() == t70.AES ? new Cdo(cgoto, mu0Var, this.f28147new) : new Cbreak(cgoto, mu0Var, this.f28147new);
    }

    /* renamed from: if, reason: not valid java name */
    private void m31486if() throws IOException {
        this.f28146if.mo31467for(this.f28142do);
        this.f28146if.mo31466do(this.f28142do);
        m31484final();
        m31493while();
        m31491throw();
    }

    /* renamed from: import, reason: not valid java name */
    private void m31487import(mu0 mu0Var) throws IOException {
        if (m31481class(mu0Var.m8069catch()) || mu0Var.m8100try() != hq.STORE || mu0Var.m8093super() >= 0) {
            return;
        }
        throw new IOException("Invalid local file header for: " + mu0Var.m8069catch() + ". Uncompressed size has to be set for entry of compression type store which is not a directory");
    }

    /* renamed from: new, reason: not valid java name */
    private long m31488new(mu0 mu0Var) {
        if (mj2.m4938new(mu0Var).equals(hq.STORE)) {
            return mu0Var.m8093super();
        }
        if (mu0Var.m8081import()) {
            return -1L;
        }
        long jM8085new = mu0Var.m8085new();
        if (mu0Var.m8102while() != null) {
            jM8085new = mu0Var.m8102while().m6090for();
        }
        return jM8085new - m31492try(mu0Var);
    }

    /* renamed from: super, reason: not valid java name */
    private void m31489super() throws IOException {
        if (this.f28145goto == null) {
            this.f28145goto = new byte[512];
        }
        while (read(this.f28145goto) != -1) {
        }
    }

    /* renamed from: this, reason: not valid java name */
    private Cfor m31490this(Cif cif, mu0 mu0Var) {
        return mj2.m4938new(mu0Var) == hq.DEFLATE ? new Cnew(cif) : new Celse(cif);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m31491throw() {
        this.f28148try = null;
        this.f28141case.reset();
    }

    /* renamed from: try, reason: not valid java name */
    private int m31492try(mu0 mu0Var) {
        if (mu0Var.m8089public()) {
            return mu0Var.m8079goto().equals(t70.AES) ? mu0Var.m8078for().m2758for().getSaltLength() + 12 : mu0Var.m8079goto().equals(t70.ZIP_STANDARD) ? 12 : 0;
        }
        return 0;
    }

    /* renamed from: while, reason: not valid java name */
    private void m31493while() throws IOException {
        if ((this.f28148try.m8079goto() == t70.AES && this.f28148try.m8078for().m2760new().equals(x0.TWO)) || this.f28148try.m8068case() == this.f28141case.getValue()) {
            return;
        }
        rj2.Cdo cdo = rj2.Cdo.UNKNOWN;
        if (m31480catch(this.f28148try)) {
            cdo = rj2.Cdo.WRONG_PASSWORD;
        }
        throw new rj2("Reached end of entry, but crc verification failed for " + this.f28148try.m8069catch(), cdo);
    }

    /* renamed from: case, reason: not valid java name */
    public mu0 m31494case() throws IOException {
        return m31495else(null);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Cfor cfor = this.f28146if;
        if (cfor != null) {
            cfor.close();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public mu0 m31495else(oa0 oa0Var) throws IOException {
        if (this.f28148try != null) {
            m31489super();
        }
        mu0 mu0VarM1360super = this.f28144for.m1360super(this.f28142do);
        this.f28148try = mu0VarM1360super;
        if (mu0VarM1360super == null) {
            return null;
        }
        m31487import(mu0VarM1360super);
        this.f28141case.reset();
        if (oa0Var != null) {
            this.f28148try.m8073default(oa0Var.m8068case());
            this.f28148try.m8094switch(oa0Var.m8085new());
            this.f28148try.m8082instanceof(oa0Var.m8093super());
        }
        if (!db0.m1209throw(this.f28148try.m8069catch())) {
            this.f28146if = m31479break(this.f28148try);
        }
        this.f28143else = false;
        return this.f28148try;
    }

    /* renamed from: for, reason: not valid java name */
    public int m31496for() throws IOException {
        return this.f28142do.available();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr) == -1) {
            return -1;
        }
        return bArr[0];
    }

    public Cthis(InputStream inputStream, char[] cArr) {
        this.f28144for = new dj0();
        this.f28141case = new CRC32();
        this.f28143else = false;
        this.f28142do = new PushbackInputStream(inputStream, 512);
        this.f28147new = cArr;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 0) {
            throw new IllegalArgumentException("Negative read length");
        }
        if (i2 == 0) {
            return 0;
        }
        mu0 mu0Var = this.f28148try;
        if (mu0Var == null) {
            return -1;
        }
        if (mu0Var.m8084native()) {
            if (!this.f28143else) {
                m31484final();
                this.f28143else = true;
            }
            return -1;
        }
        try {
            int i3 = this.f28146if.read(bArr, i, i2);
            if (i3 == -1) {
                m31486if();
            } else {
                this.f28141case.update(bArr, i, i3);
            }
            return i3;
        } catch (IOException e) {
            if (e.getCause() != null && (e.getCause() instanceof DataFormatException) && m31480catch(this.f28148try)) {
                throw new rj2(e.getMessage(), e.getCause(), rj2.Cdo.WRONG_PASSWORD);
            }
            throw e;
        }
    }
}
