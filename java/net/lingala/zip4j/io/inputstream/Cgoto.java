package net.lingala.zip4j.io.inputstream;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: net.lingala.zip4j.io.inputstream.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private InputStream f28128do;

    /* renamed from: new, reason: not valid java name */
    private long f28131new;

    /* renamed from: if, reason: not valid java name */
    private long f28130if = 0;

    /* renamed from: for, reason: not valid java name */
    private byte[] f28129for = new byte[1];

    public Cgoto(InputStream inputStream, long j) {
        this.f28128do = inputStream;
        this.f28131new = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28128do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public long m31469do() {
        return this.f28130if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m31470if(byte[] bArr) throws IOException {
        return this.f28128do.read(bArr);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f28129for) == -1) {
            return -1;
        }
        return this.f28129for[0];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f28131new;
        if (j != -1) {
            long j2 = this.f28130if;
            if (j2 >= j) {
                return -1;
            }
            if (i2 > j - j2) {
                i2 = (int) (j - j2);
            }
        }
        int i3 = this.f28128do.read(bArr, i, i2);
        if (i3 > 0) {
            this.f28130if += i3;
        }
        return i3;
    }
}
