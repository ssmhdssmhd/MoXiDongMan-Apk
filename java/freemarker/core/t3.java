package freemarker.core;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class t3 {

    /* renamed from: while, reason: not valid java name */
    public static final boolean f24198while = false;

    /* renamed from: break, reason: not valid java name */
    public boolean f24199break;

    /* renamed from: case, reason: not valid java name */
    public int[] f24200case;

    /* renamed from: catch, reason: not valid java name */
    public Reader f24201catch;

    /* renamed from: class, reason: not valid java name */
    public char[] f24202class;

    /* renamed from: const, reason: not valid java name */
    public int f24203const;

    /* renamed from: do, reason: not valid java name */
    public int f24204do;

    /* renamed from: else, reason: not valid java name */
    public int f24205else;

    /* renamed from: final, reason: not valid java name */
    public int f24206final;

    /* renamed from: for, reason: not valid java name */
    public int f24207for;

    /* renamed from: goto, reason: not valid java name */
    public int f24208goto;

    /* renamed from: if, reason: not valid java name */
    public int f24209if;

    /* renamed from: new, reason: not valid java name */
    public int f24210new;

    /* renamed from: super, reason: not valid java name */
    public int f24211super;

    /* renamed from: this, reason: not valid java name */
    public boolean f24212this;

    /* renamed from: throw, reason: not valid java name */
    public boolean f24213throw;

    /* renamed from: try, reason: not valid java name */
    public int[] f24214try;

    public t3(Reader reader, int i, int i2, int i3) {
        this.f24210new = -1;
        this.f24205else = 0;
        this.f24208goto = 1;
        this.f24212this = false;
        this.f24199break = false;
        this.f24203const = 0;
        this.f24206final = 0;
        this.f24211super = 1;
        this.f24213throw = true;
        this.f24201catch = reader;
        this.f24208goto = i;
        this.f24205else = i2 - 1;
        this.f24204do = i3;
        this.f24209if = i3;
        this.f24202class = new char[i3];
        this.f24214try = new int[i3];
        this.f24200case = new int[i3];
    }

    /* renamed from: break, reason: not valid java name */
    public void m28291break(InputStream inputStream, String str) throws UnsupportedEncodingException {
        m28294class(inputStream, str, 1, 1, 4096);
    }

    /* renamed from: case, reason: not valid java name */
    public char[] m28292case(int i) {
        char[] cArr = new char[i];
        int i2 = this.f24210new;
        if (i2 + 1 >= i) {
            System.arraycopy(this.f24202class, (i2 - i) + 1, cArr, 0, i);
        } else {
            System.arraycopy(this.f24202class, this.f24204do - ((i - i2) - 1), cArr, 0, (i - i2) - 1);
            System.arraycopy(this.f24202class, 0, cArr, (i - r2) - 1, this.f24210new + 1);
        }
        return cArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m28293catch(InputStream inputStream, String str, int i, int i2) throws UnsupportedEncodingException {
        m28294class(inputStream, str, i, i2, 4096);
    }

    /* renamed from: class, reason: not valid java name */
    public void m28294class(InputStream inputStream, String str, int i, int i2, int i3) throws UnsupportedEncodingException {
        m28313super(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), i, i2, i3);
    }

    /* renamed from: const, reason: not valid java name */
    public void m28295const(Reader reader) {
        m28313super(reader, 1, 1, 4096);
    }

    /* renamed from: default, reason: not valid java name */
    public int m28296default() {
        return this.f24211super;
    }

    /* renamed from: do, reason: not valid java name */
    public char m28297do() throws IOException {
        this.f24207for = -1;
        char cM28301finally = m28301finally();
        this.f24207for = this.f24210new;
        return cM28301finally;
    }

    /* renamed from: else, reason: not valid java name */
    public void m28298else(InputStream inputStream) {
        m28315this(inputStream, 1, 1, 4096);
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m28299extends() {
        return this.f24213throw;
    }

    /* renamed from: final, reason: not valid java name */
    public void m28300final(Reader reader, int i, int i2) {
        m28313super(reader, i, i2, 4096);
    }

    /* renamed from: finally, reason: not valid java name */
    public char m28301finally() throws IOException {
        int i = this.f24206final;
        if (i > 0) {
            this.f24206final = i - 1;
            int i2 = this.f24210new + 1;
            this.f24210new = i2;
            if (i2 == this.f24204do) {
                this.f24210new = 0;
            }
            return this.f24202class[this.f24210new];
        }
        int i3 = this.f24210new + 1;
        this.f24210new = i3;
        if (i3 >= this.f24203const) {
            m28307new();
        }
        char c = this.f24202class[this.f24210new];
        m28316throw(c);
        return c;
    }

    /* renamed from: for, reason: not valid java name */
    public void m28302for(boolean z) {
        int i = this.f24204do;
        char[] cArr = new char[i + 2048];
        int[] iArr = new int[i + 2048];
        int[] iArr2 = new int[i + 2048];
        try {
            if (z) {
                char[] cArr2 = this.f24202class;
                int i2 = this.f24207for;
                System.arraycopy(cArr2, i2, cArr, 0, i - i2);
                System.arraycopy(this.f24202class, 0, cArr, this.f24204do - this.f24207for, this.f24210new);
                this.f24202class = cArr;
                int[] iArr3 = this.f24214try;
                int i3 = this.f24207for;
                System.arraycopy(iArr3, i3, iArr, 0, this.f24204do - i3);
                System.arraycopy(this.f24214try, 0, iArr, this.f24204do - this.f24207for, this.f24210new);
                this.f24214try = iArr;
                int[] iArr4 = this.f24200case;
                int i4 = this.f24207for;
                System.arraycopy(iArr4, i4, iArr2, 0, this.f24204do - i4);
                System.arraycopy(this.f24200case, 0, iArr2, this.f24204do - this.f24207for, this.f24210new);
                this.f24200case = iArr2;
                int i5 = this.f24210new + (this.f24204do - this.f24207for);
                this.f24210new = i5;
                this.f24203const = i5;
            } else {
                char[] cArr3 = this.f24202class;
                int i6 = this.f24207for;
                System.arraycopy(cArr3, i6, cArr, 0, i - i6);
                this.f24202class = cArr;
                int[] iArr5 = this.f24214try;
                int i7 = this.f24207for;
                System.arraycopy(iArr5, i7, iArr, 0, this.f24204do - i7);
                this.f24214try = iArr;
                int[] iArr6 = this.f24200case;
                int i8 = this.f24207for;
                System.arraycopy(iArr6, i8, iArr2, 0, this.f24204do - i8);
                this.f24200case = iArr2;
                int i9 = this.f24210new - this.f24207for;
                this.f24210new = i9;
                this.f24203const = i9;
            }
            int i10 = this.f24204do + 2048;
            this.f24204do = i10;
            this.f24209if = i10;
            this.f24207for = 0;
        } catch (Throwable th) {
            throw new Error(th.getMessage());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m28303goto(InputStream inputStream, int i, int i2) {
        m28315this(inputStream, i, i2, 4096);
    }

    /* renamed from: if, reason: not valid java name */
    public void m28304if() {
        this.f24202class = null;
        this.f24214try = null;
        this.f24200case = null;
    }

    /* renamed from: import, reason: not valid java name */
    public void m28305import(int i) {
        this.f24206final += i;
        int i2 = this.f24210new - i;
        this.f24210new = i2;
        if (i2 < 0) {
            this.f24210new = i2 + this.f24204do;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public int m28306native() {
        return this.f24200case[this.f24207for];
    }

    /* renamed from: new, reason: not valid java name */
    public void m28307new() throws IOException {
        int i = this.f24203const;
        int i2 = this.f24209if;
        if (i == i2) {
            int i3 = this.f24204do;
            if (i2 == i3) {
                int i4 = this.f24207for;
                if (i4 > 2048) {
                    this.f24203const = 0;
                    this.f24210new = 0;
                    this.f24209if = i4;
                } else if (i4 < 0) {
                    this.f24203const = 0;
                    this.f24210new = 0;
                } else {
                    m28302for(false);
                }
            } else {
                int i5 = this.f24207for;
                if (i2 > i5) {
                    this.f24209if = i3;
                } else if (i5 - i2 < 2048) {
                    m28302for(true);
                } else {
                    this.f24209if = i5;
                }
            }
        }
        try {
            Reader reader = this.f24201catch;
            char[] cArr = this.f24202class;
            int i6 = this.f24203const;
            int i7 = reader.read(cArr, i6, this.f24209if - i6);
            if (i7 != -1) {
                this.f24203const += i7;
            } else {
                this.f24201catch.close();
                throw new IOException();
            }
        } catch (IOException e) {
            this.f24210new--;
            m28305import(0);
            if (this.f24207for == -1) {
                this.f24207for = this.f24210new;
            }
            throw e;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void m28308package(int i) {
        this.f24211super = i;
    }

    /* renamed from: private, reason: not valid java name */
    public void m28309private(boolean z) {
        this.f24213throw = z;
    }

    /* renamed from: public, reason: not valid java name */
    public int m28310public() {
        return this.f24214try[this.f24207for];
    }

    @Deprecated
    /* renamed from: return, reason: not valid java name */
    public int m28311return() {
        return this.f24200case[this.f24210new];
    }

    /* renamed from: static, reason: not valid java name */
    public int m28312static() {
        return this.f24200case[this.f24210new];
    }

    /* renamed from: super, reason: not valid java name */
    public void m28313super(Reader reader, int i, int i2, int i3) {
        this.f24201catch = reader;
        this.f24208goto = i;
        this.f24205else = i2 - 1;
        char[] cArr = this.f24202class;
        if (cArr == null || i3 != cArr.length) {
            this.f24204do = i3;
            this.f24209if = i3;
            this.f24202class = new char[i3];
            this.f24214try = new int[i3];
            this.f24200case = new int[i3];
        }
        this.f24212this = false;
        this.f24199break = false;
        this.f24203const = 0;
        this.f24206final = 0;
        this.f24207for = 0;
        this.f24210new = -1;
    }

    /* renamed from: switch, reason: not valid java name */
    public int m28314switch() {
        return this.f24214try[this.f24210new];
    }

    /* renamed from: this, reason: not valid java name */
    public void m28315this(InputStream inputStream, int i, int i2, int i3) {
        m28313super(new InputStreamReader(inputStream), i, i2, i3);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m28316throw(char c) {
        this.f24205else++;
        if (this.f24199break) {
            this.f24199break = false;
            int i = this.f24208goto;
            this.f24205else = 1;
            this.f24208goto = i + 1;
        } else if (this.f24212this) {
            this.f24212this = false;
            if (c == '\n') {
                this.f24199break = true;
            } else {
                int i2 = this.f24208goto;
                this.f24205else = 1;
                this.f24208goto = i2 + 1;
            }
        }
        if (c == '\t') {
            int i3 = this.f24205else - 1;
            this.f24205else = i3;
            int i4 = this.f24211super;
            this.f24205else = i3 + (i4 - (i3 % i4));
        } else if (c == '\n') {
            this.f24199break = true;
        } else if (c == '\r') {
            this.f24212this = true;
        }
        int[] iArr = this.f24214try;
        int i5 = this.f24210new;
        iArr[i5] = this.f24208goto;
        this.f24200case[i5] = this.f24205else;
    }

    @Deprecated
    /* renamed from: throws, reason: not valid java name */
    public int m28317throws() {
        return this.f24214try[this.f24210new];
    }

    /* renamed from: try, reason: not valid java name */
    public String m28318try() {
        int i = this.f24210new;
        int i2 = this.f24207for;
        if (i >= i2) {
            return new String(this.f24202class, i2, (i - i2) + 1);
        }
        StringBuilder sb = new StringBuilder();
        char[] cArr = this.f24202class;
        int i3 = this.f24207for;
        sb.append(new String(cArr, i3, this.f24204do - i3));
        sb.append(new String(this.f24202class, 0, this.f24210new + 1));
        return sb.toString();
    }

    /* renamed from: while, reason: not valid java name */
    public void m28319while(int i, int i2) {
        int i3;
        int i4 = this.f24207for;
        int i5 = this.f24210new;
        if (i5 >= i4) {
            i3 = (i5 - i4) + this.f24206final + 1;
        } else {
            i3 = this.f24206final + (this.f24204do - i4) + i5 + 1;
        }
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i6 >= i3) {
                break;
            }
            int[] iArr = this.f24214try;
            int i9 = this.f24204do;
            int i10 = i4 % i9;
            i4++;
            int i11 = i4 % i9;
            if (iArr[i10] != iArr[i11]) {
                i7 = i10;
                break;
            }
            iArr[i10] = i;
            int[] iArr2 = this.f24200case;
            int i12 = (iArr2[i11] + i8) - iArr2[i10];
            iArr2[i10] = i8 + i2;
            i6++;
            i8 = i12;
            i7 = i10;
        }
        if (i6 < i3) {
            int i13 = i + 1;
            this.f24214try[i7] = i;
            this.f24200case[i7] = i2 + i8;
            while (true) {
                int i14 = i6 + 1;
                if (i6 >= i3) {
                    break;
                }
                int[] iArr3 = this.f24214try;
                int i15 = this.f24204do;
                i7 = i4 % i15;
                i4++;
                if (iArr3[i7] != iArr3[i4 % i15]) {
                    iArr3[i7] = i13;
                    i13++;
                } else {
                    iArr3[i7] = i13;
                }
                i6 = i14;
            }
        }
        this.f24208goto = this.f24214try[i7];
        this.f24205else = this.f24200case[i7];
    }

    public t3(Reader reader, int i, int i2) {
        this(reader, i, i2, 4096);
    }

    public t3(Reader reader) {
        this(reader, 1, 1, 4096);
    }

    public t3(InputStream inputStream, String str, int i, int i2, int i3) throws UnsupportedEncodingException {
        this(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), i, i2, i3);
    }

    public t3(InputStream inputStream, int i, int i2, int i3) {
        this(new InputStreamReader(inputStream), i, i2, i3);
    }

    public t3(InputStream inputStream, String str, int i, int i2) throws UnsupportedEncodingException {
        this(inputStream, str, i, i2, 4096);
    }

    public t3(InputStream inputStream, int i, int i2) {
        this(inputStream, i, i2, 4096);
    }

    public t3(InputStream inputStream, String str) throws UnsupportedEncodingException {
        this(inputStream, str, 1, 1, 4096);
    }

    public t3(InputStream inputStream) {
        this(inputStream, 1, 1, 4096);
    }
}
