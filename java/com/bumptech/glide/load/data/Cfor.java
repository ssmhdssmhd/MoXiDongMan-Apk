package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: com.bumptech.glide.load.data.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final OutputStream f9507do;

    /* renamed from: for, reason: not valid java name */
    private ArrayPool f9508for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f9509if;

    /* renamed from: new, reason: not valid java name */
    private int f9510new;

    public Cfor(@NonNull OutputStream outputStream, @NonNull ArrayPool arrayPool) {
        this(outputStream, arrayPool, 65536);
    }

    /* renamed from: do, reason: not valid java name */
    private void m11291do() throws IOException {
        int i = this.f9510new;
        if (i > 0) {
            this.f9507do.write(this.f9509if, 0, i);
            this.f9510new = 0;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m11292for() {
        byte[] bArr = this.f9509if;
        if (bArr != null) {
            this.f9508for.put(bArr);
            this.f9509if = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m11293if() throws IOException {
        if (this.f9510new == this.f9509if.length) {
            m11291do();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f9507do.close();
            m11292for();
        } catch (Throwable th) {
            this.f9507do.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m11291do();
        this.f9507do.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f9509if;
        int i2 = this.f9510new;
        this.f9510new = i2 + 1;
        bArr[i2] = (byte) i;
        m11293if();
    }

    @VisibleForTesting
    public Cfor(@NonNull OutputStream outputStream, ArrayPool arrayPool, int i) {
        this.f9507do = outputStream;
        this.f9508for = arrayPool;
        this.f9509if = (byte[]) arrayPool.get(i, byte[].class);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.f9510new;
            if (i6 == 0 && i4 >= this.f9509if.length) {
                this.f9507do.write(bArr, i5, i4);
                return;
            }
            int iMin = Math.min(i4, this.f9509if.length - i6);
            System.arraycopy(bArr, i5, this.f9509if, this.f9510new, iMin);
            this.f9510new += iMin;
            i3 += iMin;
            m11293if();
        } while (i3 < i2);
    }
}
