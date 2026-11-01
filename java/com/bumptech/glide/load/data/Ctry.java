package com.bumptech.glide.load.data;

import android.support.v4.t3;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.data.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry extends FilterInputStream {

    /* renamed from: case, reason: not valid java name */
    private static final int f9542case;

    /* renamed from: for, reason: not valid java name */
    private static final int f9543for = 2;

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f9544new;

    /* renamed from: try, reason: not valid java name */
    private static final int f9545try;

    /* renamed from: do, reason: not valid java name */
    private final byte f9546do;

    /* renamed from: if, reason: not valid java name */
    private int f9547if;

    static {
        byte[] bArr = {-1, ExifInterface.MARKER_APP1, 0, t3.f6403strictfp, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f9544new = bArr;
        int length = bArr.length;
        f9545try = length;
        f9542case = length + 2;
    }

    public Ctry(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f9546do = (byte) i;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        int i2 = this.f9547if;
        int i3 = (i2 < 2 || i2 > (i = f9542case)) ? super.read() : i2 == i ? this.f9546do : f9544new[i2 - 2] & 255;
        if (i3 != -1) {
            this.f9547if++;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = super.skip(j);
        if (jSkip > 0) {
            this.f9547if = (int) (this.f9547if + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.f9547if;
        int i5 = f9542case;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f9546do;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int iMin = Math.min(i5 - i4, i2);
            System.arraycopy(f9544new, this.f9547if - 2, bArr, i, iMin);
            i3 = iMin;
        }
        if (i3 > 0) {
            this.f9547if += i3;
        }
        return i3;
    }
}
