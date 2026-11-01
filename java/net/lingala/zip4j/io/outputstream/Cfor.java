package net.lingala.zip4j.io.outputstream;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: net.lingala.zip4j.io.outputstream.for, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cfor extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private Cif f28168do;

    public Cfor(Cif cif) {
        this.f28168do = cif;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28168do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public void mo31526do() throws IOException {
        this.f28168do.mo31515do();
    }

    /* renamed from: if, reason: not valid java name */
    public long m31527if() {
        return this.f28168do.m31528for();
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
        this.f28168do.write(bArr, i, i2);
    }
}
