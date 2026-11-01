package net.lingala.zip4j.io.inputstream;

import android.support.v4.hq;
import android.support.v4.mu0;
import android.support.v4.rj2;
import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.crypto.Decrypter;

/* renamed from: net.lingala.zip4j.io.inputstream.if, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cif<T extends Decrypter> extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f28132do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f28133for;

    /* renamed from: if, reason: not valid java name */
    private T f28134if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f28135new = new byte[1];

    /* renamed from: try, reason: not valid java name */
    private mu0 f28136try;

    public Cif(Cgoto cgoto, mu0 mu0Var, char[] cArr) throws IOException {
        this.f28132do = cgoto;
        this.f28134if = (T) mo31453goto(mu0Var, cArr);
        this.f28136try = mu0Var;
        if (m31472for(mu0Var) == hq.DEFLATE) {
            this.f28133for = new byte[512];
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m31471do(byte[] bArr, int i) {
        byte[] bArr2 = this.f28133for;
        if (bArr2 != null) {
            System.arraycopy(bArr, 0, bArr2, 0, i);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private hq m31472for(mu0 mu0Var) throws rj2 {
        if (mu0Var.m8100try() != hq.AES_INTERNAL_ONLY) {
            return mu0Var.m8100try();
        }
        if (mu0Var.m8078for() != null) {
            return mu0Var.m8078for().m2762try();
        }
        throw new rj2("AesExtraDataRecord not present in localheader for aes encrypted data");
    }

    /* renamed from: case, reason: not valid java name */
    public mu0 m31473case() {
        return this.f28136try;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28132do.close();
    }

    /* renamed from: else, reason: not valid java name */
    public long m31474else() {
        return this.f28132do.m31469do();
    }

    /* renamed from: goto */
    public abstract T mo31453goto(mu0 mu0Var, char[] cArr) throws IOException;

    /* renamed from: if */
    public void mo31463if(InputStream inputStream) throws IOException {
    }

    /* renamed from: new, reason: not valid java name */
    public T m31475new() {
        return this.f28134if;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f28135new) == -1) {
            return -1;
        }
        return this.f28135new[0] & 255;
    }

    /* renamed from: this, reason: not valid java name */
    public int m31476this(byte[] bArr) throws IOException {
        return this.f28132do.m31470if(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m31477try() {
        return this.f28133for;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f28132do.read(bArr, i, i2);
        if (i3 > 0) {
            m31471do(bArr, i3);
            this.f28134if.decryptData(bArr, i, i3);
        }
        return i3;
    }
}
