package net.lingala.zip4j.io.inputstream;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* renamed from: net.lingala.zip4j.io.inputstream.for, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cfor extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private Cif f28126do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f28127if = new byte[1];

    public Cfor(Cif cif) {
        this.f28126do = cif;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28126do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public void mo31466do(InputStream inputStream) throws IOException {
        this.f28126do.mo31463if(inputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public void mo31467for(PushbackInputStream pushbackInputStream) throws IOException {
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m31468if() {
        return this.f28126do.m31477try();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f28127if) == -1) {
            return -1;
        }
        return this.f28127if[0];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f28126do.read(bArr, i, i2);
    }
}
