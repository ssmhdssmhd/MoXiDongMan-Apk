package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;

@li0
/* renamed from: com.google.common.io.this, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private static final int f15351do = 2048;

    /* renamed from: com.google.common.io.this$do, reason: invalid class name */
    public static final class Cdo extends Writer {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo f15352do = new Cdo();

        private Cdo() {
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(char c) {
            return this;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return "CharStreams.nullWriter()";
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            af1.m205continue(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            af1.s(i, i2 + i, cArr.length);
        }

        @Override // java.io.Writer
        public void write(String str) {
            af1.m205continue(str);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
            af1.s(i, i2 + i, str.length());
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i, int i2) {
            af1.s(i, i2, charSequence.length());
            return this;
        }
    }

    private Cthis() {
    }

    @o8
    /* renamed from: break, reason: not valid java name */
    public static void m17144break(Reader reader, long j) throws IOException {
        af1.m205continue(reader);
        while (j > 0) {
            long jSkip = reader.skip(j);
            if (jSkip == 0) {
                throw new EOFException();
            }
            j -= jSkip;
        }
    }

    @lf
    @o8
    /* renamed from: case, reason: not valid java name */
    public static long m17145case(Readable readable) throws IOException {
        CharBuffer charBufferM17155try = m17155try();
        long j = 0;
        while (true) {
            long j2 = readable.read(charBufferM17155try);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            charBufferM17155try.clear();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m17146catch(Readable readable) throws IOException {
        return m17147class(readable).toString();
    }

    /* renamed from: class, reason: not valid java name */
    private static StringBuilder m17147class(Readable readable) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (readable instanceof Reader) {
            m17150for((Reader) readable, sb);
        } else {
            m17152if(readable, sb);
        }
        return sb;
    }

    @o8
    /* renamed from: do, reason: not valid java name */
    public static Writer m17148do(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new com.google.common.io.Cdo(appendable);
    }

    @o8
    /* renamed from: else, reason: not valid java name */
    public static Writer m17149else() {
        return Cdo.f15352do;
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public static long m17150for(Reader reader, StringBuilder sb) throws IOException {
        af1.m205continue(reader);
        af1.m205continue(sb);
        char[] cArr = new char[2048];
        long j = 0;
        while (true) {
            int i = reader.read(cArr);
            if (i == -1) {
                return j;
            }
            sb.append(cArr, 0, i);
            j += i;
        }
    }

    @lf
    @o8
    /* renamed from: goto, reason: not valid java name */
    public static <T> T m17151goto(Readable readable, LineProcessor<T> lineProcessor) throws IOException {
        String strM17074if;
        af1.m205continue(readable);
        af1.m205continue(lineProcessor);
        Cimport cimport = new Cimport(readable);
        do {
            strM17074if = cimport.m17074if();
            if (strM17074if == null) {
                break;
            }
        } while (lineProcessor.processLine(strM17074if));
        return lineProcessor.getResult();
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static long m17152if(Readable readable, Appendable appendable) throws IOException {
        if (readable instanceof Reader) {
            return appendable instanceof StringBuilder ? m17150for((Reader) readable, (StringBuilder) appendable) : m17153new((Reader) readable, m17148do(appendable));
        }
        af1.m205continue(readable);
        af1.m205continue(appendable);
        long jRemaining = 0;
        CharBuffer charBufferM17155try = m17155try();
        while (readable.read(charBufferM17155try) != -1) {
            charBufferM17155try.flip();
            appendable.append(charBufferM17155try);
            jRemaining += charBufferM17155try.remaining();
            charBufferM17155try.clear();
        }
        return jRemaining;
    }

    @lf
    /* renamed from: new, reason: not valid java name */
    public static long m17153new(Reader reader, Writer writer) throws IOException {
        af1.m205continue(reader);
        af1.m205continue(writer);
        char[] cArr = new char[2048];
        long j = 0;
        while (true) {
            int i = reader.read(cArr);
            if (i == -1) {
                return j;
            }
            writer.write(cArr, 0, i);
            j += i;
        }
    }

    @o8
    /* renamed from: this, reason: not valid java name */
    public static List<String> m17154this(Readable readable) throws IOException {
        ArrayList arrayList = new ArrayList();
        Cimport cimport = new Cimport(readable);
        while (true) {
            String strM17074if = cimport.m17074if();
            if (strM17074if == null) {
                return arrayList;
            }
            arrayList.add(strM17074if);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static CharBuffer m17155try() {
        return CharBuffer.allocate(2048);
    }
}
