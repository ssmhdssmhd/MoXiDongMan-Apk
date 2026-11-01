package com.googlecode.protobuf.format;

import android.support.v4.i62;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import com.googlecode.protobuf.format.Cgoto;
import freemarker.core.b2;
import freemarker.core.o3;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.googlecode.protobuf.format.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak extends com.googlecode.protobuf.format.Cdo {

    /* renamed from: com.googlecode.protobuf.format.break$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17956do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f17956do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.INT64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.SINT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.SINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17956do[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: com.googlecode.protobuf.format.break$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final CharSequence f17963do;

        /* renamed from: for, reason: not valid java name */
        private String f17965for;

        /* renamed from: if, reason: not valid java name */
        private final Matcher f17967if;

        /* renamed from: this, reason: not valid java name */
        private static final Pattern f17961this = Pattern.compile("(\\s|(#.*$))++", 8);

        /* renamed from: break, reason: not valid java name */
        private static final Pattern f17957break = Pattern.compile("extension|[a-zA-Z_\\s;@][0-9a-zA-Z_\\s;@+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|</|[\\\\0-9]++|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);

        /* renamed from: catch, reason: not valid java name */
        private static Pattern f17958catch = Pattern.compile("-?inf(inity)?", 2);

        /* renamed from: class, reason: not valid java name */
        private static Pattern f17959class = Pattern.compile("-?inf(inity)?f?", 2);

        /* renamed from: const, reason: not valid java name */
        private static Pattern f17960const = Pattern.compile("nanf?", 2);

        /* renamed from: new, reason: not valid java name */
        private int f17968new = 0;

        /* renamed from: try, reason: not valid java name */
        private int f17969try = 0;

        /* renamed from: case, reason: not valid java name */
        private int f17962case = 0;

        /* renamed from: else, reason: not valid java name */
        private int f17964else = 0;

        /* renamed from: goto, reason: not valid java name */
        private int f17966goto = 0;

        public Cfor(CharSequence charSequence) {
            this.f17963do = charSequence;
            this.f17967if = f17961this.matcher(charSequence);
            m22475native();
            m22490throw();
        }

        /* renamed from: const, reason: not valid java name */
        private Cgoto.Cdo m22473const(NumberFormatException numberFormatException) {
            return m22492while("Couldn't parse number: " + numberFormatException.getMessage());
        }

        /* renamed from: final, reason: not valid java name */
        private Cgoto.Cdo m22474final(NumberFormatException numberFormatException) {
            return m22492while("Couldn't parse integer: " + numberFormatException.getMessage());
        }

        /* renamed from: native, reason: not valid java name */
        private void m22475native() {
            this.f17967if.usePattern(f17961this);
            if (this.f17967if.lookingAt()) {
                Matcher matcher = this.f17967if;
                matcher.region(matcher.end(), this.f17967if.regionEnd());
            }
        }

        /* renamed from: break, reason: not valid java name */
        public String m22476break() throws Cgoto.Cdo {
            return m22486new().toStringUtf8();
        }

        /* renamed from: case, reason: not valid java name */
        public float m22477case() throws Cgoto.Cdo, NumberFormatException {
            if (f17959class.matcher(this.f17965for).matches()) {
                boolean zStartsWith = this.f17965for.startsWith("-");
                m22490throw();
                return zStartsWith ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            if (f17960const.matcher(this.f17965for).matches()) {
                m22490throw();
                return Float.NaN;
            }
            try {
                float f = Float.parseFloat(this.f17965for);
                m22490throw();
                return f;
            } catch (NumberFormatException e) {
                throw m22473const(e);
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public int m22478catch() throws Cgoto.Cdo {
            try {
                int iM22459private = Cbreak.m22459private(this.f17965for);
                m22490throw();
                return iM22459private;
            } catch (NumberFormatException e) {
                throw m22474final(e);
            }
        }

        /* renamed from: class, reason: not valid java name */
        public long m22479class() throws Cgoto.Cdo {
            try {
                long jM22448abstract = Cbreak.m22448abstract(this.f17965for);
                m22490throw();
                return jM22448abstract;
            } catch (NumberFormatException e) {
                throw m22474final(e);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m22480do() {
            return this.f17965for.length() == 0;
        }

        /* renamed from: else, reason: not valid java name */
        public String m22481else() throws Cgoto.Cdo {
            for (int i = 0; i < this.f17965for.length(); i++) {
                char cCharAt = this.f17965for.charAt(i);
                if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && !(('0' <= cCharAt && cCharAt <= '9') || cCharAt == '_' || cCharAt == '.' || cCharAt == '\"'))) {
                    throw m22492while("Expected identifier. -" + cCharAt);
                }
            }
            String strReplaceAll = this.f17965for.replaceAll("\"|'", "");
            m22490throw();
            return strReplaceAll;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m22482for() throws Cgoto.Cdo {
            if (this.f17965for.equals(b2.f23511if)) {
                m22490throw();
                return true;
            }
            if (!this.f17965for.equals(b2.f23510do)) {
                throw m22492while("Expected \"true\" or \"false\".");
            }
            m22490throw();
            return false;
        }

        /* renamed from: goto, reason: not valid java name */
        public int m22483goto() throws Cgoto.Cdo {
            try {
                int iM22451extends = Cbreak.m22451extends(this.f17965for);
                m22490throw();
                return iM22451extends;
            } catch (NumberFormatException e) {
                throw m22474final(e);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m22484if(String str) throws Cgoto.Cdo {
            if (m22487public(str)) {
                return;
            }
            throw m22492while("Expected \"" + str + "\".");
        }

        /* renamed from: import, reason: not valid java name */
        public Cgoto.Cdo m22485import(String str) {
            return new Cgoto.Cdo((this.f17964else + 1) + ":" + (this.f17966goto + 1) + ": " + str);
        }

        /* renamed from: new, reason: not valid java name */
        public ByteString m22486new() throws Cgoto.Cdo {
            try {
                ByteString byteStringM22453implements = Cbreak.m22453implements(this.f17965for);
                m22490throw();
                return byteStringM22453implements;
            } catch (Cif e) {
                throw m22492while(e.getMessage());
            }
        }

        /* renamed from: public, reason: not valid java name */
        public boolean m22487public(String str) {
            if (!this.f17965for.equals(str)) {
                return false;
            }
            m22490throw();
            return true;
        }

        /* renamed from: super, reason: not valid java name */
        public boolean m22488super() {
            if (this.f17965for.length() == 0) {
                return false;
            }
            char cCharAt = this.f17965for.charAt(0);
            return ('0' <= cCharAt && cCharAt <= '9') || cCharAt == '-' || cCharAt == '+';
        }

        /* renamed from: this, reason: not valid java name */
        public long m22489this() throws Cgoto.Cdo {
            try {
                long jM22452finally = Cbreak.m22452finally(this.f17965for);
                m22490throw();
                return jM22452finally;
            } catch (NumberFormatException e) {
                throw m22474final(e);
            }
        }

        /* renamed from: throw, reason: not valid java name */
        public void m22490throw() {
            this.f17964else = this.f17969try;
            this.f17966goto = this.f17962case;
            while (this.f17968new < this.f17967if.regionStart()) {
                if (this.f17963do.charAt(this.f17968new) == '\n') {
                    this.f17969try++;
                    this.f17962case = 0;
                } else {
                    this.f17962case++;
                }
                this.f17968new++;
            }
            if (this.f17967if.regionStart() == this.f17967if.regionEnd()) {
                this.f17965for = "";
                return;
            }
            this.f17967if.usePattern(f17957break);
            if (this.f17967if.lookingAt()) {
                this.f17965for = this.f17967if.group();
                Matcher matcher = this.f17967if;
                matcher.region(matcher.end(), this.f17967if.regionEnd());
            } else {
                this.f17965for = String.valueOf(this.f17963do.charAt(this.f17968new));
                Matcher matcher2 = this.f17967if;
                matcher2.region(this.f17968new + 1, matcher2.regionEnd());
            }
            m22475native();
        }

        /* renamed from: try, reason: not valid java name */
        public double m22491try() throws Cgoto.Cdo, NumberFormatException {
            if (f17958catch.matcher(this.f17965for).matches()) {
                boolean zStartsWith = this.f17965for.startsWith("-");
                m22490throw();
                return zStartsWith ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
            }
            if (this.f17965for.equalsIgnoreCase("nan")) {
                m22490throw();
                return Double.NaN;
            }
            try {
                double d = Double.parseDouble(this.f17965for);
                m22490throw();
                return d;
            } catch (NumberFormatException e) {
                throw m22473const(e);
            }
        }

        /* renamed from: while, reason: not valid java name */
        public Cgoto.Cdo m22492while(String str) {
            return new Cgoto.Cdo((this.f17969try + 1) + ":" + (this.f17962case + 1) + ": " + str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.break$if, reason: invalid class name */
    public static class Cif extends IOException {
        private static final long serialVersionUID = 1;

        public Cif(String str) {
            super(str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.break$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public Appendable f17970do;

        public Cnew(Appendable appendable) {
            this.f17970do = appendable;
        }

        /* renamed from: if, reason: not valid java name */
        private void m22493if(CharSequence charSequence, int i) throws IOException {
            if (i == 0) {
                return;
            }
            this.f17970do.append(charSequence);
        }

        /* renamed from: do, reason: not valid java name */
        public void m22494do(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            m22493if(charSequence.subSequence(0, length), length - 0);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static long m22448abstract(String str) throws NumberFormatException {
        return m22458package(str, false, true);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m22449continue(Message message, Cnew cnew) throws IOException {
        for (Map.Entry<Descriptors.Celse, Object> entry : message.getAllFields().entrySet()) {
            m22470strictfp(entry.getKey(), entry.getValue(), cnew);
        }
        m22466transient(message.getUnknownFields(), cnew);
    }

    /* renamed from: default, reason: not valid java name */
    private void m22450default(Cfor cfor, Cprotected cprotected, Message.Builder builder) throws Cgoto.Cdo {
        Cprotected.Cfor cfor2;
        Descriptors.Celse celse;
        Descriptors.Cif descriptorForType = builder.getDescriptorForType();
        cfor.m22484if("<");
        if (cfor.m22487public("extension")) {
            StringBuilder sb = new StringBuilder(m22454import(cfor));
            while (cfor.m22487public(".")) {
                sb.append(".");
                sb.append(cfor.m22481else());
            }
            Cprotected.Cfor cforM20979final = cprotected.m20979final(sb.toString());
            if (cforM20979final == null) {
                throw cfor.m22485import("Extension \"" + ((Object) sb) + "\" not found in the ExtensionRegistry.");
            }
            if (cforM20979final.f17160do.m19282class() != descriptorForType) {
                throw cfor.m22485import("Extension \"" + ((Object) sb) + "\" does not extend message type \"" + descriptorForType.mo19235if() + "\".");
            }
            celse = cforM20979final.f17160do;
            cfor2 = cforM20979final;
        } else {
            String strM22481else = cfor.m22481else();
            Descriptors.Celse celseM19334this = descriptorForType.m19334this(strM22481else);
            if (celseM19334this == null && (celseM19334this = descriptorForType.m19334this(strM22481else.toLowerCase(Locale.US))) != null && celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP) {
                celseM19334this = null;
            }
            if (celseM19334this != null && celseM19334this.m19296static() == Descriptors.Celse.Cif.GROUP && !celseM19334this.m19291native().mo19234for().equals(strM22481else)) {
                celseM19334this = null;
            }
            if (celseM19334this == null) {
                throw cfor.m22485import("Message type \"" + descriptorForType.mo19235if() + "\" has no field named \"" + strM22481else + "\".");
            }
            cfor2 = null;
            celse = celseM19334this;
        }
        cfor.m22484if(">");
        Object objM22465throws = m22465throws(cfor, cprotected, builder, celse, cfor2);
        if (celse.isRepeated()) {
            builder.addRepeatedField(celse, objM22465throws);
        } else {
            builder.setField(celse, objM22465throws);
        }
        m22468while(cfor);
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m22451extends(String str) throws NumberFormatException {
        return (int) m22458package(str, true, false);
    }

    /* renamed from: finally, reason: not valid java name */
    public static long m22452finally(String str) throws NumberFormatException {
        return m22458package(str, true, true);
    }

    /* renamed from: implements, reason: not valid java name */
    public static ByteString m22453implements(CharSequence charSequence) throws Cif {
        int i;
        int i2;
        byte[] bArr = new byte[charSequence.length()];
        int i3 = 0;
        int i4 = 0;
        while (i3 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt == '\\') {
                i3++;
                if (i3 >= charSequence.length()) {
                    throw new Cif("Invalid escape sequence: '\\' at end of string.");
                }
                char cCharAt2 = charSequence.charAt(i3);
                if (i62.m3299try(cCharAt2)) {
                    int iM3286do = i62.m3286do(cCharAt2);
                    int i5 = i3 + 1;
                    if (i5 < charSequence.length() && i62.m3299try(charSequence.charAt(i5))) {
                        iM3286do = (iM3286do * 8) + i62.m3286do(charSequence.charAt(i5));
                        i3 = i5;
                    }
                    int i6 = i3 + 1;
                    if (i6 < charSequence.length() && i62.m3299try(charSequence.charAt(i6))) {
                        iM3286do = (iM3286do * 8) + i62.m3286do(charSequence.charAt(i6));
                        i3 = i6;
                    }
                    i = i4 + 1;
                    bArr[i4] = (byte) iM3286do;
                } else {
                    if (cCharAt2 == '\"') {
                        i2 = i4 + 1;
                        bArr[i4] = 34;
                    } else if (cCharAt2 == '\'') {
                        i2 = i4 + 1;
                        bArr[i4] = 39;
                    } else if (cCharAt2 == '\\') {
                        i2 = i4 + 1;
                        bArr[i4] = 92;
                    } else if (cCharAt2 == 'f') {
                        i2 = i4 + 1;
                        bArr[i4] = 12;
                    } else if (cCharAt2 == 'n') {
                        i2 = i4 + 1;
                        bArr[i4] = 10;
                    } else if (cCharAt2 == 'r') {
                        i2 = i4 + 1;
                        bArr[i4] = 13;
                    } else if (cCharAt2 == 't') {
                        i2 = i4 + 1;
                        bArr[i4] = 9;
                    } else if (cCharAt2 == 'v') {
                        i2 = i4 + 1;
                        bArr[i4] = 11;
                    } else if (cCharAt2 == 'x') {
                        i3++;
                        if (i3 >= charSequence.length() || !i62.m3294new(charSequence.charAt(i3))) {
                            throw new Cif("Invalid escape sequence: '\\x' with no digits");
                        }
                        int iM3286do2 = i62.m3286do(charSequence.charAt(i3));
                        int i7 = i3 + 1;
                        if (i7 < charSequence.length() && i62.m3294new(charSequence.charAt(i7))) {
                            iM3286do2 = (iM3286do2 * 16) + i62.m3286do(charSequence.charAt(i7));
                            i3 = i7;
                        }
                        bArr[i4] = (byte) iM3286do2;
                        i2 = i4 + 1;
                    } else if (cCharAt2 == 'a') {
                        i2 = i4 + 1;
                        bArr[i4] = 7;
                    } else {
                        if (cCharAt2 != 'b') {
                            throw new Cif("Invalid escape sequence: '\\" + cCharAt2 + "'");
                        }
                        i2 = i4 + 1;
                        bArr[i4] = 8;
                    }
                    i4 = i2;
                    i3++;
                }
            } else {
                i = i4 + 1;
                bArr[i4] = (byte) cCharAt;
            }
            i4 = i;
            i3++;
        }
        return ByteString.copyFrom(bArr, 0, i4);
    }

    /* renamed from: import, reason: not valid java name */
    private String m22454import(Cfor cfor) throws Cgoto.Cdo {
        cfor.m22484if("type");
        cfor.m22484if("=");
        return cfor.m22481else();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static String m22455instanceof(String str) throws Cif {
        return m22453implements(str).toStringUtf8();
    }

    /* renamed from: interface, reason: not valid java name */
    private void m22456interface(Descriptors.Celse celse, Object obj, Cnew cnew) throws IOException {
        if (celse.m19286extends()) {
            cnew.m22494do("<extension type=\"");
            if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                cnew.m22494do(celse.m19291native().mo19235if());
            } else {
                cnew.m22494do(celse.mo19235if());
            }
            cnew.m22494do("\">");
        } else {
            cnew.m22494do("<");
            if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
                cnew.m22494do(celse.m19291native().mo19234for());
            } else {
                cnew.m22494do(celse.mo19234for());
            }
            cnew.m22494do(">");
        }
        m22467volatile(celse, obj, cnew);
        if (celse.m19286extends()) {
            cnew.m22494do("</extension>");
            return;
        }
        cnew.m22494do("</");
        if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
            cnew.m22494do(celse.m19291native().mo19234for());
        } else {
            cnew.m22494do(celse.mo19234for());
        }
        cnew.m22494do(">");
    }

    /* renamed from: native, reason: not valid java name */
    private String m22457native(Cfor cfor) throws Cgoto.Cdo {
        cfor.m22484if("<");
        String strM22481else = cfor.m22481else();
        cfor.m22484if(">");
        return strM22481else;
    }

    /* renamed from: package, reason: not valid java name */
    private static long m22458package(String str, boolean z, boolean z2) throws NumberFormatException {
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
        String strSubstring = str.substring(i);
        if (strSubstring.length() < 16) {
            long j = Long.parseLong(strSubstring, i2);
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
        BigInteger bigInteger = new BigInteger(strSubstring, i2);
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
    public static int m22459private(String str) throws NumberFormatException {
        return (int) m22458package(str, false, false);
    }

    /* renamed from: protected, reason: not valid java name */
    private void m22460protected(CharSequence charSequence, CharSequence charSequence2, Cnew cnew) throws IOException {
        cnew.m22494do("<unknown-field index=\"");
        cnew.m22494do(charSequence);
        cnew.m22494do("\">");
        cnew.m22494do(charSequence2);
        cnew.m22494do("</unknown-field>");
    }

    /* renamed from: public, reason: not valid java name */
    public static String m22461public(ByteString byteString) {
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
                            sb.append('\\');
                            sb.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb.append((char) ((bByteAt & 7) + 48));
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
    public static String m22462return(String str) {
        return m22461public(ByteString.copyFromUtf8(str));
    }

    /* renamed from: static, reason: not valid java name */
    private Object m22463static(Cfor cfor, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor2) throws Cgoto.Cdo {
        Message.Builder builderNewBuilderForField = cfor2 == null ? builder.newBuilderForField(celse) : cfor2.f17161if.newBuilderForType();
        while (!cfor.m22487public("</")) {
            if (cfor.m22480do()) {
                throw cfor.m22492while("Expected \"</\".");
            }
            m22450default(cfor, cprotected, builderNewBuilderForField);
        }
        return builderNewBuilderForField.build();
    }

    /* renamed from: switch, reason: not valid java name */
    private Object m22464switch(Cfor cfor, Descriptors.Celse celse) throws Cgoto.Cdo {
        switch (Cdo.f17956do[celse.m19296static().ordinal()]) {
            case 1:
            case 3:
            case 5:
                return Integer.valueOf(cfor.m22483goto());
            case 2:
            case 4:
            case 6:
                return Long.valueOf(cfor.m22489this());
            case 7:
                return Float.valueOf(cfor.m22477case());
            case 8:
                return Double.valueOf(cfor.m22491try());
            case 9:
                return Boolean.valueOf(cfor.m22482for());
            case 10:
            case 11:
                return Integer.valueOf(cfor.m22478catch());
            case 12:
            case 13:
                return Long.valueOf(cfor.m22479class());
            case 14:
                return cfor.m22476break();
            case 15:
                return cfor.m22486new();
            case 16:
                Descriptors.Ctry enumType = celse.getEnumType();
                if (cfor.m22488super()) {
                    int iM22483goto = cfor.m22483goto();
                    Descriptors.Ccase ccaseFindValueByNumber = enumType.findValueByNumber(iM22483goto);
                    if (ccaseFindValueByNumber != null) {
                        return ccaseFindValueByNumber;
                    }
                    throw cfor.m22485import("Enum type \"" + enumType.mo19235if() + "\" has no value with number " + iM22483goto + ".");
                }
                String strM22481else = cfor.m22481else();
                Descriptors.Ccase ccaseM19353case = enumType.m19353case(strM22481else);
                if (ccaseM19353case != null) {
                    return ccaseM19353case;
                }
                throw cfor.m22485import("Enum type \"" + enumType.mo19235if() + "\" has no value named \"" + strM22481else + "\".");
            case 17:
            case 18:
                throw new RuntimeException("Can't get here.");
            default:
                return null;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private Object m22465throws(Cfor cfor, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor2) throws Cgoto.Cdo {
        return celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? m22463static(cfor, cprotected, builder, celse, cfor2) : m22464switch(cfor, celse);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m22466transient(t1 t1Var, Cnew cnew) throws IOException {
        for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
            t1.Cfor value = entry.getValue();
            String string = entry.getKey().toString();
            Iterator<Long> it = value.m21225public().iterator();
            while (it.hasNext()) {
                m22460protected(string, i62.m3295public(it.next().longValue()), cnew);
            }
            Iterator<Integer> it2 = value.m21219const().iterator();
            while (it2.hasNext()) {
                m22460protected(string, String.format(null, "0x%08x", Integer.valueOf(it2.next().intValue())), cnew);
            }
            Iterator<Long> it3 = value.m21221final().iterator();
            while (it3.hasNext()) {
                m22460protected(string, String.format(null, "0x%016x", Long.valueOf(it3.next().longValue())), cnew);
            }
            Iterator<ByteString> it4 = value.m21229while().iterator();
            while (it4.hasNext()) {
                m22460protected(string, m22461public(it4.next()), cnew);
            }
            for (t1 t1Var2 : value.m21226super()) {
                cnew.m22494do("<unknown-field index=\"");
                cnew.m22494do(string);
                cnew.m22494do("\">");
                m22466transient(t1Var2, cnew);
                cnew.m22494do("</unknown-field>");
            }
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m22467volatile(Descriptors.Celse celse, Object obj, Cnew cnew) throws IOException {
        switch (Cdo.f17956do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                cnew.m22494do(obj.toString());
                break;
            case 10:
            case 11:
                cnew.m22494do(i62.m3293native(((Integer) obj).intValue()));
                break;
            case 12:
            case 13:
                cnew.m22494do(i62.m3295public(((Long) obj).longValue()));
                break;
            case 14:
                cnew.m22494do(m22462return((String) obj));
                break;
            case 15:
                cnew.m22494do(m22461public((ByteString) obj));
                break;
            case 16:
                cnew.m22494do(((Descriptors.Ccase) obj).mo19234for());
                break;
            case 17:
            case 18:
                m22449continue((Message) obj, cnew);
                break;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m22468while(Cfor cfor) throws Cgoto.Cdo {
        cfor.m22487public("</");
        cfor.m22490throw();
        cfor.m22484if(">");
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: const, reason: not valid java name */
    public void mo22469const(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws Cgoto.Cdo {
        Cfor cfor = new Cfor(charSequence);
        m22457native(cfor);
        while (!cfor.m22487public("</")) {
            m22450default(cfor, cprotected, builder);
        }
        m22468while(cfor);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m22470strictfp(Descriptors.Celse celse, Object obj, Cnew cnew) throws IOException {
        if (!celse.isRepeated()) {
            m22456interface(celse, obj, cnew);
            return;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            m22456interface(celse, it.next(), cnew);
        }
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: super, reason: not valid java name */
    public void mo22471super(Message message, Appendable appendable) throws IOException {
        Cnew cnew = new Cnew(appendable);
        String strMo19234for = message.getDescriptorForType().mo19234for();
        cnew.m22494do("<");
        cnew.m22494do(strMo19234for);
        cnew.m22494do(">");
        m22449continue(message, cnew);
        cnew.m22494do("</");
        cnew.m22494do(strMo19234for);
        cnew.m22494do(">");
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: throw, reason: not valid java name */
    public void mo22472throw(t1 t1Var, Appendable appendable) throws IOException {
        Cnew cnew = new Cnew(appendable);
        cnew.m22494do("<message>");
        m22466transient(t1Var, cnew);
        cnew.m22494do("</message>");
    }
}
