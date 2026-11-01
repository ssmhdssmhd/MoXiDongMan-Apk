package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;

@li0
/* renamed from: com.google.common.io.static, reason: invalid class name */
/* loaded from: classes2.dex */
class Cstatic extends Reader {

    /* renamed from: do, reason: not valid java name */
    private final Iterator<? extends Cgoto> f15333do;

    /* renamed from: if, reason: not valid java name */
    @b51
    private Reader f15334if;

    public Cstatic(Iterator<? extends Cgoto> it) throws IOException {
        this.f15333do = it;
        m17096do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m17096do() throws IOException {
        close();
        if (this.f15333do.hasNext()) {
            this.f15334if = this.f15333do.next().mo17020const();
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Reader reader = this.f15334if;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.f15334if = null;
            }
        }
    }

    @Override // java.io.Reader
    public int read(@b51 char[] cArr, int i, int i2) throws IOException {
        Reader reader = this.f15334if;
        if (reader == null) {
            return -1;
        }
        int i3 = reader.read(cArr, i, i2);
        if (i3 != -1) {
            return i3;
        }
        m17096do();
        return read(cArr, i, i2);
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        Reader reader = this.f15334if;
        return reader != null && reader.ready();
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        af1.m235try(j >= 0, "n is negative");
        if (j > 0) {
            while (true) {
                Reader reader = this.f15334if;
                if (reader == null) {
                    break;
                }
                long jSkip = reader.skip(j);
                if (jSkip > 0) {
                    return jSkip;
                }
                m17096do();
            }
        }
        return 0L;
    }
}
