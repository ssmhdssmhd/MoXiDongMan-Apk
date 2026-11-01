package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.li0;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;

@li0
/* renamed from: com.google.common.io.case, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccase extends Reader {

    /* renamed from: do, reason: not valid java name */
    private CharSequence f15242do;

    /* renamed from: for, reason: not valid java name */
    private int f15243for;

    /* renamed from: if, reason: not valid java name */
    private int f15244if;

    public Ccase(CharSequence charSequence) {
        this.f15242do = (CharSequence) af1.m205continue(charSequence);
    }

    /* renamed from: do, reason: not valid java name */
    private void m16985do() throws IOException {
        if (this.f15242do == null) {
            throw new IOException("reader closed");
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m16986for() {
        return this.f15242do.length() - this.f15244if;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m16987if() {
        return m16986for() > 0;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f15242do = null;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) throws IOException {
        af1.m202catch(i >= 0, "readAheadLimit (%s) may not be negative", i);
        m16985do();
        this.f15243for = this.f15244if;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader, java.lang.Readable
    public synchronized int read(CharBuffer charBuffer) throws IOException {
        af1.m205continue(charBuffer);
        m16985do();
        if (!m16987if()) {
            return -1;
        }
        int iMin = Math.min(charBuffer.remaining(), m16986for());
        for (int i = 0; i < iMin; i++) {
            CharSequence charSequence = this.f15242do;
            int i2 = this.f15244if;
            this.f15244if = i2 + 1;
            charBuffer.put(charSequence.charAt(i2));
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized boolean ready() throws IOException {
        m16985do();
        return true;
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        m16985do();
        this.f15244if = this.f15243for;
    }

    @Override // java.io.Reader
    public synchronized long skip(long j) throws IOException {
        int iMin;
        af1.m232throw(j >= 0, "n (%s) may not be negative", j);
        m16985do();
        iMin = (int) Math.min(m16986for(), j);
        this.f15244if += iMin;
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized int read() throws IOException {
        char cCharAt;
        m16985do();
        if (m16987if()) {
            CharSequence charSequence = this.f15242do;
            int i = this.f15244if;
            this.f15244if = i + 1;
            cCharAt = charSequence.charAt(i);
        } else {
            cCharAt = 65535;
        }
        return cCharAt;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cArr, int i, int i2) throws IOException {
        af1.s(i, i + i2, cArr.length);
        m16985do();
        if (!m16987if()) {
            return -1;
        }
        int iMin = Math.min(i2, m16986for());
        for (int i3 = 0; i3 < iMin; i3++) {
            CharSequence charSequence = this.f15242do;
            int i4 = this.f15244if;
            this.f15244if = i4 + 1;
            cArr[i + i3] = charSequence.charAt(i4);
        }
        return iMin;
    }
}
