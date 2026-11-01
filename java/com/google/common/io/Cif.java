package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.hy1;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.li0;
import android.support.v4.t3;
import com.google.common.base.Cthrow;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;

@ki0(emulated = true)
/* renamed from: com.google.common.io.if, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final Cif f15270do;

    /* renamed from: for, reason: not valid java name */
    private static final Cif f15271for;

    /* renamed from: if, reason: not valid java name */
    private static final Cif f15272if;

    /* renamed from: new, reason: not valid java name */
    private static final Cif f15273new;

    /* renamed from: try, reason: not valid java name */
    private static final Cif f15274try;

    /* renamed from: com.google.common.io.if$break, reason: invalid class name */
    public static final class Cbreak extends Cif {

        /* renamed from: case, reason: not valid java name */
        private final Cif f15275case;

        /* renamed from: else, reason: not valid java name */
        private final String f15276else;

        /* renamed from: goto, reason: not valid java name */
        private final int f15277goto;

        public Cbreak(Cif cif, String str, int i) {
            this.f15275case = (Cif) af1.m205continue(cif);
            this.f15276else = (String) af1.m205continue(str);
            this.f15277goto = i;
            af1.m202catch(i > 0, "Cannot add a separator after every %s chars", i);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: case */
        public boolean mo17043case(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < charSequence.length(); i++) {
                char cCharAt = charSequence.charAt(i);
                if (this.f15276else.indexOf(cCharAt) < 0) {
                    sb.append(cCharAt);
                }
            }
            return this.f15275case.mo17043case(sb);
        }

        @Override // com.google.common.io.Cif
        @li0
        /* renamed from: catch */
        public InputStream mo17044catch(Reader reader) {
            return this.f15275case.mo17044catch(Cif.m17036import(reader, this.f15276else));
        }

        @Override // com.google.common.io.Cif
        /* renamed from: default */
        public CharSequence mo17047default(CharSequence charSequence) {
            return this.f15275case.mo17047default(charSequence);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: extends */
        public Cif mo17049extends() {
            return this.f15275case.mo17049extends().mo17054package(this.f15276else, this.f15277goto);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: final */
        public void mo17050final(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            this.f15275case.mo17050final(Cif.m17038switch(appendable, this.f15276else, this.f15277goto), bArr, i, i2);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: finally */
        public Cif mo17051finally(char c) {
            return this.f15275case.mo17051finally(c).mo17054package(this.f15276else, this.f15277goto);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: native */
        public Cif mo17053native() {
            return this.f15275case.mo17053native().mo17054package(this.f15276else, this.f15277goto);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: package */
        public Cif mo17054package(String str, int i) {
            throw new UnsupportedOperationException("Already have a separator");
        }

        @Override // com.google.common.io.Cif
        /* renamed from: public */
        public int mo17055public(int i) {
            return this.f15275case.mo17055public(i);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: return */
        public int mo17056return(int i) {
            int iMo17056return = this.f15275case.mo17056return(i);
            return iMo17056return + (this.f15276else.length() * com.google.common.math.Cnew.m17340else(Math.max(0, iMo17056return - 1), this.f15277goto, RoundingMode.FLOOR));
        }

        @Override // com.google.common.io.Cif
        /* renamed from: static */
        public Cif mo17057static() {
            return this.f15275case.mo17057static().mo17054package(this.f15276else, this.f15277goto);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: this */
        public int mo17059this(byte[] bArr, CharSequence charSequence) throws Cthis {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                char cCharAt = charSequence.charAt(i);
                if (this.f15276else.indexOf(cCharAt) < 0) {
                    sb.append(cCharAt);
                }
            }
            return this.f15275case.mo17059this(bArr, sb);
        }

        @Override // com.google.common.io.Cif
        @li0
        /* renamed from: throw */
        public OutputStream mo17060throw(Writer writer) {
            return this.f15275case.mo17060throw(Cif.m17039throws(writer, this.f15276else, this.f15277goto));
        }

        public String toString() {
            return this.f15275case + ".withSeparator(\"" + this.f15276else + "\", " + this.f15277goto + ")";
        }
    }

    /* renamed from: com.google.common.io.if$case, reason: invalid class name */
    public static final class Ccase {

        /* renamed from: case, reason: not valid java name */
        public final int f15278case;

        /* renamed from: do, reason: not valid java name */
        private final String f15279do;

        /* renamed from: else, reason: not valid java name */
        private final byte[] f15280else;

        /* renamed from: for, reason: not valid java name */
        public final int f15281for;

        /* renamed from: goto, reason: not valid java name */
        private final boolean[] f15282goto;

        /* renamed from: if, reason: not valid java name */
        private final char[] f15283if;

        /* renamed from: new, reason: not valid java name */
        public final int f15284new;

        /* renamed from: try, reason: not valid java name */
        public final int f15285try;

        public Ccase(String str, char[] cArr) {
            this.f15279do = (String) af1.m205continue(str);
            this.f15283if = (char[]) af1.m205continue(cArr);
            try {
                int iM17354throw = com.google.common.math.Cnew.m17354throw(cArr.length, RoundingMode.UNNECESSARY);
                this.f15284new = iM17354throw;
                int iMin = Math.min(8, Integer.lowestOneBit(iM17354throw));
                try {
                    this.f15285try = 8 / iMin;
                    this.f15278case = iM17354throw / iMin;
                    this.f15281for = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        af1.m201case(c < 128, "Non-ASCII character: %s", c);
                        af1.m201case(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f15280else = bArr;
                    boolean[] zArr = new boolean[this.f15285try];
                    for (int i2 = 0; i2 < this.f15278case; i2++) {
                        zArr[com.google.common.math.Cnew.m17340else(i2 * 8, this.f15284new, RoundingMode.CEILING)] = true;
                    }
                    this.f15282goto = zArr;
                } catch (ArithmeticException e) {
                    throw new IllegalArgumentException("Illegal alphabet " + new String(cArr), e);
                }
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }

        /* renamed from: case, reason: not valid java name */
        private boolean m17061case() {
            for (char c : this.f15283if) {
                if (t3.m7693new(c)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: try, reason: not valid java name */
        private boolean m17063try() {
            for (char c : this.f15283if) {
                if (t3.m7690for(c)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: break, reason: not valid java name */
        public Ccase m17064break() {
            if (!m17063try()) {
                return this;
            }
            af1.u(!m17061case(), "Cannot call upperCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f15283if.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.f15283if;
                if (i >= cArr2.length) {
                    return new Ccase(this.f15279do + ".upperCase()", cArr);
                }
                cArr[i] = t3.m7691goto(cArr2[i]);
                i++;
            }
        }

        /* renamed from: else, reason: not valid java name */
        public boolean m17065else(int i) {
            return this.f15282goto[i % this.f15285try];
        }

        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ccase) {
                return Arrays.equals(this.f15283if, ((Ccase) obj).f15283if);
            }
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public int m17066for(char c) throws Cthis {
            if (c > 127) {
                throw new Cthis("Unrecognized character: 0x" + Integer.toHexString(c));
            }
            byte b = this.f15280else[c];
            if (b != -1) {
                return b;
            }
            if (c <= ' ' || c == 127) {
                throw new Cthis("Unrecognized character: 0x" + Integer.toHexString(c));
            }
            throw new Cthis("Unrecognized character: " + c);
        }

        /* renamed from: goto, reason: not valid java name */
        public Ccase m17067goto() {
            if (!m17061case()) {
                return this;
            }
            af1.u(!m17063try(), "Cannot call lowerCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f15283if.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.f15283if;
                if (i >= cArr2.length) {
                    return new Ccase(this.f15279do + ".lowerCase()", cArr);
                }
                cArr[i] = t3.m7695try(cArr2[i]);
                i++;
            }
        }

        public int hashCode() {
            return Arrays.hashCode(this.f15283if);
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m17068if(char c) {
            return c <= 127 && this.f15280else[c] != -1;
        }

        /* renamed from: new, reason: not valid java name */
        public char m17069new(int i) {
            return this.f15283if[i];
        }

        /* renamed from: this, reason: not valid java name */
        public boolean m17070this(char c) {
            byte[] bArr = this.f15280else;
            return c < bArr.length && bArr[c] != -1;
        }

        public String toString() {
            return this.f15279do;
        }
    }

    /* renamed from: com.google.common.io.if$catch, reason: invalid class name */
    public static class Ccatch extends Cif {

        /* renamed from: case, reason: not valid java name */
        public final Ccase f15286case;

        /* renamed from: else, reason: not valid java name */
        @b51
        public final Character f15287else;

        /* renamed from: goto, reason: not valid java name */
        @l01
        private transient Cif f15288goto;

        /* renamed from: this, reason: not valid java name */
        @l01
        private transient Cif f15289this;

        /* renamed from: com.google.common.io.if$catch$do, reason: invalid class name */
        public class Cdo extends OutputStream {

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ Writer f15293new;

            /* renamed from: do, reason: not valid java name */
            public int f15290do = 0;

            /* renamed from: if, reason: not valid java name */
            public int f15292if = 0;

            /* renamed from: for, reason: not valid java name */
            public int f15291for = 0;

            public Cdo(Writer writer) {
                this.f15293new = writer;
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                int i = this.f15292if;
                if (i > 0) {
                    int i2 = this.f15290do;
                    Ccase ccase = Ccatch.this.f15286case;
                    this.f15293new.write(ccase.m17069new((i2 << (ccase.f15284new - i)) & ccase.f15281for));
                    this.f15291for++;
                    if (Ccatch.this.f15287else != null) {
                        while (true) {
                            int i3 = this.f15291for;
                            Ccatch ccatch = Ccatch.this;
                            if (i3 % ccatch.f15286case.f15285try == 0) {
                                break;
                            }
                            this.f15293new.write(ccatch.f15287else.charValue());
                            this.f15291for++;
                        }
                    }
                }
                this.f15293new.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                this.f15293new.flush();
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                int i2 = this.f15290do << 8;
                this.f15290do = i2;
                this.f15290do = (i & 255) | i2;
                this.f15292if += 8;
                while (true) {
                    int i3 = this.f15292if;
                    Ccase ccase = Ccatch.this.f15286case;
                    int i4 = ccase.f15284new;
                    if (i3 < i4) {
                        return;
                    }
                    this.f15293new.write(ccase.m17069new((this.f15290do >> (i3 - i4)) & ccase.f15281for));
                    this.f15291for++;
                    this.f15292if -= Ccatch.this.f15286case.f15284new;
                }
            }
        }

        public Ccatch(String str, String str2, @b51 Character ch) {
            this(new Ccase(str, str2.toCharArray()), ch);
        }

        /* renamed from: abstract, reason: not valid java name */
        public Cif mo17071abstract(Ccase ccase, @b51 Character ch) {
            return new Ccatch(ccase, ch);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: case */
        public boolean mo17043case(CharSequence charSequence) {
            af1.m205continue(charSequence);
            CharSequence charSequenceMo17047default = mo17047default(charSequence);
            if (!this.f15286case.m17065else(charSequenceMo17047default.length())) {
                return false;
            }
            for (int i = 0; i < charSequenceMo17047default.length(); i++) {
                if (!this.f15286case.m17068if(charSequenceMo17047default.charAt(i))) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.Cif
        @li0
        /* renamed from: catch */
        public InputStream mo17044catch(Reader reader) {
            af1.m205continue(reader);
            return new C0127if(reader);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: default */
        public CharSequence mo17047default(CharSequence charSequence) {
            af1.m205continue(charSequence);
            Character ch = this.f15287else;
            if (ch == null) {
                return charSequence;
            }
            char cCharValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == cCharValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Ccatch)) {
                return false;
            }
            Ccatch ccatch = (Ccatch) obj;
            return this.f15286case.equals(ccatch.f15286case) && Cthrow.m15205do(this.f15287else, ccatch.f15287else);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: extends */
        public Cif mo17049extends() {
            Cif cifMo17071abstract = this.f15288goto;
            if (cifMo17071abstract == null) {
                Ccase ccaseM17064break = this.f15286case.m17064break();
                cifMo17071abstract = ccaseM17064break == this.f15286case ? this : mo17071abstract(ccaseM17064break, this.f15287else);
                this.f15288goto = cifMo17071abstract;
            }
            return cifMo17071abstract;
        }

        @Override // com.google.common.io.Cif
        /* renamed from: final */
        public void mo17050final(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            af1.m205continue(appendable);
            af1.s(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                m17072private(appendable, bArr, i + i3, Math.min(this.f15286case.f15278case, i2 - i3));
                i3 += this.f15286case.f15278case;
            }
        }

        @Override // com.google.common.io.Cif
        /* renamed from: finally */
        public Cif mo17051finally(char c) {
            Character ch;
            return (8 % this.f15286case.f15284new == 0 || ((ch = this.f15287else) != null && ch.charValue() == c)) ? this : mo17071abstract(this.f15286case, Character.valueOf(c));
        }

        public int hashCode() {
            return this.f15286case.hashCode() ^ Cthrow.m15206if(this.f15287else);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: native */
        public Cif mo17053native() {
            Cif cifMo17071abstract = this.f15289this;
            if (cifMo17071abstract == null) {
                Ccase ccaseM17067goto = this.f15286case.m17067goto();
                cifMo17071abstract = ccaseM17067goto == this.f15286case ? this : mo17071abstract(ccaseM17067goto, this.f15287else);
                this.f15289this = cifMo17071abstract;
            }
            return cifMo17071abstract;
        }

        @Override // com.google.common.io.Cif
        /* renamed from: package */
        public Cif mo17054package(String str, int i) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                af1.m225return(!this.f15286case.m17070this(str.charAt(i2)), "Separator (%s) cannot contain alphabet characters", str);
            }
            Character ch = this.f15287else;
            if (ch != null) {
                af1.m225return(str.indexOf(ch.charValue()) < 0, "Separator (%s) cannot contain padding character", str);
            }
            return new Cbreak(this, str, i);
        }

        /* renamed from: private, reason: not valid java name */
        public void m17072private(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            af1.m205continue(appendable);
            af1.s(i, i + i2, bArr.length);
            int i3 = 0;
            af1.m220new(i2 <= this.f15286case.f15278case);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = ((i2 + 1) * 8) - this.f15286case.f15284new;
            while (i3 < i2 * 8) {
                Ccase ccase = this.f15286case;
                appendable.append(ccase.m17069new(((int) (j >>> (i5 - i3))) & ccase.f15281for));
                i3 += this.f15286case.f15284new;
            }
            if (this.f15287else != null) {
                while (i3 < this.f15286case.f15278case * 8) {
                    appendable.append(this.f15287else.charValue());
                    i3 += this.f15286case.f15284new;
                }
            }
        }

        @Override // com.google.common.io.Cif
        /* renamed from: public */
        public int mo17055public(int i) {
            return (int) (((this.f15286case.f15284new * i) + 7) / 8);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: return */
        public int mo17056return(int i) {
            Ccase ccase = this.f15286case;
            return ccase.f15285try * com.google.common.math.Cnew.m17340else(i, ccase.f15278case, RoundingMode.CEILING);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: static */
        public Cif mo17057static() {
            return this.f15287else == null ? this : mo17071abstract(this.f15286case, null);
        }

        @Override // com.google.common.io.Cif
        /* renamed from: this */
        public int mo17059this(byte[] bArr, CharSequence charSequence) throws Cthis {
            Ccase ccase;
            af1.m205continue(bArr);
            CharSequence charSequenceMo17047default = mo17047default(charSequence);
            if (!this.f15286case.m17065else(charSequenceMo17047default.length())) {
                throw new Cthis("Invalid input length " + charSequenceMo17047default.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceMo17047default.length()) {
                long jM17066for = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    ccase = this.f15286case;
                    if (i3 >= ccase.f15285try) {
                        break;
                    }
                    jM17066for <<= ccase.f15284new;
                    if (i + i3 < charSequenceMo17047default.length()) {
                        jM17066for |= this.f15286case.m17066for(charSequenceMo17047default.charAt(i4 + i));
                        i4++;
                    }
                    i3++;
                }
                int i5 = ccase.f15278case;
                int i6 = (i5 * 8) - (i4 * ccase.f15284new);
                int i7 = (i5 - 1) * 8;
                while (i7 >= i6) {
                    bArr[i2] = (byte) ((jM17066for >>> i7) & 255);
                    i7 -= 8;
                    i2++;
                }
                i += this.f15286case.f15285try;
            }
            return i2;
        }

        @Override // com.google.common.io.Cif
        @li0
        /* renamed from: throw */
        public OutputStream mo17060throw(Writer writer) {
            af1.m205continue(writer);
            return new Cdo(writer);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f15286case.toString());
            if (8 % this.f15286case.f15284new != 0) {
                if (this.f15287else == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f15287else);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public Ccatch(Ccase ccase, @b51 Character ch) {
            this.f15286case = (Ccase) af1.m205continue(ccase);
            af1.m225return(ch == null || !ccase.m17070this(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f15287else = ch;
        }

        /* renamed from: com.google.common.io.if$catch$if, reason: invalid class name and collision with other inner class name */
        public class C0127if extends InputStream {

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ Reader f15300try;

            /* renamed from: do, reason: not valid java name */
            public int f15296do = 0;

            /* renamed from: if, reason: not valid java name */
            public int f15298if = 0;

            /* renamed from: for, reason: not valid java name */
            public int f15297for = 0;

            /* renamed from: new, reason: not valid java name */
            public boolean f15299new = false;

            public C0127if(Reader reader) {
                this.f15300try = reader;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.f15300try.close();
            }

            /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
            
                throw new com.google.common.io.Cif.Cthis("Padding cannot start at index " + r4.f15297for);
             */
            @Override // java.io.InputStream
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public int read() throws IOException {
                int i;
                while (true) {
                    int i2 = this.f15300try.read();
                    if (i2 != -1) {
                        this.f15297for++;
                        char c = (char) i2;
                        Character ch = Ccatch.this.f15287else;
                        if (ch != null && ch.charValue() == c) {
                            if (!this.f15299new && ((i = this.f15297for) == 1 || !Ccatch.this.f15286case.m17065else(i - 1))) {
                                break;
                            }
                            this.f15299new = true;
                        } else {
                            if (this.f15299new) {
                                throw new Cthis("Expected padding character but found '" + c + "' at index " + this.f15297for);
                            }
                            int i3 = this.f15296do;
                            Ccase ccase = Ccatch.this.f15286case;
                            int i4 = i3 << ccase.f15284new;
                            this.f15296do = i4;
                            int iM17066for = ccase.m17066for(c) | i4;
                            this.f15296do = iM17066for;
                            int i5 = this.f15298if + Ccatch.this.f15286case.f15284new;
                            this.f15298if = i5;
                            if (i5 >= 8) {
                                int i6 = i5 - 8;
                                this.f15298if = i6;
                                return (iM17066for >> i6) & 255;
                            }
                        }
                    } else {
                        if (this.f15299new || Ccatch.this.f15286case.m17065else(this.f15297for)) {
                            return -1;
                        }
                        throw new Cthis("Invalid input length " + this.f15297for);
                    }
                }
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = i2 + i;
                af1.s(i, i3, bArr.length);
                int i4 = i;
                while (i4 < i3) {
                    int i5 = read();
                    if (i5 == -1) {
                        int i6 = i4 - i;
                        if (i6 == 0) {
                            return -1;
                        }
                        return i6;
                    }
                    bArr[i4] = (byte) i5;
                    i4++;
                }
                return i4 - i;
            }
        }
    }

    /* renamed from: com.google.common.io.if$do, reason: invalid class name */
    public class Cdo extends com.google.common.io.Cfor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ com.google.common.io.Celse f15301do;

        public Cdo(com.google.common.io.Celse celse) {
            this.f15301do = celse;
        }

        @Override // com.google.common.io.Cfor
        /* renamed from: for */
        public OutputStream mo17006for() throws IOException {
            return Cif.this.mo17060throw(this.f15301do.mo17002if());
        }
    }

    /* renamed from: com.google.common.io.if$else, reason: invalid class name */
    public static final class Celse extends Ccatch {

        /* renamed from: break, reason: not valid java name */
        public final char[] f15303break;

        public Celse(String str, String str2) {
            this(new Ccase(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.Cif.Ccatch
        /* renamed from: abstract */
        public Cif mo17071abstract(Ccase ccase, @b51 Character ch) {
            return new Celse(ccase);
        }

        @Override // com.google.common.io.Cif.Ccatch, com.google.common.io.Cif
        /* renamed from: final */
        public void mo17050final(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            af1.m205continue(appendable);
            af1.s(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.f15303break[i4]);
                appendable.append(this.f15303break[i4 | 256]);
            }
        }

        @Override // com.google.common.io.Cif.Ccatch, com.google.common.io.Cif
        /* renamed from: this */
        public int mo17059this(byte[] bArr, CharSequence charSequence) throws Cthis {
            af1.m205continue(bArr);
            if (charSequence.length() % 2 == 1) {
                throw new Cthis("Invalid input length " + charSequence.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.f15286case.m17066for(charSequence.charAt(i)) << 4) | this.f15286case.m17066for(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        private Celse(Ccase ccase) {
            super(ccase, null);
            this.f15303break = new char[512];
            af1.m220new(ccase.f15283if.length == 16);
            for (int i = 0; i < 256; i++) {
                this.f15303break[i] = ccase.m17069new(i >>> 4);
                this.f15303break[i | 256] = ccase.m17069new(i & 15);
            }
        }
    }

    /* renamed from: com.google.common.io.if$goto, reason: invalid class name */
    public static final class Cgoto extends Ccatch {
        public Cgoto(String str, String str2, @b51 Character ch) {
            this(new Ccase(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.Cif.Ccatch
        /* renamed from: abstract */
        public Cif mo17071abstract(Ccase ccase, @b51 Character ch) {
            return new Cgoto(ccase, ch);
        }

        @Override // com.google.common.io.Cif.Ccatch, com.google.common.io.Cif
        /* renamed from: final */
        public void mo17050final(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            af1.m205continue(appendable);
            int i3 = i + i2;
            af1.s(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                appendable.append(this.f15286case.m17069new(i6 >>> 18));
                appendable.append(this.f15286case.m17069new((i6 >>> 12) & 63));
                appendable.append(this.f15286case.m17069new((i6 >>> 6) & 63));
                appendable.append(this.f15286case.m17069new(i6 & 63));
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                m17072private(appendable, bArr, i, i3 - i);
            }
        }

        @Override // com.google.common.io.Cif.Ccatch, com.google.common.io.Cif
        /* renamed from: this */
        public int mo17059this(byte[] bArr, CharSequence charSequence) throws Cthis {
            af1.m205continue(bArr);
            CharSequence charSequenceMo17047default = mo17047default(charSequence);
            if (!this.f15286case.m17065else(charSequenceMo17047default.length())) {
                throw new Cthis("Invalid input length " + charSequenceMo17047default.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceMo17047default.length()) {
                int i3 = i + 1;
                int i4 = i3 + 1;
                int iM17066for = (this.f15286case.m17066for(charSequenceMo17047default.charAt(i)) << 18) | (this.f15286case.m17066for(charSequenceMo17047default.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (iM17066for >>> 16);
                if (i4 < charSequenceMo17047default.length()) {
                    int i6 = i4 + 1;
                    int iM17066for2 = iM17066for | (this.f15286case.m17066for(charSequenceMo17047default.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) ((iM17066for2 >>> 8) & 255);
                    if (i6 < charSequenceMo17047default.length()) {
                        i4 = i6 + 1;
                        i5 = i2 + 1;
                        bArr[i2] = (byte) ((iM17066for2 | this.f15286case.m17066for(charSequenceMo17047default.charAt(i6))) & 255);
                    } else {
                        i = i6;
                    }
                }
                i2 = i5;
                i = i4;
            }
            return i2;
        }

        private Cgoto(Ccase ccase, @b51 Character ch) {
            super(ccase, ch);
            af1.m220new(ccase.f15283if.length == 64);
        }
    }

    /* renamed from: com.google.common.io.if$if, reason: invalid class name and collision with other inner class name */
    public class C0128if extends com.google.common.io.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ com.google.common.io.Cgoto f15306do;

        public C0128if(com.google.common.io.Cgoto cgoto) {
            this.f15306do = cgoto;
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() throws IOException {
            return Cif.this.mo17044catch(this.f15306do.mo17020const());
        }
    }

    /* renamed from: com.google.common.io.if$this, reason: invalid class name */
    public static final class Cthis extends IOException {
        public Cthis(String str) {
            super(str);
        }

        public Cthis(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.google.common.io.if$try, reason: invalid class name */
    public static class Ctry extends Writer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Appendable f15312do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Writer f15313if;

        public Ctry(Appendable appendable, Writer writer) {
            this.f15312do = appendable;
            this.f15313if = writer;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f15313if.close();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            this.f15313if.flush();
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f15312do.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    static {
        Character chValueOf = Character.valueOf(hy1.f2563new);
        f15270do = new Cgoto("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        f15272if = new Cgoto("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        f15271for = new Ccatch("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        f15273new = new Ccatch("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        f15274try = new Celse("base16()", net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m17033do() {
        return f15274try;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m17034for() {
        return f15273new;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m17035if() {
        return f15271for;
    }

    @li0
    /* renamed from: import, reason: not valid java name */
    public static Reader m17036import(Reader reader, String str) {
        af1.m205continue(reader);
        af1.m205continue(str);
        return new Cfor(reader, str);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cif m17037new() {
        return f15270do;
    }

    /* renamed from: switch, reason: not valid java name */
    public static Appendable m17038switch(Appendable appendable, String str, int i) {
        af1.m205continue(appendable);
        af1.m205continue(str);
        af1.m220new(i > 0);
        return new Cnew(i, appendable, str);
    }

    @li0
    /* renamed from: throws, reason: not valid java name */
    public static Writer m17039throws(Writer writer, String str, int i) {
        return new Ctry(m17038switch(writer, str, i), writer);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif m17040try() {
        return f15272if;
    }

    /* renamed from: while, reason: not valid java name */
    private static byte[] m17041while(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public final com.google.common.io.Cnew m17042break(com.google.common.io.Cgoto cgoto) {
        af1.m205continue(cgoto);
        return new C0128if(cgoto);
    }

    /* renamed from: case, reason: not valid java name */
    public abstract boolean mo17043case(CharSequence charSequence);

    @li0
    /* renamed from: catch, reason: not valid java name */
    public abstract InputStream mo17044catch(Reader reader);

    /* renamed from: class, reason: not valid java name */
    public String m17045class(byte[] bArr) {
        return m17046const(bArr, 0, bArr.length);
    }

    /* renamed from: const, reason: not valid java name */
    public final String m17046const(byte[] bArr, int i, int i2) {
        af1.s(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(mo17056return(i2));
        try {
            mo17050final(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public CharSequence mo17047default(CharSequence charSequence) {
        return (CharSequence) af1.m205continue(charSequence);
    }

    /* renamed from: else, reason: not valid java name */
    public final byte[] m17048else(CharSequence charSequence) {
        try {
            return m17052goto(charSequence);
        } catch (Cthis e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public abstract Cif mo17049extends();

    /* renamed from: final, reason: not valid java name */
    public abstract void mo17050final(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: finally, reason: not valid java name */
    public abstract Cif mo17051finally(char c);

    /* renamed from: goto, reason: not valid java name */
    public final byte[] m17052goto(CharSequence charSequence) throws Cthis {
        CharSequence charSequenceMo17047default = mo17047default(charSequence);
        byte[] bArr = new byte[mo17055public(charSequenceMo17047default.length())];
        return m17041while(bArr, mo17059this(bArr, charSequenceMo17047default));
    }

    /* renamed from: native, reason: not valid java name */
    public abstract Cif mo17053native();

    /* renamed from: package, reason: not valid java name */
    public abstract Cif mo17054package(String str, int i);

    /* renamed from: public, reason: not valid java name */
    public abstract int mo17055public(int i);

    /* renamed from: return, reason: not valid java name */
    public abstract int mo17056return(int i);

    /* renamed from: static, reason: not valid java name */
    public abstract Cif mo17057static();

    @li0
    /* renamed from: super, reason: not valid java name */
    public final com.google.common.io.Cfor m17058super(com.google.common.io.Celse celse) {
        af1.m205continue(celse);
        return new Cdo(celse);
    }

    /* renamed from: this, reason: not valid java name */
    public abstract int mo17059this(byte[] bArr, CharSequence charSequence) throws Cthis;

    @li0
    /* renamed from: throw, reason: not valid java name */
    public abstract OutputStream mo17060throw(Writer writer);

    /* renamed from: com.google.common.io.if$for, reason: invalid class name */
    public static class Cfor extends Reader {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Reader f15304do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f15305if;

        public Cfor(Reader reader, String str) {
            this.f15304do = reader;
            this.f15305if = str;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f15304do.close();
        }

        @Override // java.io.Reader
        public int read() throws IOException {
            int i;
            do {
                i = this.f15304do.read();
                if (i == -1) {
                    break;
                }
            } while (this.f15305if.indexOf((char) i) >= 0);
            return i;
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.io.if$new, reason: invalid class name */
    public static class Cnew implements Appendable {

        /* renamed from: do, reason: not valid java name */
        public int f15308do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Appendable f15309for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f15310if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ String f15311new;

        public Cnew(int i, Appendable appendable, String str) {
            this.f15310if = i;
            this.f15309for = appendable;
            this.f15311new = str;
            this.f15308do = i;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) throws IOException {
            if (this.f15308do == 0) {
                this.f15309for.append(this.f15311new);
                this.f15308do = this.f15310if;
            }
            this.f15309for.append(c);
            this.f15308do--;
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@b51 CharSequence charSequence, int i, int i2) throws IOException {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Appendable
        public Appendable append(@b51 CharSequence charSequence) throws IOException {
            throw new UnsupportedOperationException();
        }
    }
}
