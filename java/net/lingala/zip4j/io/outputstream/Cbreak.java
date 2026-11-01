package net.lingala.zip4j.io.outputstream;

import android.support.v4.ej0;
import android.support.v4.gj0;
import android.support.v4.hq;
import android.support.v4.jl1;
import android.support.v4.mu0;
import android.support.v4.oa0;
import android.support.v4.on0;
import android.support.v4.pa0;
import android.support.v4.rj2;
import android.support.v4.rk2;
import android.support.v4.sk2;
import android.support.v4.t70;
import android.support.v4.x0;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.CRC32;

/* renamed from: net.lingala.zip4j.io.outputstream.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends OutputStream {

    /* renamed from: break, reason: not valid java name */
    private jl1 f28149break;

    /* renamed from: case, reason: not valid java name */
    private mu0 f28150case;

    /* renamed from: catch, reason: not valid java name */
    private long f28151catch;

    /* renamed from: do, reason: not valid java name */
    private Cnew f28152do;

    /* renamed from: else, reason: not valid java name */
    private pa0 f28153else;

    /* renamed from: for, reason: not valid java name */
    private rk2 f28154for;

    /* renamed from: goto, reason: not valid java name */
    private gj0 f28155goto;

    /* renamed from: if, reason: not valid java name */
    private char[] f28156if;

    /* renamed from: new, reason: not valid java name */
    private Cfor f28157new;

    /* renamed from: this, reason: not valid java name */
    private CRC32 f28158this;

    /* renamed from: try, reason: not valid java name */
    private oa0 f28159try;

    public Cbreak(OutputStream outputStream) throws IOException {
        this(outputStream, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m31497break(sk2 sk2Var) {
        if (sk2Var.m7491new() == hq.STORE && sk2Var.m7487goto() < 0 && !m31501else(sk2Var.m7500this()) && sk2Var.m7501throw()) {
            throw new IllegalArgumentException("uncompressed size should be set for zip entries of compression type store");
        }
    }

    /* renamed from: case, reason: not valid java name */
    private rk2 m31498case(rk2 rk2Var, Cnew cnew) {
        if (rk2Var == null) {
            rk2Var = new rk2();
        }
        if (cnew.m31533else()) {
            rk2Var.m7045static(true);
            rk2Var.m7047switch(cnew.m31531case());
        }
        return rk2Var;
    }

    /* renamed from: catch, reason: not valid java name */
    private boolean m31499catch(oa0 oa0Var) {
        if (oa0Var.m8089public() && oa0Var.m8079goto().equals(t70.AES)) {
            return oa0Var.m8078for().m2760new().equals(x0.ONE);
        }
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    private void m31500class() throws IOException {
        if (this.f28152do.m31533else()) {
            this.f28149break.m3929super(this.f28152do, (int) ej0.SPLIT_ZIP.getValue());
        }
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m31501else(String str) {
        return str.endsWith(on0.f4694final) || str.endsWith("\\");
    }

    /* renamed from: for, reason: not valid java name */
    private Cif m31502for(Cthis cthis, sk2 sk2Var) throws IOException {
        if (!sk2Var.m7476catch()) {
            return new Ccase(cthis, sk2Var, null);
        }
        char[] cArr = this.f28156if;
        if (cArr == null || cArr.length == 0) {
            throw new rj2("password not set");
        }
        if (sk2Var.m7475case() == t70.AES) {
            return new Cdo(cthis, sk2Var, this.f28156if);
        }
        if (sk2Var.m7475case() == t70.ZIP_STANDARD) {
            return new Ccatch(cthis, sk2Var, this.f28156if);
        }
        throw new rj2("Invalid encryption method");
    }

    /* renamed from: if, reason: not valid java name */
    private void m31503if(sk2 sk2Var) throws IOException {
        oa0 oa0VarM5927new = this.f28153else.m5927new(sk2Var, this.f28152do.m31533else(), this.f28152do.m31535if());
        this.f28159try = oa0VarM5927new;
        oa0VarM5927new.n(this.f28152do.m31537try());
        mu0 mu0VarM5926case = this.f28153else.m5926case(this.f28159try);
        this.f28150case = mu0VarM5926case;
        this.f28155goto.m2712const(this.f28154for, mu0VarM5926case, this.f28152do);
    }

    /* renamed from: new, reason: not valid java name */
    private Cfor m31504new(sk2 sk2Var) throws IOException {
        return m31506try(m31502for(new Cthis(this.f28152do), sk2Var), sk2Var);
    }

    /* renamed from: this, reason: not valid java name */
    private void m31505this() throws IOException {
        this.f28151catch = 0L;
        this.f28158this.reset();
        this.f28157new.close();
    }

    /* renamed from: try, reason: not valid java name */
    private Cfor m31506try(Cif cif, sk2 sk2Var) {
        return sk2Var.m7491new() == hq.DEFLATE ? new Ctry(cif, sk2Var.m7486for()) : new Cgoto(cif);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28154for.m7051try().m9063const(this.f28152do.m31536new());
        this.f28155goto.m2715if(this.f28154for, this.f28152do);
        this.f28152do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public oa0 m31507do() throws IOException {
        this.f28157new.mo31526do();
        long jM31527if = this.f28157new.m31527if();
        this.f28159try.m8094switch(jM31527if);
        this.f28150case.m8094switch(jM31527if);
        this.f28159try.m8082instanceof(this.f28151catch);
        this.f28150case.m8082instanceof(this.f28151catch);
        if (m31499catch(this.f28159try)) {
            this.f28159try.m8073default(this.f28158this.getValue());
            this.f28150case.m8073default(this.f28158this.getValue());
        }
        this.f28154for.m7026case().add(this.f28150case);
        this.f28154for.m7038if().m9135if().add(this.f28159try);
        if (this.f28150case.m8081import()) {
            this.f28155goto.m2711catch(this.f28150case, this.f28152do);
        }
        m31505this();
        return this.f28159try;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m31508goto(sk2 sk2Var) throws IOException {
        m31497break(sk2Var);
        m31503if(sk2Var);
        this.f28157new = m31504new(sk2Var);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    public Cbreak(OutputStream outputStream, char[] cArr) throws IOException {
        this(outputStream, cArr, new rk2());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public Cbreak(OutputStream outputStream, char[] cArr, rk2 rk2Var) throws IOException {
        this.f28153else = new pa0();
        this.f28155goto = new gj0();
        this.f28158this = new CRC32();
        this.f28149break = new jl1();
        this.f28151catch = 0L;
        Cnew cnew = new Cnew(outputStream);
        this.f28152do = cnew;
        this.f28156if = cArr;
        this.f28154for = m31498case(rk2Var, cnew);
        m31500class();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f28158this.update(bArr, i, i2);
        this.f28157new.write(bArr, i, i2);
        this.f28151catch += i2;
    }
}
