package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.o8;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

@o8
/* renamed from: com.google.common.hash.final, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfinal extends FilterInputStream {

    /* renamed from: do, reason: not valid java name */
    private final Hasher f15167do;

    public Cfinal(HashFunction hashFunction, InputStream inputStream) {
        super((InputStream) af1.m205continue(inputStream));
        this.f15167do = (Hasher) af1.m205continue(hashFunction.newHasher());
    }

    /* renamed from: do, reason: not valid java name */
    public Cclass m16943do() {
        return this.f15167do.hash();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    @lf
    public int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        if (i != -1) {
            this.f15167do.putByte((byte) i);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new IOException("reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    @lf
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (i3 != -1) {
            this.f15167do.putBytes(bArr, i, i3);
        }
        return i3;
    }
}
