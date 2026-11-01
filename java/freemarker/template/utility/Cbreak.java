package freemarker.template.utility;

import java.io.IOException;
import java.io.Writer;

/* renamed from: freemarker.template.utility.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak extends Writer {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak f25160do = new Cbreak();

    private Cbreak() {
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
    }
}
