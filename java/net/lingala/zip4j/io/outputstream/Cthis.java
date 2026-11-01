package net.lingala.zip4j.io.outputstream;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: net.lingala.zip4j.io.outputstream.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private long f28173do = 0;

    /* renamed from: for, reason: not valid java name */
    private boolean f28174for = false;

    /* renamed from: if, reason: not valid java name */
    private OutputStream f28175if;

    public Cthis(OutputStream outputStream) {
        this.f28175if = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    /* renamed from: do, reason: not valid java name */
    public void m31538do() throws IOException {
        this.f28174for = true;
    }

    /* renamed from: if, reason: not valid java name */
    public long m31539if() {
        return this.f28173do;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f28174for) {
            this.f28175if.write(bArr, i, i2);
            this.f28173do += i2;
            return;
        }
        throw new IllegalStateException("ZipEntryOutputStream is closed");
    }
}
