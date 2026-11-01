package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.util.try, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctry extends FilterInputStream {

    /* renamed from: for, reason: not valid java name */
    private static final int f10500for = -1;

    /* renamed from: if, reason: not valid java name */
    private static final int f10501if = Integer.MIN_VALUE;

    /* renamed from: do, reason: not valid java name */
    private int f10502do;

    public Ctry(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f10502do = Integer.MIN_VALUE;
    }

    /* renamed from: do, reason: not valid java name */
    private long m12093do(long j) {
        int i = this.f10502do;
        if (i == 0) {
            return -1L;
        }
        return (i == Integer.MIN_VALUE || j <= ((long) i)) ? j : i;
    }

    /* renamed from: if, reason: not valid java name */
    private void m12094if(long j) {
        int i = this.f10502do;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f10502do = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f10502do;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.f10502do = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (m12093do(1L) == -1) {
            return -1;
        }
        int i = super.read();
        m12094if(1L);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f10502do = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jM12093do = m12093do(j);
        if (jM12093do == -1) {
            return 0L;
        }
        long jSkip = super.skip(jM12093do);
        m12094if(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int iM12093do = (int) m12093do(i2);
        if (iM12093do == -1) {
            return -1;
        }
        int i3 = super.read(bArr, i, iM12093do);
        m12094if(i3);
        return i3;
    }
}
