package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

@li0
@o8
/* renamed from: com.google.common.io.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccatch extends FilterInputStream {

    /* renamed from: do, reason: not valid java name */
    private long f15245do;

    /* renamed from: if, reason: not valid java name */
    private long f15246if;

    public Ccatch(InputStream inputStream) {
        super((InputStream) af1.m205continue(inputStream));
        this.f15246if = -1L;
    }

    /* renamed from: do, reason: not valid java name */
    public long m16988do() {
        return this.f15245do;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.f15246if = this.f15245do;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i != -1) {
            this.f15245do++;
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f15246if == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f15245do = this.f15246if;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(j);
        this.f15245do += jSkip;
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 != -1) {
            this.f15245do += i3;
        }
        return i3;
    }
}
