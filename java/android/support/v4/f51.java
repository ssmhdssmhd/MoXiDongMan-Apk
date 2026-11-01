package android.support.v4;

import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class f51 {

    /* renamed from: do, reason: not valid java name */
    public static final Long f1693do = 0L;

    /* renamed from: if, reason: not valid java name */
    public static final Long f1698if = 1L;

    /* renamed from: for, reason: not valid java name */
    public static final Long f1696for = -1L;

    /* renamed from: new, reason: not valid java name */
    public static final Integer f1700new = 0;

    /* renamed from: try, reason: not valid java name */
    public static final Integer f1704try = 1;

    /* renamed from: case, reason: not valid java name */
    public static final Integer f1689case = -1;

    /* renamed from: else, reason: not valid java name */
    public static final Short f1694else = 0;

    /* renamed from: goto, reason: not valid java name */
    public static final Short f1697goto = 1;

    /* renamed from: this, reason: not valid java name */
    public static final Short f1702this = -1;

    /* renamed from: break, reason: not valid java name */
    public static final Byte f1688break = (byte) 0;

    /* renamed from: catch, reason: not valid java name */
    public static final Byte f1690catch = (byte) 1;

    /* renamed from: class, reason: not valid java name */
    public static final Byte f1691class = (byte) -1;

    /* renamed from: const, reason: not valid java name */
    public static final Double f1692const = Double.valueOf(0.0d);

    /* renamed from: final, reason: not valid java name */
    public static final Double f1695final = Double.valueOf(1.0d);

    /* renamed from: super, reason: not valid java name */
    public static final Double f1701super = Double.valueOf(-1.0d);

    /* renamed from: throw, reason: not valid java name */
    public static final Float f1703throw = Float.valueOf(0.0f);

    /* renamed from: while, reason: not valid java name */
    public static final Float f1705while = Float.valueOf(1.0f);

    /* renamed from: import, reason: not valid java name */
    public static final Float f1699import = Float.valueOf(-1.0f);

    public static float a(String str, float f) {
        if (str == null) {
            return f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m2144abstract(int[] iArr) {
        h(iArr);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] < i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    public static int b(String str) {
        return c(str, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00e3, code lost:
    
        if (r11 == false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00e5, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0101, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0093, code lost:
    
        if (r3 >= r0.length) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0097, code lost:
    
        if (r0[r3] < '0') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x009b, code lost:
    
        if (r0[r3] > '9') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x009d, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00a0, code lost:
    
        if (r0[r3] == 'e') goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00a4, code lost:
    
        if (r0[r3] != 'E') goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00a9, code lost:
    
        if (r0[r3] != '.') goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ab, code lost:
    
        if (r13 != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00ad, code lost:
    
        if (r12 == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00b0, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00b1, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00b2, code lost:
    
        if (r6 != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00b8, code lost:
    
        if (r0[r3] == 'd') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00be, code lost:
    
        if (r0[r3] == 'D') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00c2, code lost:
    
        if (r0[r3] == 'f') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00c8, code lost:
    
        if (r0[r3] != 'F') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00ca, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00cf, code lost:
    
        if (r0[r3] == 'l') goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00d5, code lost:
    
        if (r0[r3] != 'L') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00d8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00d9, code lost:
    
        if (r11 == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00db, code lost:
    
        if (r12 != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00dd, code lost:
    
        if (r13 != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00df, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00e1, code lost:
    
        if (r6 != false) goto L164;
     */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m2145break(String str) {
        if (Cclass.A(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        boolean z = true;
        int i = charArray[0] == '-' ? 1 : 0;
        int i2 = i + 1;
        if (length > i2 && charArray[i] == '0') {
            if (charArray[i2] == 'x' || charArray[i2] == 'X') {
                int i3 = i + 2;
                if (i3 == length) {
                    return false;
                }
                while (i3 < charArray.length) {
                    if ((charArray[i3] < '0' || charArray[i3] > '9') && ((charArray[i3] < 'a' || charArray[i3] > 'f') && (charArray[i3] < 'A' || charArray[i3] > 'F'))) {
                        return false;
                    }
                    i3++;
                }
                return true;
            }
            if (Character.isDigit(charArray[i2])) {
                while (i2 < charArray.length) {
                    if (charArray[i2] < '0' || charArray[i2] > '7') {
                        return false;
                    }
                    i2++;
                }
                return true;
            }
        }
        int i4 = length - 1;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            if (i >= i4 && (i >= i4 + 1 || !z2 || z3)) {
                break;
            }
            if (charArray[i] >= '0' && charArray[i] <= '9') {
                z2 = false;
                z3 = true;
            } else if (charArray[i] == '.') {
                if (z5 || z4) {
                    break;
                }
                z5 = true;
            } else if (charArray[i] != 'e' && charArray[i] != 'E') {
                if (charArray[i] != '+' && charArray[i] != '-') {
                    return false;
                }
                if (!z2) {
                    return false;
                }
                z2 = false;
                z3 = false;
            } else {
                if (z4 || !z3) {
                    return false;
                }
                z2 = true;
                z4 = true;
            }
            i++;
            z = true;
        }
    }

    public static int c(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Long m2146case(String str) {
        if (str == null) {
            return null;
        }
        return Long.decode(str);
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte m2147catch(byte b, byte b2, byte b3) {
        if (b2 > b) {
            b = b2;
        }
        return b3 > b ? b3 : b;
    }

    /* renamed from: class, reason: not valid java name */
    public static byte m2148class(byte[] bArr) {
        h(bArr);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] > b) {
                b = bArr[i];
            }
        }
        return b;
    }

    /* renamed from: const, reason: not valid java name */
    public static double m2149const(double d, double d2, double d3) {
        return Math.max(Math.max(d, d2), d3);
    }

    /* renamed from: continue, reason: not valid java name */
    public static long m2150continue(long j, long j2, long j3) {
        if (j2 < j) {
            j = j2;
        }
        return j3 < j ? j3 : j;
    }

    public static long d(String str) {
        return e(str, 0L);
    }

    /* renamed from: default, reason: not valid java name */
    public static double m2151default(double d, double d2, double d3) {
        return Math.min(Math.min(d, d2), d3);
    }

    /* renamed from: do, reason: not valid java name */
    public static BigDecimal m2152do(String str) {
        if (str == null) {
            return null;
        }
        if (Cclass.z(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        if (!str.trim().startsWith("--")) {
            return new BigDecimal(str);
        }
        throw new NumberFormatException(str + " is not a valid number.");
    }

    public static long e(String str, long j) {
        if (str == null) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x013a, code lost:
    
        if (r2 == 'l') goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0196 A[Catch: NumberFormatException -> 0x01a2, TRY_LEAVE, TryCatch #3 {NumberFormatException -> 0x01a2, blocks: (B:104:0x018c, B:106:0x0196), top: B:165:0x018c }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x018c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0181 A[Catch: NumberFormatException -> 0x018c, TRY_LEAVE, TryCatch #7 {NumberFormatException -> 0x018c, blocks: (B:97:0x0177, B:99:0x0181), top: B:172:0x0177 }] */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Number m2153else(String str) throws NumberFormatException {
        int length;
        String strSubstring;
        String strSubstring2;
        int length2;
        Double dM2157for;
        Float fM2165new;
        String strSubstring3 = null;
        if (str == null) {
            return null;
        }
        if (Cclass.z(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        String[] strArr = {"0x", "0X", "-0x", "-0X", "#", "-#"};
        char cCharAt = 0;
        int i = 0;
        while (true) {
            if (i >= 6) {
                length = 0;
                break;
            }
            String str2 = strArr[i];
            if (str.startsWith(str2)) {
                length = str2.length() + 0;
                break;
            }
            i++;
        }
        if (length > 0) {
            int i2 = length;
            while (length < str.length() && (cCharAt = str.charAt(length)) == '0') {
                i2++;
                length++;
            }
            int length3 = str.length() - i2;
            return (length3 > 16 || (length3 == 16 && cCharAt > '7')) ? m2159if(str) : (length3 > 8 || (length3 == 8 && cCharAt > '7')) ? m2146case(str) : m2180try(str);
        }
        char cCharAt2 = str.charAt(str.length() - 1);
        int iIndexOf = str.indexOf(46);
        int iIndexOf2 = str.indexOf(101) + str.indexOf(69) + 1;
        if (iIndexOf > -1) {
            if (iIndexOf2 <= -1) {
                strSubstring2 = str.substring(iIndexOf + 1);
            } else {
                if (iIndexOf2 < iIndexOf || iIndexOf2 > str.length()) {
                    throw new NumberFormatException(str + " is not a valid number.");
                }
                strSubstring2 = str.substring(iIndexOf + 1, iIndexOf2);
            }
            strSubstring = str.substring(0, iIndexOf);
            length2 = strSubstring2.length();
        } else {
            if (iIndexOf2 <= -1) {
                strSubstring = str;
            } else {
                if (iIndexOf2 > str.length()) {
                    throw new NumberFormatException(str + " is not a valid number.");
                }
                strSubstring = str.substring(0, iIndexOf2);
            }
            strSubstring2 = null;
            length2 = 0;
        }
        if (Character.isDigit(cCharAt2) || cCharAt2 == '.') {
            if (iIndexOf2 > -1 && iIndexOf2 < str.length() - 1) {
                strSubstring3 = str.substring(iIndexOf2 + 1, str.length());
            }
            if (strSubstring2 == null && strSubstring3 == null) {
                try {
                    try {
                        return m2180try(str);
                    } catch (NumberFormatException unused) {
                        return m2146case(str);
                    }
                } catch (NumberFormatException unused2) {
                    return m2159if(str);
                }
            }
            if (m2158goto(strSubstring) && m2158goto(strSubstring3)) {
                cCharAt = 1;
            }
            if (length2 <= 7) {
                try {
                    Float fM2165new2 = m2165new(str);
                    if (!fM2165new2.isInfinite()) {
                        if (fM2165new2.floatValue() != 0.0f || cCharAt != 0) {
                            return fM2165new2;
                        }
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (length2 <= 16) {
                try {
                    Double dM2157for2 = m2157for(str);
                    if (!dM2157for2.isInfinite()) {
                        if (dM2157for2.doubleValue() != 0.0d || cCharAt != 0) {
                            return dM2157for2;
                        }
                    }
                } catch (NumberFormatException unused4) {
                }
            }
            return m2152do(str);
        }
        if (iIndexOf2 > -1 && iIndexOf2 < str.length() - 1) {
            strSubstring3 = str.substring(iIndexOf2 + 1, str.length() - 1);
        }
        String strSubstring4 = str.substring(0, str.length() - 1);
        boolean z = m2158goto(strSubstring) && m2158goto(strSubstring3);
        if (cCharAt2 != 'D') {
            if (cCharAt2 == 'F') {
                try {
                    fM2165new = m2165new(strSubstring4);
                    if (!fM2165new.isInfinite()) {
                        if (fM2165new.floatValue() != 0.0f || z) {
                            return fM2165new;
                        }
                    }
                } catch (NumberFormatException unused5) {
                }
                dM2157for = m2157for(strSubstring4);
                if (!dM2157for.isInfinite()) {
                }
                return m2152do(strSubstring4);
            }
            if (cCharAt2 != 'L') {
                if (cCharAt2 != 'd') {
                    if (cCharAt2 != 'f') {
                    }
                    fM2165new = m2165new(strSubstring4);
                    if (!fM2165new.isInfinite()) {
                    }
                    dM2157for = m2157for(strSubstring4);
                    if (!dM2157for.isInfinite()) {
                    }
                    return m2152do(strSubstring4);
                }
            }
            if (strSubstring2 == null && strSubstring3 == null && ((strSubstring4.charAt(0) == '-' && m2176this(strSubstring4.substring(1))) || m2176this(strSubstring4))) {
                try {
                    return m2146case(strSubstring4);
                } catch (NumberFormatException unused6) {
                    return m2159if(strSubstring4);
                }
            }
            throw new NumberFormatException(str + " is not a valid number.");
        }
        try {
            dM2157for = m2157for(strSubstring4);
            if (!dM2157for.isInfinite()) {
                if (dM2157for.floatValue() != 0.0d || z) {
                    return dM2157for;
                }
            }
        } catch (NumberFormatException unused7) {
        }
        try {
            return m2152do(strSubstring4);
        } catch (NumberFormatException unused8) {
        }
        throw new NumberFormatException(str + " is not a valid number.");
    }

    /* renamed from: extends, reason: not valid java name */
    public static double m2154extends(double[] dArr) {
        h(dArr);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (Double.isNaN(dArr[i])) {
                return Double.NaN;
            }
            if (dArr[i] < d) {
                d = dArr[i];
            }
        }
        return d;
    }

    public static short f(String str) {
        return g(str, (short) 0);
    }

    /* renamed from: final, reason: not valid java name */
    public static double m2155final(double[] dArr) {
        h(dArr);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            if (Double.isNaN(dArr[i])) {
                return Double.NaN;
            }
            if (dArr[i] > d) {
                d = dArr[i];
            }
        }
        return d;
    }

    /* renamed from: finally, reason: not valid java name */
    public static float m2156finally(float f, float f2, float f3) {
        return Math.min(Math.min(f, f2), f3);
    }

    /* renamed from: for, reason: not valid java name */
    public static Double m2157for(String str) {
        if (str == null) {
            return null;
        }
        return Double.valueOf(str);
    }

    public static short g(String str, short s) {
        if (str == null) {
            return s;
        }
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m2158goto(String str) {
        if (str == null) {
            return true;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != '0') {
                return false;
            }
        }
        return str.length() > 0;
    }

    private static void h(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (Array.getLength(obj) == 0) {
            throw new IllegalArgumentException("Array cannot be empty.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BigInteger m2159if(String str) {
        int i;
        if (str == null) {
            return null;
        }
        boolean zStartsWith = str.startsWith("-");
        int i2 = 16;
        if (str.startsWith("0x", zStartsWith ? 1 : 0) || str.startsWith("0x", zStartsWith ? 1 : 0)) {
            i = (zStartsWith ? 1 : 0) + 2;
        } else if (str.startsWith("#", zStartsWith ? 1 : 0)) {
            i = (zStartsWith ? 1 : 0) + 1;
        } else if (str.startsWith("0", zStartsWith ? 1 : 0)) {
            int length = str.length();
            int i3 = (zStartsWith ? 1 : 0) + 1;
            if (length > i3) {
                i = i3;
                i2 = 8;
            } else {
                i = zStartsWith ? 1 : 0;
                i2 = 10;
            }
        }
        BigInteger bigInteger = new BigInteger(str.substring(i), i2);
        return zStartsWith ? bigInteger.negate() : bigInteger;
    }

    /* renamed from: implements, reason: not valid java name */
    public static double m2160implements(String str) {
        return m2162instanceof(str, 0.0d);
    }

    /* renamed from: import, reason: not valid java name */
    public static int m2161import(int[] iArr) {
        h(iArr);
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static double m2162instanceof(String str, double d) {
        if (str == null) {
            return d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static short m2163interface(short[] sArr) {
        h(sArr);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] < s) {
                s = sArr[i];
            }
        }
        return s;
    }

    /* renamed from: native, reason: not valid java name */
    public static long m2164native(long j, long j2, long j3) {
        if (j2 > j) {
            j = j2;
        }
        return j3 > j ? j3 : j;
    }

    /* renamed from: new, reason: not valid java name */
    public static Float m2165new(String str) {
        if (str == null) {
            return null;
        }
        return Float.valueOf(str);
    }

    /* renamed from: package, reason: not valid java name */
    public static float m2166package(float[] fArr) {
        h(fArr);
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (Float.isNaN(fArr[i])) {
                return Float.NaN;
            }
            if (fArr[i] < f) {
                f = fArr[i];
            }
        }
        return f;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m2167private(int i, int i2, int i3) {
        if (i2 < i) {
            i = i2;
        }
        return i3 < i ? i3 : i;
    }

    /* renamed from: protected, reason: not valid java name */
    public static byte m2168protected(String str) {
        return m2179transient(str, (byte) 0);
    }

    /* renamed from: public, reason: not valid java name */
    public static long m2169public(long[] jArr) {
        h(jArr);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] > j) {
                j = jArr[i];
            }
        }
        return j;
    }

    /* renamed from: return, reason: not valid java name */
    public static short m2170return(short s, short s2, short s3) {
        if (s2 > s) {
            s = s2;
        }
        return s3 > s ? s3 : s;
    }

    /* renamed from: static, reason: not valid java name */
    public static short m2171static(short[] sArr) {
        h(sArr);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            if (sArr[i] > s) {
                s = sArr[i];
            }
        }
        return s;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static long m2172strictfp(long[] jArr) {
        h(jArr);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            if (jArr[i] < j) {
                j = jArr[i];
            }
        }
        return j;
    }

    /* renamed from: super, reason: not valid java name */
    public static float m2173super(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    /* renamed from: switch, reason: not valid java name */
    public static byte m2174switch(byte b, byte b2, byte b3) {
        if (b2 < b) {
            b = b2;
        }
        return b3 < b ? b3 : b;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static float m2175synchronized(String str) {
        return a(str, 0.0f);
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m2176this(String str) {
        if (Cclass.A(str)) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    public static float m2177throw(float[] fArr) {
        h(fArr);
        float f = fArr[0];
        for (int i = 1; i < fArr.length; i++) {
            if (Float.isNaN(fArr[i])) {
                return Float.NaN;
            }
            if (fArr[i] > f) {
                f = fArr[i];
            }
        }
        return f;
    }

    /* renamed from: throws, reason: not valid java name */
    public static byte m2178throws(byte[] bArr) {
        h(bArr);
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            if (bArr[i] < b) {
                b = bArr[i];
            }
        }
        return b;
    }

    /* renamed from: transient, reason: not valid java name */
    public static byte m2179transient(String str, byte b) {
        if (str == null) {
            return b;
        }
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Integer m2180try(String str) {
        if (str == null) {
            return null;
        }
        return Integer.decode(str);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static short m2181volatile(short s, short s2, short s3) {
        if (s2 < s) {
            s = s2;
        }
        return s3 < s ? s3 : s;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m2182while(int i, int i2, int i3) {
        if (i2 > i) {
            i = i2;
        }
        return i3 > i ? i3 : i;
    }
}
