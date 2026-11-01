package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.resource.bitmap.catch, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccatch extends FilterInputStream {

    /* renamed from: case, reason: not valid java name */
    private final ArrayPool f10145case;

    /* renamed from: do, reason: not valid java name */
    private volatile byte[] f10146do;

    /* renamed from: for, reason: not valid java name */
    private int f10147for;

    /* renamed from: if, reason: not valid java name */
    private int f10148if;

    /* renamed from: new, reason: not valid java name */
    private int f10149new;

    /* renamed from: try, reason: not valid java name */
    private int f10150try;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.catch$do, reason: invalid class name */
    public static class Cdo extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public Cdo(String str) {
            super(str);
        }
    }

    public Ccatch(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) {
        this(inputStream, arrayPool, 65536);
    }

    /* renamed from: do, reason: not valid java name */
    private int m11757do(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.f10149new;
        if (i != -1) {
            int i2 = this.f10150try - i;
            int i3 = this.f10147for;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f10148if == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f10145case.get(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f10146do = bArr2;
                    this.f10145case.put(bArr);
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.f10150try - this.f10149new;
                this.f10150try = i4;
                this.f10149new = 0;
                this.f10148if = 0;
                int i5 = inputStream.read(bArr, i4, bArr.length - i4);
                int i6 = this.f10150try;
                if (i5 > 0) {
                    i6 += i5;
                }
                this.f10148if = i6;
                return i5;
            }
        }
        int i7 = inputStream.read(bArr);
        if (i7 > 0) {
            this.f10149new = -1;
            this.f10150try = 0;
            this.f10148if = i7;
        }
        return i7;
    }

    /* renamed from: new, reason: not valid java name */
    private static IOException m11758new() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f10146do == null || inputStream == null) {
            throw m11758new();
        }
        return (this.f10148if - this.f10150try) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f10146do != null) {
            this.f10145case.put(this.f10146do);
            this.f10146do = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized void m11759for() {
        if (this.f10146do != null) {
            this.f10145case.put(this.f10146do);
            this.f10146do = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized void m11760if() {
        this.f10147for = this.f10146do.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.f10147for = Math.max(this.f10147for, i);
        this.f10149new = this.f10150try;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f10146do;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            throw m11758new();
        }
        if (this.f10150try >= this.f10148if && m11757do(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f10146do && (bArr = this.f10146do) == null) {
            throw m11758new();
        }
        int i = this.f10148if;
        int i2 = this.f10150try;
        if (i - i2 <= 0) {
            return -1;
        }
        this.f10150try = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f10146do == null) {
            throw new IOException("Stream is closed");
        }
        int i = this.f10149new;
        if (-1 == i) {
            throw new Cdo("Mark has been invalidated, pos: " + this.f10150try + " markLimit: " + this.f10147for);
        }
        this.f10150try = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f10146do;
        if (bArr == null) {
            throw m11758new();
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw m11758new();
        }
        int i = this.f10148if;
        int i2 = this.f10150try;
        if (i - i2 >= j) {
            this.f10150try = (int) (i2 + j);
            return j;
        }
        long j2 = i - i2;
        this.f10150try = i;
        if (this.f10149new == -1 || j > this.f10147for) {
            return j2 + inputStream.skip(j - j2);
        }
        if (m11757do(inputStream, bArr) == -1) {
            return j2;
        }
        int i3 = this.f10148if;
        int i4 = this.f10150try;
        if (i3 - i4 >= j - j2) {
            this.f10150try = (int) ((i4 + j) - j2);
            return j;
        }
        long j3 = (j2 + i3) - i4;
        this.f10150try = i3;
        return j3;
    }

    @VisibleForTesting
    public Ccatch(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool, int i) {
        super(inputStream);
        this.f10149new = -1;
        this.f10145case = arrayPool;
        this.f10146do = (byte[]) arrayPool.get(i, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        byte[] bArr2 = this.f10146do;
        if (bArr2 == null) {
            throw m11758new();
        }
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i5 = this.f10150try;
            int i6 = this.f10148if;
            if (i5 < i6) {
                int i7 = i6 - i5 >= i2 ? i2 : i6 - i5;
                System.arraycopy(bArr2, i5, bArr, i, i7);
                this.f10150try += i7;
                if (i7 == i2 || inputStream.available() == 0) {
                    return i7;
                }
                i += i7;
                i3 = i2 - i7;
            } else {
                i3 = i2;
            }
            while (true) {
                if (this.f10149new == -1 && i3 >= bArr2.length) {
                    i4 = inputStream.read(bArr, i, i3);
                    if (i4 == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                } else {
                    if (m11757do(inputStream, bArr2) == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                    if (bArr2 != this.f10146do && (bArr2 = this.f10146do) == null) {
                        throw m11758new();
                    }
                    int i8 = this.f10148if;
                    int i9 = this.f10150try;
                    i4 = i8 - i9 >= i3 ? i3 : i8 - i9;
                    System.arraycopy(bArr2, i9, bArr, i, i4);
                    this.f10150try += i4;
                }
                i3 -= i4;
                if (i3 == 0) {
                    return i2;
                }
                if (inputStream.available() == 0) {
                    return i2 - i3;
                }
                i += i4;
            }
        } else {
            throw m11758new();
        }
    }
}
