package com.googlecode.protobuf.format;

import android.support.v4.ca2;
import android.support.v4.i62;
import android.support.v4.wk;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.n;
import com.google.protobuf.t1;
import freemarker.core.b2;
import freemarker.core.o3;
import java.io.IOException;
import java.math.BigInteger;
import java.text.StringCharacterIterator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.googlecode.protobuf.format.case, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccase extends com.googlecode.protobuf.format.Cdo {

    /* renamed from: com.googlecode.protobuf.format.case$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17971do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f17971do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.INT64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.SINT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.SINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17971do[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: com.googlecode.protobuf.format.case$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public Appendable f17972do;

        /* renamed from: if, reason: not valid java name */
        public boolean f17974if = true;

        /* renamed from: for, reason: not valid java name */
        public StringBuilder f17973for = new StringBuilder();

        public Cfor(Appendable appendable) {
            this.f17972do = appendable;
        }

        /* renamed from: new, reason: not valid java name */
        private void m22518new(CharSequence charSequence, int i) throws IOException {
            if (i == 0) {
                return;
            }
            if (this.f17974if) {
                this.f17974if = false;
                this.f17972do.append(this.f17973for);
            }
            this.f17972do.append(charSequence);
        }

        /* renamed from: do, reason: not valid java name */
        public void m22519do() {
            this.f17973for.append("  ");
        }

        /* renamed from: for, reason: not valid java name */
        public void mo22520for(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (charSequence.charAt(i2) == '\n') {
                    m22518new(charSequence.subSequence(i, length), (i2 - i) + 1);
                    i = i2 + 1;
                    this.f17974if = true;
                }
            }
            m22518new(charSequence.subSequence(i, length), length - i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m22521if() {
            int length = this.f17973for.length();
            if (length == 0) {
                throw new IllegalArgumentException(" Outdent() without matching Indent().");
            }
            this.f17973for.delete(length - 2, length);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.case$if, reason: invalid class name */
    public static class Cif extends IOException {
        private static final long serialVersionUID = 1;

        public Cif(String str) {
            super(str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.case$new, reason: invalid class name */
    public static class Cnew extends IOException {
        private static final long serialVersionUID = 1;

        public Cnew(String str) {
            super(str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.case$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        private final CharSequence f17981do;

        /* renamed from: for, reason: not valid java name */
        private String f17983for;

        /* renamed from: if, reason: not valid java name */
        private final Matcher f17985if;

        /* renamed from: this, reason: not valid java name */
        private static final Pattern f17979this = Pattern.compile("(\\s|(#.*$))++", 8);

        /* renamed from: break, reason: not valid java name */
        private static final Pattern f17975break = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);

        /* renamed from: catch, reason: not valid java name */
        private static final Pattern f17976catch = Pattern.compile("-?inf(inity)?", 2);

        /* renamed from: class, reason: not valid java name */
        private static final Pattern f17977class = Pattern.compile("-?inf(inity)?f?", 2);

        /* renamed from: const, reason: not valid java name */
        private static final Pattern f17978const = Pattern.compile("nanf?", 2);

        /* renamed from: new, reason: not valid java name */
        private int f17986new = 0;

        /* renamed from: try, reason: not valid java name */
        private int f17987try = 0;

        /* renamed from: case, reason: not valid java name */
        private int f17980case = 0;

        /* renamed from: else, reason: not valid java name */
        private int f17982else = 0;

        /* renamed from: goto, reason: not valid java name */
        private int f17984goto = 0;

        public Ctry(CharSequence charSequence) {
            this.f17981do = charSequence;
            this.f17985if = f17979this.matcher(charSequence);
            m22523static();
            m22536native();
        }

        /* renamed from: final, reason: not valid java name */
        private Cnew m22522final(NumberFormatException numberFormatException) {
            return m22538public("Couldn't parse number: " + numberFormatException.getMessage());
        }

        /* renamed from: static, reason: not valid java name */
        private void m22523static() {
            this.f17985if.usePattern(f17979this);
            if (this.f17985if.lookingAt()) {
                Matcher matcher = this.f17985if;
                matcher.region(matcher.end(), this.f17985if.regionEnd());
            }
        }

        /* renamed from: super, reason: not valid java name */
        private Cnew m22524super(NumberFormatException numberFormatException) {
            return m22538public("Couldn't parse integer: " + numberFormatException.getMessage());
        }

        /* renamed from: break, reason: not valid java name */
        public String m22525break() throws NumberFormatException, Cnew {
            char cCharAt = this.f17983for.length() > 0 ? this.f17983for.charAt(0) : (char) 0;
            if (cCharAt != '\"' && cCharAt != '\'') {
                try {
                    String strReplace = this.f17983for.replace(',', org.apache.commons.lang3.Ctry.f28883do);
                    Double.parseDouble(strReplace);
                    m22536native();
                    return strReplace;
                } catch (NumberFormatException unused) {
                    throw m22538public("Expected string.");
                }
            }
            if (this.f17983for.length() >= 2) {
                String str = this.f17983for;
                if (str.charAt(str.length() - 1) == cCharAt) {
                    try {
                        String str2 = this.f17983for;
                        String strM22501instanceof = Ccase.m22501instanceof(str2.substring(1, str2.length() - 1));
                        m22536native();
                        return strM22501instanceof;
                    } catch (Cif e) {
                        throw m22538public(e.getMessage());
                    }
                }
            }
            throw m22538public("String missing ending quote.");
        }

        /* renamed from: case, reason: not valid java name */
        public float m22526case() throws NumberFormatException, Cnew {
            if (f17977class.matcher(this.f17983for).matches()) {
                boolean zStartsWith = this.f17983for.startsWith("-");
                m22536native();
                return zStartsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (f17978const.matcher(this.f17983for).matches()) {
                m22536native();
                return Float.NaN;
            }
            try {
                float f = Float.parseFloat(Ccase.m22496continue(this.f17983for));
                m22536native();
                return f;
            } catch (NumberFormatException e) {
                throw m22522final(e);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public int m22527catch() throws Cnew {
            try {
                int iM22505private = Ccase.m22505private(this.f17983for);
                m22536native();
                return iM22505private;
            } catch (NumberFormatException e) {
                throw m22524super(e);
            }
        }

        /* renamed from: class, reason: not valid java name */
        public long m22528class() throws Cnew {
            try {
                long jM22495abstract = Ccase.m22495abstract(this.f17983for);
                m22536native();
                return jM22495abstract;
            } catch (NumberFormatException e) {
                throw m22524super(e);
            }
        }

        /* renamed from: const, reason: not valid java name */
        public String m22529const() {
            return this.f17983for;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m22530do() {
            return this.f17983for.length() == 0;
        }

        /* renamed from: else, reason: not valid java name */
        public String mo22531else() throws Cnew {
            for (int i = 0; i < this.f17983for.length(); i++) {
                char cCharAt = this.f17983for.charAt(i);
                if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && !(('0' <= cCharAt && cCharAt <= '9') || cCharAt == '_' || cCharAt == '.' || cCharAt == '\"'))) {
                    throw m22538public("Expected identifier. -" + cCharAt);
                }
            }
            String strReplaceAll = this.f17983for.replaceAll("\"|'", "");
            m22536native();
            return strReplaceAll;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m22532for() throws Cnew {
            if (this.f17983for.equals(b2.f23511if)) {
                m22536native();
                return true;
            }
            if (!this.f17983for.equals(b2.f23510do)) {
                throw m22538public("Expected \"true\" or \"false\".");
            }
            m22536native();
            return false;
        }

        /* renamed from: goto, reason: not valid java name */
        public int m22533goto() throws Cnew {
            try {
                int iM22497extends = Ccase.m22497extends(this.f17983for);
                m22536native();
                return iM22497extends;
            } catch (NumberFormatException e) {
                throw m22524super(e);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m22534if(String str) throws Cnew {
            if (m22540switch(str)) {
                return;
            }
            throw m22538public("Expected \"" + str + "\".");
        }

        /* renamed from: import, reason: not valid java name */
        public boolean m22535import() {
            if (this.f17983for.length() == 0) {
                return false;
            }
            char cCharAt = this.f17983for.charAt(0);
            return ('0' <= cCharAt && cCharAt <= '9') || cCharAt == '-' || cCharAt == '+';
        }

        /* renamed from: native, reason: not valid java name */
        public void m22536native() {
            this.f17982else = this.f17987try;
            this.f17984goto = this.f17980case;
            while (this.f17986new < this.f17985if.regionStart()) {
                if (this.f17981do.charAt(this.f17986new) == '\n') {
                    this.f17987try++;
                    this.f17980case = 0;
                } else {
                    this.f17980case++;
                }
                this.f17986new++;
            }
            if (this.f17985if.regionStart() == this.f17985if.regionEnd()) {
                this.f17983for = "";
                return;
            }
            this.f17985if.usePattern(f17975break);
            if (this.f17985if.lookingAt()) {
                this.f17983for = this.f17985if.group();
                Matcher matcher = this.f17985if;
                matcher.region(matcher.end(), this.f17985if.regionEnd());
            } else {
                this.f17983for = String.valueOf(this.f17981do.charAt(this.f17986new));
                Matcher matcher2 = this.f17985if;
                matcher2.region(this.f17986new + 1, matcher2.regionEnd());
            }
            m22523static();
        }

        /* renamed from: new, reason: not valid java name */
        public ByteString m22537new() throws Cnew {
            char cCharAt = this.f17983for.length() > 0 ? this.f17983for.charAt(0) : (char) 0;
            if (cCharAt != '\"' && cCharAt != '\'') {
                throw m22538public("Expected string.");
            }
            if (this.f17983for.length() >= 2) {
                String str = this.f17983for;
                if (str.charAt(str.length() - 1) == cCharAt) {
                    try {
                        String str2 = this.f17983for;
                        ByteString byteStringM22499implements = Ccase.m22499implements(str2.substring(1, str2.length() - 1));
                        m22536native();
                        return byteStringM22499implements;
                    } catch (Cif e) {
                        throw m22538public(e.getMessage());
                    }
                }
            }
            throw m22538public("String missing ending quote.");
        }

        /* renamed from: public, reason: not valid java name */
        public Cnew m22538public(String str) {
            return new Cnew((this.f17987try + 1) + ":" + (this.f17980case + 1) + ": " + str);
        }

        /* renamed from: return, reason: not valid java name */
        public Cnew m22539return(String str) {
            return new Cnew((this.f17982else + 1) + ":" + (this.f17984goto + 1) + ": " + str);
        }

        /* renamed from: switch, reason: not valid java name */
        public boolean m22540switch(String str) {
            if (!this.f17983for.equals(str)) {
                return false;
            }
            m22536native();
            return true;
        }

        /* renamed from: this, reason: not valid java name */
        public long m22541this() throws Cnew {
            try {
                long jM22498finally = Ccase.m22498finally(this.f17983for);
                m22536native();
                return jM22498finally;
            } catch (NumberFormatException e) {
                throw m22524super(e);
            }
        }

        /* renamed from: throw, reason: not valid java name */
        public boolean m22542throw() {
            if (this.f17983for.length() == 0) {
                return false;
            }
            return b2.f23511if.equals(this.f17983for) || b2.f23510do.equals(this.f17983for);
        }

        /* renamed from: try, reason: not valid java name */
        public double m22543try() throws NumberFormatException, Cnew {
            if (f17976catch.matcher(this.f17983for).matches()) {
                boolean zStartsWith = this.f17983for.startsWith("-");
                m22536native();
                return zStartsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.f17983for.equalsIgnoreCase("nan")) {
                m22536native();
                return Double.NaN;
            }
            try {
                double d = Double.parseDouble(Ccase.m22496continue(this.f17983for));
                m22536native();
                return d;
            } catch (NumberFormatException e) {
                throw m22522final(e);
            }
        }

        /* renamed from: while, reason: not valid java name */
        public boolean m22544while() {
            return m22535import() && this.f17983for.contains(".");
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static long m22495abstract(String str) throws NumberFormatException {
        return m22504package(str, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public static String m22496continue(String str) {
        String strReplaceAll = str.replaceAll("\"", "");
        return strReplaceAll.equals("") ? "0" : strReplaceAll;
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m22497extends(String str) throws NumberFormatException {
        return (int) m22504package(str, true, false);
    }

    /* renamed from: finally, reason: not valid java name */
    public static long m22498finally(String str) throws NumberFormatException {
        return m22504package(str, true, true);
    }

    /* renamed from: implements, reason: not valid java name */
    public static ByteString m22499implements(CharSequence charSequence) throws Cif {
        int i;
        int i2;
        int i3;
        byte[] bArr = new byte[charSequence.length()];
        int i4 = 0;
        int i5 = 0;
        while (i4 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i4);
            if (cCharAt == '\\') {
                i4++;
                if (i4 >= charSequence.length()) {
                    throw new Cif("Invalid escape sequence: '\\' at end of string.");
                }
                char cCharAt2 = charSequence.charAt(i4);
                if (i62.m3299try(cCharAt2)) {
                    int iM3286do = i62.m3286do(cCharAt2);
                    int i6 = i4 + 1;
                    if (i6 < charSequence.length() && i62.m3299try(charSequence.charAt(i6))) {
                        iM3286do = (iM3286do * 8) + i62.m3286do(charSequence.charAt(i6));
                        i4 = i6;
                    }
                    int i7 = i4 + 1;
                    if (i7 < charSequence.length() && i62.m3299try(charSequence.charAt(i7))) {
                        iM3286do = (iM3286do * 8) + i62.m3286do(charSequence.charAt(i7));
                        i4 = i7;
                    }
                    i = i5 + 1;
                    bArr[i5] = (byte) iM3286do;
                } else {
                    if (cCharAt2 == '\"') {
                        i2 = i5 + 1;
                        bArr[i5] = 34;
                    } else if (cCharAt2 == '\'') {
                        i2 = i5 + 1;
                        bArr[i5] = 39;
                    } else if (cCharAt2 == '\\') {
                        i2 = i5 + 1;
                        bArr[i5] = 92;
                    } else if (cCharAt2 == 'f') {
                        i2 = i5 + 1;
                        bArr[i5] = 12;
                    } else if (cCharAt2 == 'n') {
                        i2 = i5 + 1;
                        bArr[i5] = 10;
                    } else if (cCharAt2 != 'r') {
                        if (cCharAt2 == 'x') {
                            i4++;
                            if (i4 >= charSequence.length() || !i62.m3294new(charSequence.charAt(i4))) {
                                throw new Cif("Invalid escape sequence: '\\x' with no digits");
                            }
                            int iM3286do2 = i62.m3286do(charSequence.charAt(i4));
                            int i8 = i4 + 1;
                            if (i8 < charSequence.length() && i62.m3294new(charSequence.charAt(i8))) {
                                iM3286do2 = (iM3286do2 * 16) + i62.m3286do(charSequence.charAt(i8));
                                i4 = i8;
                            }
                            i3 = i5 + 1;
                            bArr[i5] = (byte) iM3286do2;
                        } else if (cCharAt2 == 'a') {
                            i2 = i5 + 1;
                            bArr[i5] = 7;
                        } else if (cCharAt2 != 'b') {
                            switch (cCharAt2) {
                                case 't':
                                    i2 = i5 + 1;
                                    bArr[i5] = 9;
                                    break;
                                case 'u':
                                    int iM3286do3 = (i62.m3286do(charSequence.charAt(i4 + 1)) * 48) + (i62.m3286do(charSequence.charAt(i4 + 2)) * 32) + (i62.m3286do(charSequence.charAt(i4 + 3)) * 16);
                                    i4 += 4;
                                    i3 = i5 + 1;
                                    bArr[i5] = (byte) (iM3286do3 + i62.m3286do(charSequence.charAt(i4)));
                                    break;
                                case 'v':
                                    i2 = i5 + 1;
                                    bArr[i5] = 11;
                                    break;
                                default:
                                    throw new Cif("Invalid escape sequence: '\\" + cCharAt2 + "'");
                            }
                        } else {
                            i2 = i5 + 1;
                            bArr[i5] = 8;
                        }
                        i2 = i3;
                    } else {
                        i2 = i5 + 1;
                        bArr[i5] = 13;
                    }
                    i5 = i2;
                    i4++;
                }
            } else {
                i = i5 + 1;
                bArr[i5] = (byte) cCharAt;
            }
            i5 = i;
            i4++;
        }
        return ByteString.copyFrom(bArr, 0, i5);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m22500import(StringBuilder sb, char c) {
        sb.append(c < 16 ? "\\u000" : c < 256 ? "\\u00" : c < 4096 ? "\\u0" : "\\u");
        sb.append(Integer.toHexString(c));
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static String m22501instanceof(String str) throws Cif {
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        int i = 0;
        while (i < charArray.length) {
            char c = charArray[i];
            if (c == '\\') {
                i++;
                if (i >= charArray.length) {
                    throw new Cif("Invalid escape sequence: '\\' at end of string.");
                }
                char c2 = charArray[i];
                if (c2 == '\"') {
                    sb.append(ca2.f674do);
                } else if (c2 == '\'') {
                    sb.append('\'');
                } else if (c2 == '\\') {
                    sb.append('\\');
                } else if (c2 == 'b') {
                    sb.append('\b');
                } else if (c2 == 'f') {
                    sb.append('\f');
                } else if (c2 == 'n') {
                    sb.append('\n');
                } else if (c2 == 'r') {
                    sb.append(wk.f7547for);
                } else if (c2 == 't') {
                    sb.append('\t');
                } else {
                    if (c2 != 'u') {
                        throw new Cif("Invalid escape sequence: '\\" + c2 + "'");
                    }
                    if (i + 4 >= charArray.length) {
                        throw new Cif("Invalid escape sequence: '\\u' at end of string.");
                    }
                    int i2 = i + 1;
                    sb.append((char) Integer.parseInt(new String(charArray, i2, 4), 16));
                    i = i2 + 3;
                }
            } else {
                sb.append(c);
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: interface, reason: not valid java name */
    private void m22502interface(Descriptors.Celse celse, Object obj, Cfor cfor) throws IOException {
        switch (Cdo.f17971do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                cfor.mo22520for(obj.toString());
                break;
            case 10:
            case 11:
                cfor.mo22520for(i62.m3293native(((Integer) obj).intValue()));
                break;
            case 12:
            case 13:
                cfor.mo22520for(i62.m3295public(((Long) obj).longValue()));
                break;
            case 14:
                cfor.mo22520for("\"");
                cfor.mo22520for(m22507public((String) obj));
                cfor.mo22520for("\"");
                break;
            case 15:
                cfor.mo22520for("\"");
                cfor.mo22520for(m22503native((ByteString) obj));
                cfor.mo22520for("\"");
                break;
            case 16:
                cfor.mo22520for("\"");
                cfor.mo22520for(((Descriptors.Ccase) obj).mo19234for());
                cfor.mo22520for("\"");
                break;
            case 17:
            case 18:
                cfor.mo22520for("{");
                m22515strictfp((Message) obj, cfor);
                cfor.mo22520for("}");
                break;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static String m22503native(ByteString byteString) {
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i = 0; i < byteString.size(); i++) {
            byte bByteAt = byteString.byteAt(i);
            if (bByteAt == 34) {
                sb.append("\\\"");
            } else if (bByteAt == 39) {
                sb.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bByteAt >= 32) {
                            sb.append((char) bByteAt);
                            break;
                        } else {
                            sb.append(m22511synchronized((char) bByteAt));
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: package, reason: not valid java name */
    private static long m22504package(String str, boolean z, boolean z2) throws NumberFormatException {
        int i = 0;
        boolean z3 = true;
        if (!str.startsWith("-", 0)) {
            z3 = false;
        } else {
            if (!z) {
                throw new NumberFormatException("Number must be positive: " + str);
            }
            i = 1;
        }
        int i2 = 10;
        if (str.startsWith("0x", i)) {
            i += 2;
            i2 = 16;
        } else if (str.startsWith("0", i)) {
            i2 = 8;
        }
        String strM22496continue = m22496continue(str.substring(i));
        if (strM22496continue.length() < 16) {
            long j = Long.parseLong(strM22496continue, i2);
            if (z3) {
                j = -j;
            }
            if (z2) {
                return j;
            }
            if (z) {
                if (j <= 2147483647L && j >= -2147483648L) {
                    return j;
                }
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
            if (j < o3.f24027catch && j >= 0) {
                return j;
            }
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        BigInteger bigInteger = new BigInteger(strM22496continue, i2);
        if (z3) {
            bigInteger = bigInteger.negate();
        }
        if (z2) {
            if (z) {
                if (bigInteger.bitLength() > 63) {
                    throw new NumberFormatException("Number out of range for 64-bit signed integer: " + str);
                }
            } else if (bigInteger.bitLength() > 64) {
                throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + str);
            }
        } else if (z) {
            if (bigInteger.bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + str);
            }
        } else if (bigInteger.bitLength() > 32) {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + str);
        }
        return bigInteger.longValue();
    }

    /* renamed from: private, reason: not valid java name */
    public static int m22505private(String str) throws NumberFormatException {
        return (int) m22504package(str, false, false);
    }

    /* renamed from: protected, reason: not valid java name */
    private void m22506protected(Descriptors.Celse celse, Object obj, Cfor cfor) throws IOException {
        if (celse.m19286extends()) {
            cfor.mo22520for("\"");
            if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                cfor.mo22520for(celse.m19291native().mo19235if());
            } else {
                cfor.mo22520for(celse.mo19235if());
            }
            cfor.mo22520for("\"");
        } else {
            cfor.mo22520for("\"");
            if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
                cfor.mo22520for(celse.m19291native().mo19234for());
            } else {
                cfor.mo22520for(celse.mo19234for());
            }
            cfor.mo22520for("\"");
        }
        Descriptors.Celse.Cdo cdoM19302while = celse.m19302while();
        Descriptors.Celse.Cdo cdo = Descriptors.Celse.Cdo.MESSAGE;
        if (cdoM19302while == cdo) {
            cfor.mo22520for(": ");
            cfor.m22519do();
        } else {
            cfor.mo22520for(": ");
        }
        if (!celse.isRepeated()) {
            m22502interface(celse, obj, cfor);
            if (celse.m19302while() == cdo) {
                cfor.m22521if();
                return;
            }
            return;
        }
        cfor.mo22520for("[");
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            m22502interface(celse, it.next(), cfor);
            if (it.hasNext()) {
                cfor.mo22520for(",");
            }
        }
        cfor.mo22520for("]");
    }

    /* renamed from: public, reason: not valid java name */
    public static String m22507public(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator(str);
        for (char cFirst = stringCharacterIterator.first(); cFirst != 65535; cFirst = stringCharacterIterator.next()) {
            if (cFirst == '\f') {
                sb.append("\\f");
            } else if (cFirst == '\r') {
                sb.append("\\r");
            } else if (cFirst == '\"') {
                sb.append("\\\"");
            } else if (cFirst != '\\') {
                switch (cFirst) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    default:
                        if (cFirst < 0 || cFirst > 31) {
                            if (Character.isHighSurrogate(cFirst)) {
                                m22500import(sb, cFirst);
                                char next = stringCharacterIterator.next();
                                if (next == 65535) {
                                    throw new IllegalArgumentException("invalid unicode string: unexpected high surrogate pair value without corresponding low value.");
                                }
                                m22500import(sb, next);
                                break;
                            } else {
                                sb.append(cFirst);
                                break;
                            }
                        } else {
                            m22500import(sb, cFirst);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: return, reason: not valid java name */
    private void m22508return(Ctry ctry, Cprotected cprotected, Message.Builder builder) throws NumberFormatException, Cnew {
        ctry.m22540switch(":");
        if ("{".equals(ctry.m22529const())) {
            ctry.m22534if("{");
            do {
                ctry.mo22531else();
                m22508return(ctry, cprotected, builder);
            } while (ctry.m22540switch(","));
            ctry.m22534if("}");
            return;
        }
        if ("[".equals(ctry.m22529const())) {
            ctry.m22534if("[");
            do {
                m22508return(ctry, cprotected, builder);
            } while (ctry.m22540switch(","));
            ctry.m22534if("]");
            return;
        }
        if ("null".equals(ctry.m22529const())) {
            ctry.m22534if("null");
            return;
        }
        if (ctry.m22544while()) {
            ctry.m22526case();
            return;
        }
        if (ctry.m22535import()) {
            ctry.m22541this();
        } else if (ctry.m22542throw()) {
            ctry.m22532for();
        } else {
            ctry.m22525break();
        }
    }

    /* renamed from: static, reason: not valid java name */
    private Object m22509static(Ctry ctry, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor, boolean z) throws NumberFormatException, Cnew {
        Message.Builder builderNewBuilderForField = cfor == null ? builder.newBuilderForField(celse) : cfor.f17161if.newBuilderForType();
        if (z) {
            ByteString byteStringM22537new = ctry.m22537new();
            try {
                builderNewBuilderForField.mergeFrom(byteStringM22537new);
                return builderNewBuilderForField.build();
            } catch (n unused) {
                throw ctry.m22538public("Failed to build " + celse.mo19235if() + " from " + byteStringM22537new);
            }
        }
        ctry.m22534if("{");
        while (!ctry.m22540switch("}")) {
            if (ctry.m22530do()) {
                throw ctry.m22538public("Expected \"}\".");
            }
            m22514default(ctry, cprotected, builderNewBuilderForField);
            ctry.m22540switch(",");
        }
        return builderNewBuilderForField.build();
    }

    /* renamed from: switch, reason: not valid java name */
    private Object m22510switch(Ctry ctry, Descriptors.Celse celse) throws Cnew {
        if ("null".equals(ctry.m22529const())) {
            ctry.m22534if("null");
            return null;
        }
        switch (Cdo.f17971do[celse.m19296static().ordinal()]) {
            case 1:
            case 3:
            case 5:
                return Integer.valueOf(ctry.m22533goto());
            case 2:
            case 4:
            case 6:
                return Long.valueOf(ctry.m22541this());
            case 7:
                return Float.valueOf(ctry.m22526case());
            case 8:
                return Double.valueOf(ctry.m22543try());
            case 9:
                return Boolean.valueOf(ctry.m22532for());
            case 10:
            case 11:
                return Integer.valueOf(ctry.m22527catch());
            case 12:
            case 13:
                return Long.valueOf(ctry.m22528class());
            case 14:
                return ctry.m22525break();
            case 15:
                return ctry.m22537new();
            case 16:
                Descriptors.Ctry enumType = celse.getEnumType();
                if (ctry.m22535import()) {
                    int iM22533goto = ctry.m22533goto();
                    Descriptors.Ccase ccaseFindValueByNumber = enumType.findValueByNumber(iM22533goto);
                    if (ccaseFindValueByNumber != null) {
                        return ccaseFindValueByNumber;
                    }
                    throw ctry.m22539return("Enum type \"" + enumType.mo19235if() + "\" has no value with number " + iM22533goto + ".");
                }
                String strMo22531else = ctry.mo22531else();
                Descriptors.Ccase ccaseM19353case = enumType.m19353case(strMo22531else);
                if (ccaseM19353case != null) {
                    return ccaseM19353case;
                }
                throw ctry.m22539return("Enum type \"" + enumType.mo19235if() + "\" has no value named \"" + strMo22531else + "\".");
            case 17:
            case 18:
                throw new RuntimeException("Can't get here.");
            default:
                return null;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static String m22511synchronized(char c) {
        if (c < 16) {
            return "\\u000" + Integer.toHexString(c);
        }
        if (c < 256) {
            return "\\u00" + Integer.toHexString(c);
        }
        if (c < 4096) {
            return "\\u0" + Integer.toHexString(c);
        }
        return "\\u" + Integer.toHexString(c);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m22512throws(Ctry ctry, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor, boolean z) throws Cnew {
        Object objM22509static = celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? m22509static(ctry, cprotected, builder, celse, cfor, z) : m22510switch(ctry, celse);
        if (objM22509static != null) {
            if (celse.isRepeated()) {
                builder.addRepeatedField(celse, objM22509static);
            } else {
                builder.setField(celse, objM22509static);
            }
        }
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: const */
    public void mo22469const(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws NumberFormatException, Cnew {
        Ctry ctry = new Ctry(charSequence);
        ctry.m22534if("{");
        while (!ctry.m22540switch("}")) {
            m22514default(ctry, cprotected, builder);
        }
        if (!ctry.m22530do()) {
            throw ctry.m22538public("Expecting the end of the stream, but there seems to be more data!  Check the input for a valid JSON format.");
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m22514default(Ctry ctry, Cprotected cprotected, Message.Builder builder) throws NumberFormatException, Cnew {
        boolean z;
        Descriptors.Celse celse;
        Descriptors.Cif descriptorForType = builder.getDescriptorForType();
        String strMo22531else = ctry.mo22531else();
        Descriptors.Celse celseM19334this = descriptorForType.m19334this(strMo22531else);
        if (celseM19334this == null && (celseM19334this = descriptorForType.m19334this(strMo22531else.toLowerCase(Locale.US))) != null && celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP) {
            celseM19334this = null;
        }
        Descriptors.Celse celseM19320break = (celseM19334this == null || celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP || celseM19334this.m19291native().mo19234for().equals(strMo22531else)) ? celseM19334this : null;
        if (celseM19320break == null && i62.m3289for(strMo22531else)) {
            celseM19320break = descriptorForType.m19320break(Integer.parseInt(strMo22531else));
            z = true;
        } else {
            z = false;
        }
        Cprotected.Cfor cforM20979final = cprotected.m20979final(strMo22531else);
        if (cforM20979final == null) {
            celse = celseM19320break;
        } else {
            if (cforM20979final.f17160do.m19282class() != descriptorForType) {
                throw ctry.m22539return("Extension \"" + strMo22531else + "\" does not extend message type \"" + descriptorForType.mo19235if() + "\".");
            }
            celse = cforM20979final.f17160do;
        }
        if (celse == null) {
            m22508return(ctry, cprotected, builder);
        }
        if (celse != null) {
            ctry.m22534if(":");
            if (ctry.m22540switch("[")) {
                while (!ctry.m22540switch("]")) {
                    m22512throws(ctry, cprotected, builder, celse, cforM20979final, z);
                    ctry.m22540switch(",");
                }
            } else {
                m22512throws(ctry, cprotected, builder, celse, cforM20979final, z);
            }
        }
        if (ctry.m22540switch(",")) {
            m22514default(ctry, cprotected, builder);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m22515strictfp(Message message, Cfor cfor) throws IOException {
        Iterator<Map.Entry<Descriptors.Celse, Object>> it = message.getAllFields().entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Descriptors.Celse, Object> next = it.next();
            m22517volatile(next.getKey(), next.getValue(), cfor);
            if (it.hasNext()) {
                cfor.mo22520for(",");
            }
        }
        if (message.getUnknownFields().m21196if().size() > 0) {
            cfor.mo22520for(", ");
        }
        m22516transient(message.getUnknownFields(), cfor);
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: super */
    public void mo22471super(Message message, Appendable appendable) throws IOException {
        Cfor cfor = new Cfor(appendable);
        cfor.mo22520for("{");
        m22515strictfp(message, cfor);
        cfor.mo22520for("}");
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: throw */
    public void mo22472throw(t1 t1Var, Appendable appendable) throws IOException {
        Cfor cfor = new Cfor(appendable);
        cfor.mo22520for("{");
        m22516transient(t1Var, cfor);
        cfor.mo22520for("}");
    }

    /* renamed from: transient, reason: not valid java name */
    public void m22516transient(t1 t1Var, Cfor cfor) throws IOException {
        boolean z = true;
        for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
            t1.Cfor value = entry.getValue();
            if (z) {
                z = false;
            } else {
                cfor.mo22520for(", ");
            }
            cfor.mo22520for("\"");
            cfor.mo22520for(entry.getKey().toString());
            cfor.mo22520for("\"");
            cfor.mo22520for(": [");
            Iterator<Long> it = value.m21225public().iterator();
            boolean z2 = true;
            while (it.hasNext()) {
                long jLongValue = it.next().longValue();
                if (z2) {
                    z2 = false;
                } else {
                    cfor.mo22520for(", ");
                }
                cfor.mo22520for(i62.m3295public(jLongValue));
            }
            Iterator<Integer> it2 = value.m21219const().iterator();
            while (it2.hasNext()) {
                int iIntValue = it2.next().intValue();
                if (z2) {
                    z2 = false;
                } else {
                    cfor.mo22520for(", ");
                }
                cfor.mo22520for(String.format(null, "0x%08x", Integer.valueOf(iIntValue)));
            }
            Iterator<Long> it3 = value.m21221final().iterator();
            while (it3.hasNext()) {
                long jLongValue2 = it3.next().longValue();
                if (z2) {
                    z2 = false;
                } else {
                    cfor.mo22520for(", ");
                }
                cfor.mo22520for(String.format(null, "0x%016x", Long.valueOf(jLongValue2)));
            }
            for (ByteString byteString : value.m21229while()) {
                if (z2) {
                    z2 = false;
                } else {
                    cfor.mo22520for(", ");
                }
                cfor.mo22520for("\"");
                cfor.mo22520for(m22503native(byteString));
                cfor.mo22520for("\"");
            }
            for (t1 t1Var2 : value.m21226super()) {
                if (z2) {
                    z2 = false;
                } else {
                    cfor.mo22520for(", ");
                }
                cfor.mo22520for("{");
                m22516transient(t1Var2, cfor);
                cfor.mo22520for("}");
            }
            cfor.mo22520for("]");
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m22517volatile(Descriptors.Celse celse, Object obj, Cfor cfor) throws IOException {
        m22506protected(celse, obj, cfor);
    }
}
