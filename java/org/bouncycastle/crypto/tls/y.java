package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
class y extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private byte[] f30841do = new byte[1];

    /* renamed from: if, reason: not valid java name */
    private a0 f30842if;

    public y(a0 a0Var) {
        this.f30842if = a0Var;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30842if.m33961else();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.f30842if.m33963final();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f30841do;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f30842if.s(bArr, i, i2);
    }
}
