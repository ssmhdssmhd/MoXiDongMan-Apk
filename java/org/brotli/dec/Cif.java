package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.brotli.dec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends InputStream {

    /* renamed from: try, reason: not valid java name */
    public static final int f32874try = 16384;

    /* renamed from: do, reason: not valid java name */
    private byte[] f32875do;

    /* renamed from: for, reason: not valid java name */
    private int f32876for;

    /* renamed from: if, reason: not valid java name */
    private int f32877if;

    /* renamed from: new, reason: not valid java name */
    private final Cclass f32878new;

    public Cif(InputStream inputStream) throws IOException {
        this(inputStream, 16384, null);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Cclass.m36650do(this.f32878new);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f32876for >= this.f32877if) {
            byte[] bArr = this.f32875do;
            int i = read(bArr, 0, bArr.length);
            this.f32877if = i;
            this.f32876for = 0;
            if (i == -1) {
                return -1;
            }
        }
        byte[] bArr2 = this.f32875do;
        int i2 = this.f32876for;
        this.f32876for = i2 + 1;
        return bArr2[i2] & 255;
    }

    public Cif(InputStream inputStream, int i) throws IOException {
        this(inputStream, i, null);
    }

    public Cif(InputStream inputStream, int i, byte[] bArr) throws IOException {
        Cclass cclass = new Cclass();
        this.f32878new = cclass;
        if (i <= 0) {
            throw new IllegalArgumentException("Bad buffer size:" + i);
        }
        if (inputStream != null) {
            this.f32875do = new byte[i];
            this.f32877if = 0;
            this.f32876for = 0;
            try {
                Cclass.m36651for(cclass, inputStream);
                if (bArr != null) {
                    Ctry.m36690native(cclass, bArr);
                    return;
                }
                return;
            } catch (Cfor e) {
                throw new IOException("Brotli decoder initialization failed", e);
            }
        }
        throw new IllegalArgumentException("source is null");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("Bad offset: " + i);
        }
        if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 > bArr.length) {
                throw new IllegalArgumentException("Buffer overflow: " + i3 + " > " + bArr.length);
            }
            if (i2 == 0) {
                return 0;
            }
            int iMax = Math.max(this.f32877if - this.f32876for, 0);
            if (iMax != 0) {
                iMax = Math.min(iMax, i2);
                System.arraycopy(this.f32875do, this.f32876for, bArr, i, iMax);
                this.f32876for += iMax;
                i += iMax;
                i2 -= iMax;
                if (i2 == 0) {
                    return iMax;
                }
            }
            try {
                Cclass cclass = this.f32878new;
                cclass.m = bArr;
                cclass.h = i;
                cclass.i = i2;
                cclass.j = 0;
                Ctry.m36695this(cclass);
                int i4 = this.f32878new.j;
                if (i4 == 0) {
                    return -1;
                }
                return i4 + iMax;
            } catch (Cfor e) {
                throw new IOException("Brotli stream decoding failed", e);
            }
        }
        throw new IllegalArgumentException("Bad length: " + i2);
    }
}
