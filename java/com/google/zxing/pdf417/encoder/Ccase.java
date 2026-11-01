package com.google.zxing.pdf417.encoder;

import android.support.v4.ig2;
import android.support.v4.xk;
import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson.parser.JSONLexer;
import com.google.common.primitives.Cfinal;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okio.Utf8;

/* renamed from: com.google.zxing.pdf417.encoder.case, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccase {

    /* renamed from: break, reason: not valid java name */
    private static final int f17846break = 902;

    /* renamed from: case, reason: not valid java name */
    private static final int f17847case = 2;

    /* renamed from: catch, reason: not valid java name */
    private static final int f17848catch = 913;

    /* renamed from: class, reason: not valid java name */
    private static final int f17849class = 924;

    /* renamed from: const, reason: not valid java name */
    private static final int f17850const = 925;

    /* renamed from: do, reason: not valid java name */
    private static final int f17851do = 0;

    /* renamed from: else, reason: not valid java name */
    private static final int f17852else = 3;

    /* renamed from: final, reason: not valid java name */
    private static final int f17853final = 926;

    /* renamed from: for, reason: not valid java name */
    private static final int f17854for = 2;

    /* renamed from: goto, reason: not valid java name */
    private static final int f17855goto = 900;

    /* renamed from: if, reason: not valid java name */
    private static final int f17856if = 1;

    /* renamed from: import, reason: not valid java name */
    private static final byte[] f17857import;

    /* renamed from: new, reason: not valid java name */
    private static final int f17859new = 0;

    /* renamed from: super, reason: not valid java name */
    private static final int f17861super = 927;

    /* renamed from: this, reason: not valid java name */
    private static final int f17862this = 901;

    /* renamed from: try, reason: not valid java name */
    private static final int f17864try = 1;

    /* renamed from: throw, reason: not valid java name */
    private static final byte[] f17863throw = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, ExifInterface.START_CODE, 61, 94, 0, 32, 0, 0, 0};

    /* renamed from: while, reason: not valid java name */
    private static final byte[] f17865while = {59, 60, 62, Cfinal.f15506do, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, ExifInterface.START_CODE, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};

    /* renamed from: native, reason: not valid java name */
    private static final byte[] f17858native = new byte[128];

    /* renamed from: public, reason: not valid java name */
    private static final Charset f17860public = StandardCharsets.ISO_8859_1;

    /* renamed from: com.google.zxing.pdf417.encoder.case$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17866do;

        static {
            int[] iArr = new int[Cfor.values().length];
            f17866do = iArr;
            try {
                iArr[Cfor.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17866do[Cfor.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17866do[Cfor.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        f17857import = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f17863throw;
            if (i2 >= bArr2.length) {
                break;
            }
            byte b = bArr2[i2];
            if (b > 0) {
                f17857import[b] = (byte) i2;
            }
            i2++;
        }
        Arrays.fill(f17858native, (byte) -1);
        while (true) {
            byte[] bArr3 = f17865while;
            if (i >= bArr3.length) {
                return;
            }
            byte b2 = bArr3[i];
            if (b2 > 0) {
                f17858native[b2] = (byte) i;
            }
            i++;
        }
    }

    private Ccase() {
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m22274break(char c) {
        if (c != ' ') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    private static void m22275case(String str, int i, int i2, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int iMin = Math.min(44, i2 - i3);
            StringBuilder sb3 = new StringBuilder("1");
            int i4 = i + i3;
            sb3.append(str.substring(i4, i4 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += iMin;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static boolean m22276catch(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m22277class(char c) {
        return f17857import[c] != -1;
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m22278const(char c) {
        return f17858native[c] != -1;
    }

    /* renamed from: do, reason: not valid java name */
    private static int m22279do(String str, int i, Charset charset) throws ig2 {
        int i2;
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i3 = i;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            int i4 = 0;
            while (i4 < 13 && m22276catch(cCharAt) && (i2 = i3 + (i4 = i4 + 1)) < length) {
                cCharAt = str.charAt(i2);
            }
            if (i4 >= 13) {
                return i3 - i;
            }
            char cCharAt2 = str.charAt(i3);
            if (!charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                throw new ig2("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
            i3++;
        }
        return i3 - i;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00f6 A[EDGE_INSN: B:76:0x00f6->B:55:0x00f6 BREAK  A[LOOP:0: B:3:0x0011->B:93:0x0011], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0011 A[SYNTHETIC] */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int m22280else(CharSequence charSequence, int i, int i2, StringBuilder sb, int i3) {
        StringBuilder sb2 = new StringBuilder(i2);
        int i4 = i3;
        int i5 = 0;
        while (true) {
            int i6 = i + i5;
            char cCharAt = charSequence.charAt(i6);
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (m22278const(cCharAt)) {
                            sb2.append((char) f17858native[cCharAt]);
                        } else {
                            sb2.append((char) 29);
                            i4 = 0;
                        }
                    } else if (m22277class(cCharAt)) {
                        sb2.append((char) f17857import[cCharAt]);
                    } else if (m22274break(cCharAt)) {
                        sb2.append((char) 28);
                        i4 = 0;
                    } else if (m22286this(cCharAt)) {
                        sb2.append((char) 27);
                        i4 = 1;
                    } else {
                        int i7 = i6 + 1;
                        if (i7 >= i2 || !m22278const(charSequence.charAt(i7))) {
                            sb2.append((char) 29);
                            sb2.append((char) f17858native[cCharAt]);
                        } else {
                            i4 = 3;
                            sb2.append((char) 25);
                        }
                    }
                } else if (m22286this(cCharAt)) {
                    if (cCharAt == ' ') {
                        sb2.append(JSONLexer.EOI);
                    } else {
                        sb2.append((char) (cCharAt - 'a'));
                    }
                } else if (m22274break(cCharAt)) {
                    sb2.append((char) 27);
                    sb2.append((char) (cCharAt - 'A'));
                } else if (m22277class(cCharAt)) {
                    sb2.append((char) 28);
                    i4 = 2;
                } else {
                    sb2.append((char) 29);
                    sb2.append((char) f17858native[cCharAt]);
                }
                i5++;
                if (i5 < i2) {
                    break;
                }
            } else {
                if (m22274break(cCharAt)) {
                    if (cCharAt == ' ') {
                        sb2.append(JSONLexer.EOI);
                    } else {
                        sb2.append((char) (cCharAt - 'A'));
                    }
                } else if (m22286this(cCharAt)) {
                    sb2.append((char) 27);
                    i4 = 1;
                } else if (m22277class(cCharAt)) {
                    sb2.append((char) 28);
                    i4 = 2;
                } else {
                    sb2.append((char) 29);
                    sb2.append((char) f17858native[cCharAt]);
                }
                i5++;
                if (i5 < i2) {
                }
            }
        }
        int length = sb2.length();
        char cCharAt2 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            if (i8 % 2 != 0) {
                cCharAt2 = (char) ((cCharAt2 * 30) + sb2.charAt(i8));
                sb.append(cCharAt2);
            } else {
                cCharAt2 = sb2.charAt(i8);
            }
        }
        if (length % 2 != 0) {
            sb.append((char) ((cCharAt2 * 30) + 29));
        }
        return i4;
    }

    /* renamed from: final, reason: not valid java name */
    private static boolean m22281final(char c) {
        if (c == '\t' || c == '\n' || c == '\r') {
            return true;
        }
        return c >= ' ' && c <= '~';
    }

    /* renamed from: for, reason: not valid java name */
    private static int m22282for(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && m22276catch(cCharAt) && i2 < length) {
                i3++;
                i2++;
                if (i2 < length) {
                    cCharAt = charSequence.charAt(i2);
                }
            }
            if (i3 < 13) {
                if (i3 <= 0) {
                    if (!m22281final(charSequence.charAt(i2))) {
                        break;
                    }
                    i2++;
                }
            } else {
                return (i2 - i) - i3;
            }
        }
        return i2 - i;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m22283goto(int i, StringBuilder sb) throws ig2 {
        if (i >= 0 && i < 900) {
            sb.append((char) 927);
            sb.append((char) i);
        } else if (i < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i / 900) - 1));
            sb.append((char) (i % 900));
        } else {
            if (i >= 811800) {
                throw new ig2("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i)));
            }
            sb.append((char) 925);
            sb.append((char) (810900 - i));
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static int m22284if(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            char cCharAt = charSequence.charAt(i);
            while (m22276catch(cCharAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    cCharAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m22285new(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        if (i2 == 1 && i3 == 0) {
            sb.append((char) 913);
        } else if (i2 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i2 >= 6) {
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + (bArr[i4 + i5] & 255);
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (j % 900);
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m22286this(char c) {
        if (c != ' ') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m22287try(String str, Cfor cfor, Charset charset) throws ig2 {
        xk characterSetECIByName;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = f17860public;
        } else if (!f17860public.equals(charset) && (characterSetECIByName = xk.getCharacterSetECIByName(charset.name())) != null) {
            m22283goto(characterSetECIByName.getValue(), sb);
        }
        int length = str.length();
        int i = Cdo.f17866do[cfor.ordinal()];
        if (i == 1) {
            m22280else(str, 0, length, sb, 0);
        } else if (i == 2) {
            byte[] bytes = str.getBytes(charset);
            m22285new(bytes, 0, bytes.length, 1, sb);
        } else if (i != 3) {
            int i2 = 0;
            int iM22280else = 0;
            int i3 = 0;
            while (i2 < length) {
                int iM22284if = m22284if(str, i2);
                if (iM22284if >= 13) {
                    sb.append((char) 902);
                    m22275case(str, i2, iM22284if, sb);
                    i2 += iM22284if;
                    iM22280else = 0;
                    i3 = 2;
                } else {
                    int iM22282for = m22282for(str, i2);
                    if (iM22282for >= 5 || iM22284if == length) {
                        if (i3 != 0) {
                            sb.append((char) 900);
                            iM22280else = 0;
                            i3 = 0;
                        }
                        iM22280else = m22280else(str, i2, iM22282for, sb, iM22280else);
                        i2 += iM22282for;
                    } else {
                        int iM22279do = m22279do(str, i2, charset);
                        if (iM22279do == 0) {
                            iM22279do = 1;
                        }
                        int i4 = iM22279do + i2;
                        byte[] bytes2 = str.substring(i2, i4).getBytes(charset);
                        if (bytes2.length == 1 && i3 == 0) {
                            m22285new(bytes2, 0, 1, 0, sb);
                        } else {
                            m22285new(bytes2, 0, bytes2.length, i3, sb);
                            iM22280else = 0;
                            i3 = 1;
                        }
                        i2 = i4;
                    }
                }
            }
        } else {
            sb.append((char) 902);
            m22275case(str, 0, length, sb);
        }
        return sb.toString();
    }
}
