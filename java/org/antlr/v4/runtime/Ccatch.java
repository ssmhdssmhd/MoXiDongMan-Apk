package org.antlr.v4.runtime;

import android.support.v4.rn0;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* renamed from: org.antlr.v4.runtime.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements CharStream {

    /* renamed from: case, reason: not valid java name */
    public int f28526case;

    /* renamed from: do, reason: not valid java name */
    public int[] f28527do;

    /* renamed from: else, reason: not valid java name */
    public int f28528else;

    /* renamed from: for, reason: not valid java name */
    public int f28529for;

    /* renamed from: goto, reason: not valid java name */
    public Reader f28530goto;

    /* renamed from: if, reason: not valid java name */
    public int f28531if;

    /* renamed from: new, reason: not valid java name */
    public int f28532new;

    /* renamed from: this, reason: not valid java name */
    public String f28533this;

    /* renamed from: try, reason: not valid java name */
    public int f28534try;

    public Ccatch() {
        this(256);
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int LA(int i) {
        if (i == -1) {
            return this.f28534try;
        }
        m31967try(i);
        int i2 = (this.f28529for + i) - 1;
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 >= this.f28531if) {
            return -1;
        }
        return this.f28527do[i2];
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void consume() {
        if (LA(1) == -1) {
            throw new IllegalStateException("cannot consume EOF");
        }
        int[] iArr = this.f28527do;
        int i = this.f28529for;
        int i2 = iArr[i];
        this.f28534try = i2;
        if (i == this.f28531if - 1 && this.f28532new == 0) {
            this.f28531if = 0;
            this.f28529for = -1;
            this.f28526case = i2;
        }
        this.f28529for++;
        this.f28528else++;
        m31967try(1);
    }

    /* renamed from: do, reason: not valid java name */
    public void m31963do(int i) {
        int i2 = this.f28531if;
        int[] iArr = this.f28527do;
        if (i2 >= iArr.length) {
            this.f28527do = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f28527do;
        int i3 = this.f28531if;
        this.f28531if = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m31964for() {
        return this.f28528else - this.f28529for;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public String getSourceName() {
        String str = this.f28533this;
        return (str == null || str.isEmpty()) ? IntStream.UNKNOWN_SOURCE_NAME : this.f28533this;
    }

    @Override // org.antlr.v4.runtime.CharStream
    public String getText(rn0 rn0Var) {
        int i = rn0Var.f5888do;
        if (i < 0 || rn0Var.f5889if < i - 1) {
            throw new IllegalArgumentException("invalid interval");
        }
        int iM31964for = m31964for();
        int i2 = this.f28531if;
        if (i2 > 0 && this.f28527do[i2 - 1] == 65535 && rn0Var.f5888do + rn0Var.m7071try() > this.f28531if + iM31964for) {
            throw new IllegalArgumentException("the interval extends past the end of the stream");
        }
        int i3 = rn0Var.f5888do;
        if (i3 >= iM31964for && rn0Var.f5889if < this.f28531if + iM31964for) {
            return new String(this.f28527do, i3 - iM31964for, rn0Var.m7071try());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("interval ");
        sb.append(rn0Var);
        sb.append(" outside buffer: ");
        sb.append(iM31964for);
        sb.append("..");
        sb.append((iM31964for + this.f28531if) - 1);
        throw new UnsupportedOperationException(sb.toString());
    }

    /* renamed from: if, reason: not valid java name */
    public int m31965if(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f28531if;
            if (i3 > 0 && this.f28527do[i3 - 1] == -1) {
                return i2;
            }
            try {
                int iM31966new = m31966new();
                if (iM31966new > 65535 || iM31966new == -1) {
                    m31963do(iM31966new);
                } else {
                    char c = (char) iM31966new;
                    if (Character.isLowSurrogate(c)) {
                        throw new RuntimeException("Invalid UTF-16 (low surrogate with no preceding high surrogate)");
                    }
                    if (Character.isHighSurrogate(c)) {
                        int iM31966new2 = m31966new();
                        if (iM31966new2 > 65535) {
                            throw new RuntimeException("Invalid UTF-16 (high surrogate followed by code point > U+FFFF");
                        }
                        if (iM31966new2 == -1) {
                            throw new RuntimeException("Invalid UTF-16 (dangling high surrogate at end of file)");
                        }
                        char c2 = (char) iM31966new2;
                        if (!Character.isLowSurrogate(c2)) {
                            throw new RuntimeException("Invalid UTF-16 (dangling high surrogate");
                        }
                        m31963do(Character.toCodePoint(c, c2));
                    } else {
                        m31963do(iM31966new);
                    }
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return i;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int index() {
        return this.f28528else;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int mark() {
        int i = this.f28532new;
        if (i == 0) {
            this.f28526case = this.f28534try;
        }
        int i2 = (-i) - 1;
        this.f28532new = i + 1;
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public int m31966new() throws IOException {
        return this.f28530goto.read();
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void release(int i) {
        int i2;
        int i3 = this.f28532new;
        if (i != (-i3)) {
            throw new IllegalStateException("release() called with an invalid marker.");
        }
        int i4 = i3 - 1;
        this.f28532new = i4;
        if (i4 != 0 || (i2 = this.f28529for) <= 0) {
            return;
        }
        int[] iArr = this.f28527do;
        System.arraycopy(iArr, i2, iArr, 0, this.f28531if - i2);
        this.f28531if -= this.f28529for;
        this.f28529for = 0;
        this.f28526case = this.f28534try;
    }

    @Override // org.antlr.v4.runtime.IntStream
    public void seek(int i) {
        int i2 = this.f28528else;
        if (i == i2) {
            return;
        }
        if (i > i2) {
            m31967try(i - i2);
            i = Math.min(i, (m31964for() + this.f28531if) - 1);
        }
        int iM31964for = i - m31964for();
        if (iM31964for < 0) {
            throw new IllegalArgumentException("cannot seek to negative index " + i);
        }
        if (iM31964for < this.f28531if) {
            this.f28529for = iM31964for;
            this.f28528else = i;
            if (iM31964for == 0) {
                this.f28534try = this.f28526case;
                return;
            } else {
                this.f28534try = this.f28527do[iM31964for - 1];
                return;
            }
        }
        throw new UnsupportedOperationException("seek to index outside buffer: " + i + " not in " + m31964for() + ".." + (m31964for() + this.f28531if));
    }

    @Override // org.antlr.v4.runtime.IntStream
    public int size() {
        throw new UnsupportedOperationException("Unbuffered stream cannot know its size");
    }

    /* renamed from: try, reason: not valid java name */
    public void m31967try(int i) {
        int i2 = (((this.f28529for + i) - 1) - this.f28531if) + 1;
        if (i2 > 0) {
            m31965if(i2);
        }
    }

    public Ccatch(int i) {
        this.f28529for = 0;
        this.f28532new = 0;
        this.f28534try = -1;
        this.f28528else = 0;
        this.f28531if = 0;
        this.f28527do = new int[i];
    }

    public Ccatch(InputStream inputStream) {
        this(inputStream, 256);
    }

    public Ccatch(Reader reader) {
        this(reader, 256);
    }

    public Ccatch(InputStream inputStream, int i) {
        this(inputStream, i, StandardCharsets.UTF_8);
    }

    public Ccatch(InputStream inputStream, int i, Charset charset) {
        this(i);
        this.f28530goto = new InputStreamReader(inputStream, charset);
        m31965if(1);
    }

    public Ccatch(Reader reader, int i) {
        this(i);
        this.f28530goto = reader;
        m31965if(1);
    }
}
