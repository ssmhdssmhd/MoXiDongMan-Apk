package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.li0;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

@li0
/* renamed from: com.google.common.io.do, reason: invalid class name */
/* loaded from: classes2.dex */
class Cdo extends Writer {

    /* renamed from: do, reason: not valid java name */
    private final Appendable f15257do;

    /* renamed from: if, reason: not valid java name */
    private boolean f15258if;

    public Cdo(Appendable appendable) {
        this.f15257do = (Appendable) af1.m205continue(appendable);
    }

    /* renamed from: do, reason: not valid java name */
    private void m16998do() throws IOException {
        if (this.f15258if) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15258if = true;
        Appendable appendable = this.f15257do;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        m16998do();
        Appendable appendable = this.f15257do;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        m16998do();
        this.f15257do.append(new String(cArr, i, i2));
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        m16998do();
        this.f15257do.append((char) i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        m16998do();
        this.f15257do.append(c);
        return this;
    }

    @Override // java.io.Writer
    public void write(@b51 String str) throws IOException {
        m16998do();
        this.f15257do.append(str);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@b51 CharSequence charSequence) throws IOException {
        m16998do();
        this.f15257do.append(charSequence);
        return this;
    }

    @Override // java.io.Writer
    public void write(@b51 String str, int i, int i2) throws IOException {
        m16998do();
        this.f15257do.append(str, i, i2 + i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(@b51 CharSequence charSequence, int i, int i2) throws IOException {
        m16998do();
        this.f15257do.append(charSequence, i, i2);
        return this;
    }
}
