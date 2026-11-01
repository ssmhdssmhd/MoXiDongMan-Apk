package com.bumptech.glide.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.util.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif extends FilterInputStream {

    /* renamed from: for, reason: not valid java name */
    private static final String f10484for = "ContentLengthStream";

    /* renamed from: new, reason: not valid java name */
    private static final int f10485new = -1;

    /* renamed from: do, reason: not valid java name */
    private final long f10486do;

    /* renamed from: if, reason: not valid java name */
    private int f10487if;

    private Cif(@NonNull InputStream inputStream, long j) {
        super(inputStream);
        this.f10486do = j;
    }

    /* renamed from: do, reason: not valid java name */
    private int m12074do(int i) throws IOException {
        if (i >= 0) {
            this.f10487if += i;
        } else if (this.f10486do - this.f10487if > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f10486do + ", but read: " + this.f10487if);
        }
        return i;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static InputStream m12075for(@NonNull InputStream inputStream, @Nullable String str) {
        return m12076if(inputStream, m12077new(str));
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static InputStream m12076if(@NonNull InputStream inputStream, long j) {
        return new Cif(inputStream, j);
    }

    /* renamed from: new, reason: not valid java name */
    private static int m12077new(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                if (Log.isLoggable(f10484for, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("failed to parse content length header: ");
                    sb.append(str);
                }
            }
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f10486do - this.f10487if, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int i;
        i = super.read();
        m12074do(i >= 0 ? 1 : -1);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return m12074do(super.read(bArr, i, i2));
    }
}
