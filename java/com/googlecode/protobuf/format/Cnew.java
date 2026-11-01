package com.googlecode.protobuf.format;

import android.support.v4.i62;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import freemarker.core.o3;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.googlecode.protobuf.format.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew extends com.googlecode.protobuf.format.Cdo {

    /* renamed from: for, reason: not valid java name */
    private static final String f18003for = "color: black; font-size: 14px; font-family: sans-serif; font-weight: bolder; margin-bottom: 10px;";

    /* renamed from: if, reason: not valid java name */
    private static final String f18004if = "<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\" />";

    /* renamed from: new, reason: not valid java name */
    private static final String f18005new = "font-weight: bold; color: #669966;font-size: 14px; font-family: sans-serif;";

    /* renamed from: try, reason: not valid java name */
    private static final String f18006try = "color: #3300FF;font-size: 13px; font-family: sans-serif;";

    /* renamed from: com.googlecode.protobuf.format.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18007do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f18007do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.INT64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.SINT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.SINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f18007do[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: com.googlecode.protobuf.format.new$for, reason: invalid class name */
    public static class Cfor extends IOException {
        private static final long serialVersionUID = 1;

        public Cfor(String str) {
            super(str);
        }
    }

    /* renamed from: com.googlecode.protobuf.format.new$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public Appendable f18008do;

        /* renamed from: if, reason: not valid java name */
        public boolean f18009if = true;

        public Cif(Appendable appendable) {
            this.f18008do = appendable;
        }

        /* renamed from: new, reason: not valid java name */
        private void m22601new(CharSequence charSequence, int i) throws IOException {
            if (i == 0) {
                return;
            }
            if (this.f18009if) {
                this.f18009if = false;
            }
            this.f18008do.append(charSequence);
        }

        /* renamed from: do, reason: not valid java name */
        public void m22602do() throws IOException {
            m22603for("<div style=\"margin-left: 25px\">");
        }

        /* renamed from: for, reason: not valid java name */
        public void m22603for(CharSequence charSequence) throws IOException {
            int length = charSequence.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (charSequence.charAt(i2) == '\n') {
                    m22601new("<br/>", (i2 - i) + 1);
                    i = i2 + 1;
                    this.f18009if = true;
                }
            }
            m22601new(charSequence.subSequence(i, length), length - i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m22604if() throws IOException {
            m22603for("</div>");
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static ByteString m22586abstract(CharSequence charSequence) throws Cfor {
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
                    throw new Cfor("Invalid escape sequence: '\\' at end of string.");
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
                            throw new Cfor("Invalid escape sequence: '\\x' with no digits");
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
                            throw new Cfor("Invalid escape sequence: '\\" + cCharAt2 + "'");
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

    /* renamed from: continue, reason: not valid java name */
    public static String m22587continue(String str) throws Cfor {
        return m22586abstract(str).toStringUtf8();
    }

    /* renamed from: extends, reason: not valid java name */
    private void m22588extends(Descriptors.Celse celse, Object obj, Cif cif) throws IOException {
        cif.m22603for("<span style=\"");
        cif.m22603for(f18006try);
        cif.m22603for("\">");
        switch (Cdo.f18007do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                cif.m22603for(obj.toString());
                break;
            case 10:
            case 11:
                cif.m22603for(i62.m3293native(((Integer) obj).intValue()));
                break;
            case 12:
            case 13:
                cif.m22603for(i62.m3295public(((Long) obj).longValue()));
                break;
            case 14:
                cif.m22603for("\"");
                cif.m22603for(obj.toString());
                cif.m22603for("\"");
                break;
            case 15:
                cif.m22603for("\"");
                cif.m22603for(m22599while((ByteString) obj));
                cif.m22603for("\"");
                break;
            case 16:
                cif.m22603for(((Descriptors.Ccase) obj).mo19234for());
                break;
            case 17:
            case 18:
                m22598throws((Message) obj, cif);
                break;
        }
        cif.m22603for("</span>");
    }

    /* renamed from: finally, reason: not valid java name */
    private void m22589finally(Descriptors.Celse celse, Object obj, Cif cif) throws IOException {
        if (celse.m19286extends()) {
            cif.m22603for("[<span style=\"");
            cif.m22603for(f18005new);
            cif.m22603for("\">");
            if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                cif.m22603for(celse.m19291native().mo19235if());
            } else {
                cif.m22603for(celse.mo19235if());
            }
            cif.m22603for("</span>]");
        } else {
            cif.m22603for("<span style=\"");
            cif.m22603for(f18005new);
            cif.m22603for("\">");
            if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
                cif.m22603for(celse.m19291native().mo19234for());
            } else {
                cif.m22603for(celse.mo19234for());
            }
            cif.m22603for("</span>");
        }
        Descriptors.Celse.Cdo cdoM19302while = celse.m19302while();
        Descriptors.Celse.Cdo cdo = Descriptors.Celse.Cdo.MESSAGE;
        if (cdoM19302while == cdo) {
            cif.m22603for(" <span style=\"color: red;\">{</span><br/>");
            cif.m22602do();
        } else {
            cif.m22603for(": ");
        }
        m22588extends(celse, obj, cif);
        if (celse.m19302while() == cdo) {
            cif.m22604if();
            cif.m22603for("<span style=\"color: red;\">}</span>");
        }
        cif.m22603for("<br/>");
    }

    /* renamed from: import, reason: not valid java name */
    public static String m22590import(String str) {
        return m22599while(ByteString.copyFromUtf8(str));
    }

    /* renamed from: native, reason: not valid java name */
    public static int m22591native(String str) throws NumberFormatException {
        return (int) m22595return(str, true, false);
    }

    /* renamed from: package, reason: not valid java name */
    private void m22592package(Message message, Cif cif) throws IOException {
        cif.m22603for("<html><head>");
        cif.m22603for(f18004if);
        cif.m22603for("<title>");
        cif.m22603for(message.getDescriptorForType().mo19235if());
        cif.m22603for("</title></head><body>");
        cif.m22603for("<div style=\"");
        cif.m22603for(f18003for);
        cif.m22603for("\">message : ");
        cif.m22603for(message.getDescriptorForType().mo19235if());
        cif.m22603for("</div>");
    }

    /* renamed from: private, reason: not valid java name */
    private void m22593private(t1 t1Var, Cif cif) throws IOException {
        for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
            t1.Cfor value = entry.getValue();
            Iterator<Long> it = value.m21225public().iterator();
            while (it.hasNext()) {
                long jLongValue = it.next().longValue();
                cif.m22603for(entry.getKey().toString());
                cif.m22603for(": ");
                cif.m22603for(i62.m3295public(jLongValue));
                cif.m22603for("<br/>");
            }
            Iterator<Integer> it2 = value.m21219const().iterator();
            while (it2.hasNext()) {
                int iIntValue = it2.next().intValue();
                cif.m22603for(entry.getKey().toString());
                cif.m22603for(": ");
                cif.m22603for(String.format(null, "0x%08x", Integer.valueOf(iIntValue)));
                cif.m22603for("<br/>");
            }
            Iterator<Long> it3 = value.m21221final().iterator();
            while (it3.hasNext()) {
                long jLongValue2 = it3.next().longValue();
                cif.m22603for(entry.getKey().toString());
                cif.m22603for(": ");
                cif.m22603for(String.format(null, "0x%016x", Long.valueOf(jLongValue2)));
                cif.m22603for("<br/>");
            }
            for (ByteString byteString : value.m21229while()) {
                cif.m22603for(entry.getKey().toString());
                cif.m22603for(": \"");
                cif.m22603for(m22599while(byteString));
                cif.m22603for("\"<br/>");
            }
            for (t1 t1Var2 : value.m21226super()) {
                cif.m22603for(entry.getKey().toString());
                cif.m22603for(" <span style=\"color: red;\">{</span><br/>");
                cif.m22602do();
                m22593private(t1Var2, cif);
                cif.m22604if();
                cif.m22603for("<span style=\"color: red;\">}</span><br/>");
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static long m22594public(String str) throws NumberFormatException {
        return m22595return(str, true, true);
    }

    /* renamed from: return, reason: not valid java name */
    private static long m22595return(String str, boolean z, boolean z2) throws NumberFormatException {
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

    /* renamed from: static, reason: not valid java name */
    public static int m22596static(String str) throws NumberFormatException {
        return (int) m22595return(str, false, false);
    }

    /* renamed from: switch, reason: not valid java name */
    public static long m22597switch(String str) throws NumberFormatException {
        return m22595return(str, false, true);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m22598throws(Message message, Cif cif) throws IOException {
        for (Map.Entry<Descriptors.Celse, Object> entry : message.getAllFields().entrySet()) {
            m22600default(entry.getKey(), entry.getValue(), cif);
        }
        m22593private(message.getUnknownFields(), cif);
    }

    /* renamed from: while, reason: not valid java name */
    public static String m22599while(ByteString byteString) {
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

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: const */
    public void mo22469const(CharSequence charSequence, Cprotected cprotected, Message.Builder builder) throws IOException {
        throw new UnsupportedOperationException();
    }

    /* renamed from: default, reason: not valid java name */
    public void m22600default(Descriptors.Celse celse, Object obj, Cif cif) throws IOException {
        if (!celse.isRepeated()) {
            m22589finally(celse, obj, cif);
            return;
        }
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            m22589finally(celse, it.next(), cif);
        }
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: super */
    public void mo22471super(Message message, Appendable appendable) throws IOException {
        Cif cif = new Cif(appendable);
        m22592package(message, cif);
        m22598throws(message, cif);
        cif.m22603for("</body></html>");
    }

    @Override // com.googlecode.protobuf.format.Cdo
    /* renamed from: throw */
    public void mo22472throw(t1 t1Var, Appendable appendable) throws IOException {
        Cif cif = new Cif(appendable);
        cif.m22603for("<html>");
        cif.m22603for(f18004if);
        cif.m22603for("</head><body>");
        m22593private(t1Var, cif);
        cif.m22603for("</body></html>");
    }
}
