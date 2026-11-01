package com.bumptech.glide.disklrucache;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* renamed from: com.bumptech.glide.disklrucache.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif implements Closeable {

    /* renamed from: case, reason: not valid java name */
    private static final byte f9330case = 13;

    /* renamed from: else, reason: not valid java name */
    private static final byte f9331else = 10;

    /* renamed from: do, reason: not valid java name */
    private final InputStream f9332do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f9333for;

    /* renamed from: if, reason: not valid java name */
    private final Charset f9334if;

    /* renamed from: new, reason: not valid java name */
    private int f9335new;

    /* renamed from: try, reason: not valid java name */
    private int f9336try;

    /* renamed from: com.bumptech.glide.disklrucache.if$do, reason: invalid class name */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                i--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, Cif.this.f9334if.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public Cif(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: if, reason: not valid java name */
    private void m11162if() throws IOException {
        InputStream inputStream = this.f9332do;
        byte[] bArr = this.f9333for;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f9335new = 0;
        this.f9336try = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f9332do) {
            if (this.f9333for != null) {
                this.f9333for = null;
                this.f9332do.close();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m11163for() {
        return this.f9336try == -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m11164new() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.f9332do) {
            if (this.f9333for == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f9335new >= this.f9336try) {
                m11162if();
            }
            for (int i3 = this.f9335new; i3 != this.f9336try; i3++) {
                byte[] bArr2 = this.f9333for;
                if (bArr2[i3] == 10) {
                    int i4 = this.f9335new;
                    if (i3 != i4) {
                        i2 = i3 - 1;
                        if (bArr2[i2] != 13) {
                            i2 = i3;
                        }
                    }
                    String str = new String(bArr2, i4, i2 - i4, this.f9334if.name());
                    this.f9335new = i3 + 1;
                    return str;
                }
            }
            Cdo cdo = new Cdo((this.f9336try - this.f9335new) + 80);
            loop1: while (true) {
                byte[] bArr3 = this.f9333for;
                int i5 = this.f9335new;
                cdo.write(bArr3, i5, this.f9336try - i5);
                this.f9336try = -1;
                m11162if();
                i = this.f9335new;
                while (i != this.f9336try) {
                    bArr = this.f9333for;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.f9335new;
            if (i != i6) {
                cdo.write(bArr, i6, i - i6);
            }
            this.f9335new = i + 1;
            return cdo.toString();
        }
    }

    public Cif(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(Cfor.f9328do)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f9332do = inputStream;
        this.f9334if = charset;
        this.f9333for = new byte[i];
    }
}
