package org.antlr.v4.runtime;

import android.support.v4.rn0;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Arrays;

/* renamed from: org.antlr.v4.runtime.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements CharStream {

    /* renamed from: case, reason: not valid java name */
    public static final int f28557case = 1024;

    /* renamed from: else, reason: not valid java name */
    public static final /* synthetic */ boolean f28558else = false;

    /* renamed from: try, reason: not valid java name */
    public static final int f28559try = 1024;

    /* renamed from: do, reason: not valid java name */
    public char[] f28560do;

    /* renamed from: for, reason: not valid java name */
    public int f28561for;

    /* renamed from: if, reason: not valid java name */
    public int f28562if;

    /* renamed from: new, reason: not valid java name */
    public String f28563new;

    public Cif() {
        this.f28561for = 0;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int LA(int i) {
        if (i == 0) {
            return 0;
        }
        if (i < 0) {
            i++;
            if ((this.f28561for + i) - 1 < 0) {
                return -1;
            }
        }
        int i2 = this.f28561for;
        if ((i2 + i) - 1 >= this.f28562if) {
            return -1;
        }
        return this.f28560do[(i2 + i) - 1];
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void consume() {
        int i = this.f28561for;
        int i2 = this.f28562if;
        if (i >= i2) {
            throw new IllegalStateException("cannot consume EOF");
        }
        if (i < i2) {
            this.f28561for = i + 1;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m32009do(int i) {
        return LA(i);
    }

    /* renamed from: for, reason: not valid java name */
    public void m32010for() {
        this.f28561for = 0;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public String getSourceName() {
        String str = this.f28563new;
        return (str == null || str.isEmpty()) ? IntStream.UNKNOWN_SOURCE_NAME : this.f28563new;
    }

    @Override // org.antlr.v4.runtime.CharStream
    public String getText(rn0 rn0Var) {
        int i = rn0Var.f5888do;
        int i2 = rn0Var.f5889if;
        int i3 = this.f28562if;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        return i >= i3 ? "" : new String(this.f28560do, i, (i2 - i) + 1);
    }

    /* renamed from: if, reason: not valid java name */
    public void m32011if(Reader reader, int i, int i2) throws IOException {
        int i3;
        if (reader == null) {
            return;
        }
        if (i <= 0) {
            i = 1024;
        }
        if (i2 <= 0) {
            i2 = 1024;
        }
        try {
            this.f28560do = new char[i];
            int i4 = 0;
            do {
                int i5 = i4 + i2;
                char[] cArr = this.f28560do;
                if (i5 > cArr.length) {
                    this.f28560do = Arrays.copyOf(cArr, cArr.length * 2);
                }
                i3 = reader.read(this.f28560do, i4, i2);
                i4 += i3;
            } while (i3 != -1);
            this.f28562if = i4 + 1;
        } finally {
            reader.close();
        }
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int index() {
        return this.f28561for;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int mark() {
        return -1;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void release(int i) {
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void seek(int i) {
        if (i <= this.f28561for) {
            this.f28561for = i;
            return;
        }
        int iMin = Math.min(i, this.f28562if);
        while (this.f28561for < iMin) {
            consume();
        }
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int size() {
        return this.f28562if;
    }

    public String toString() {
        return new String(this.f28560do);
    }

    public Cif(String str) {
        this.f28561for = 0;
        this.f28560do = str.toCharArray();
        this.f28562if = str.length();
    }

    public Cif(char[] cArr, int i) {
        this.f28561for = 0;
        this.f28560do = cArr;
        this.f28562if = i;
    }

    public Cif(Reader reader) throws IOException {
        this(reader, 1024, 1024);
    }

    public Cif(Reader reader, int i) throws IOException {
        this(reader, i, 1024);
    }

    public Cif(Reader reader, int i, int i2) throws IOException {
        this.f28561for = 0;
        m32011if(reader, i, i2);
    }

    public Cif(InputStream inputStream) throws IOException {
        this(new InputStreamReader(inputStream), 1024);
    }

    public Cif(InputStream inputStream, int i) throws IOException {
        this(new InputStreamReader(inputStream), i);
    }

    public Cif(InputStream inputStream, int i, int i2) throws IOException {
        this(new InputStreamReader(inputStream), i, i2);
    }
}
