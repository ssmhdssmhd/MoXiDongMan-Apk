package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.o8;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@o8
/* renamed from: com.google.common.hash.super, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Csuper extends FilterOutputStream {

    /* renamed from: do, reason: not valid java name */
    private final Hasher f15207do;

    public Csuper(HashFunction hashFunction, OutputStream outputStream) {
        super((OutputStream) af1.m205continue(outputStream));
        this.f15207do = (Hasher) af1.m205continue(hashFunction.newHasher());
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    /* renamed from: do, reason: not valid java name */
    public Cclass m16965do() {
        return this.f15207do.hash();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.f15207do.putByte((byte) i);
        ((FilterOutputStream) this).out.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f15207do.putBytes(bArr, i, i2);
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
