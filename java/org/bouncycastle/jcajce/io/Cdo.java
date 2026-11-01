package org.bouncycastle.jcajce.io;

import android.support.v4.un0;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* renamed from: org.bouncycastle.jcajce.io.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends FilterInputStream {

    /* renamed from: case, reason: not valid java name */
    private int f30955case;

    /* renamed from: do, reason: not valid java name */
    private final Cipher f30956do;

    /* renamed from: for, reason: not valid java name */
    private boolean f30957for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30958if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30959new;

    /* renamed from: try, reason: not valid java name */
    private int f30960try;

    public Cdo(InputStream inputStream, Cipher cipher) {
        super(inputStream);
        this.f30958if = new byte[512];
        this.f30957for = false;
        this.f30956do = cipher;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m34584do() throws un0 {
        try {
            this.f30957for = true;
            return this.f30956do.doFinal();
        } catch (GeneralSecurityException e) {
            throw new un0("Error finalising cipher", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private int m34585if() throws IOException {
        if (this.f30957for) {
            return -1;
        }
        this.f30955case = 0;
        this.f30960try = 0;
        while (true) {
            int i = this.f30960try;
            if (i != 0) {
                return i;
            }
            int i2 = ((FilterInputStream) this).in.read(this.f30958if);
            if (i2 == -1) {
                byte[] bArrM34584do = m34584do();
                this.f30959new = bArrM34584do;
                if (bArrM34584do == null || bArrM34584do.length == 0) {
                    return -1;
                }
                int length = bArrM34584do.length;
                this.f30960try = length;
                return length;
            }
            byte[] bArrUpdate = this.f30956do.update(this.f30958if, 0, i2);
            this.f30959new = bArrUpdate;
            if (bArrUpdate != null) {
                this.f30960try = bArrUpdate.length;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.f30960try - this.f30955case;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
            this.f30955case = 0;
            this.f30960try = 0;
        } finally {
            if (!this.f30957for) {
                m34584do();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f30955case >= this.f30960try && m34585if() < 0) {
            return -1;
        }
        byte[] bArr = this.f30959new;
        int i = this.f30955case;
        this.f30955case = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f30955case >= this.f30960try && m34585if() < 0) {
            return -1;
        }
        int iMin = Math.min(i2, available());
        System.arraycopy(this.f30959new, this.f30955case, bArr, i, iMin);
        this.f30955case += iMin;
        return iMin;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        int iMin = (int) Math.min(j, available());
        this.f30955case += iMin;
        return iMin;
    }
}
