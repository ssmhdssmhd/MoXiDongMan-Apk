package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

@li0
/* renamed from: com.google.common.io.return, reason: invalid class name */
/* loaded from: classes2.dex */
final class Creturn extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private Iterator<? extends Cnew> f15331do;

    /* renamed from: if, reason: not valid java name */
    @b51
    private InputStream f15332if;

    public Creturn(Iterator<? extends Cnew> it) throws IOException {
        this.f15331do = (Iterator) af1.m205continue(it);
        m17095do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m17095do() throws IOException {
        close();
        if (this.f15331do.hasNext()) {
            this.f15332if = this.f15331do.next().mo16996const();
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.f15332if;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f15332if;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f15332if = null;
            }
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f15332if;
            if (inputStream == null) {
                return -1;
            }
            int i = inputStream.read();
            if (i != -1) {
                return i;
            }
            m17095do();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        InputStream inputStream = this.f15332if;
        if (inputStream == null || j <= 0) {
            return 0L;
        }
        long jSkip = inputStream.skip(j);
        if (jSkip != 0) {
            return jSkip;
        }
        if (read() == -1) {
            return 0L;
        }
        return this.f15332if.skip(j - 1) + 1;
    }

    @Override // java.io.InputStream
    public int read(@b51 byte[] bArr, int i, int i2) throws IOException {
        while (true) {
            InputStream inputStream = this.f15332if;
            if (inputStream == null) {
                return -1;
            }
            int i3 = inputStream.read(bArr, i, i2);
            if (i3 != -1) {
                return i3;
            }
            m17095do();
        }
    }
}
