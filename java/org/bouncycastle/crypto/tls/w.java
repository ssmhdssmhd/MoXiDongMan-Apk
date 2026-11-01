package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
class w extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private byte[] f30818do = new byte[1];

    /* renamed from: if, reason: not valid java name */
    private a0 f30819if;

    public w(a0 a0Var) {
        this.f30819if = null;
        this.f30819if = a0Var;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f30819if.m33960do();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30819if.m33961else();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f30818do) < 0) {
            return -1;
        }
        return this.f30818do[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f30819if.e(bArr, i, i2);
    }
}
