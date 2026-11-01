package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@li0
@o8
/* renamed from: com.google.common.io.class, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cclass extends FilterOutputStream {

    /* renamed from: do, reason: not valid java name */
    private long f15247do;

    public Cclass(OutputStream outputStream) {
        super((OutputStream) af1.m205continue(outputStream));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    /* renamed from: do, reason: not valid java name */
    public long m16989do() {
        return this.f15247do;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        this.f15247do += i2;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        ((FilterOutputStream) this).out.write(i);
        this.f15247do++;
    }
}
