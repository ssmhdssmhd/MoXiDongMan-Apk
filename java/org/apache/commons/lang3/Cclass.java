package org.apache.commons.lang3;

import android.support.v4.sk;
import android.support.v4.wk;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;

/* renamed from: org.apache.commons.lang3.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass {

    /* renamed from: case, reason: not valid java name */
    private static final int f28651case = 8192;

    /* renamed from: do, reason: not valid java name */
    public static final String f28652do = " ";

    /* renamed from: else, reason: not valid java name */
    private static final Pattern f28653else = Pattern.compile("(?: |\\u00A0|\\s|[\\s&&[^ ]])\\s*");

    /* renamed from: for, reason: not valid java name */
    public static final String f28654for = "\n";

    /* renamed from: if, reason: not valid java name */
    public static final String f28655if = "";

    /* renamed from: new, reason: not valid java name */
    public static final String f28656new = "\r";

    /* renamed from: try, reason: not valid java name */
    public static final int f28657try = -1;

    public static boolean A(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static String A0(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return z0(str, charSequence, false, charSequenceArr);
    }

    public static String A1(String str) {
        if (str == null) {
            return null;
        }
        return Pattern.compile("\\p{InCombiningDiacriticalMarks}+").matcher(Normalizer.normalize(str, Normalizer.Form.NFD)).replaceAll("");
    }

    public static boolean B(CharSequence... charSequenceArr) {
        return !w(charSequenceArr);
    }

    public static String B0(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return z0(str, charSequence, true, charSequenceArr);
    }

    public static String[] B1(String... strArr) {
        return C1(strArr, null);
    }

    public static boolean C(CharSequence... charSequenceArr) {
        return !x(charSequenceArr);
    }

    public static String C0(String str, char c) {
        if (A(str) || str.indexOf(c) == -1) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (charArray[i2] != c) {
                charArray[i] = charArray[i2];
                i++;
            }
        }
        return new String(charArray, 0, i);
    }

    public static String[] C1(String[] strArr, String str) {
        int length;
        if (strArr == null || (length = strArr.length) == 0) {
            return strArr;
        }
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            strArr2[i] = z1(strArr[i], str);
        }
        return strArr2;
    }

    public static boolean D(CharSequence charSequence) {
        return !z(charSequence);
    }

    public static String D0(String str, String str2) {
        return (A(str) || A(str2)) ? str : N0(str, str2, "", -1);
    }

    public static String D1(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        if (str2 == null) {
            while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                length--;
            }
        } else {
            if (str2.isEmpty()) {
                return str;
            }
            while (length != 0 && str2.indexOf(str.charAt(length - 1)) != -1) {
                length--;
            }
        }
        return str.substring(0, length);
    }

    public static boolean E(CharSequence charSequence) {
        return !A(charSequence);
    }

    public static String E0(String str, String str2) {
        return (A(str) || A(str2) || !str.endsWith(str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    public static String E1(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int i = 0;
        if (str2 == null) {
            while (i != length && Character.isWhitespace(str.charAt(i))) {
                i++;
            }
        } else {
            if (str2.isEmpty()) {
                return str;
            }
            while (i != length && str2.indexOf(str.charAt(i)) != -1) {
                i++;
            }
        }
        return str.substring(i);
    }

    public static boolean F(CharSequence charSequence) {
        if (A(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String F0(String str, String str2) {
        return (A(str) || A(str2) || !m32262protected(str, str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    public static String F1(String str) {
        return str == null ? "" : z1(str, null);
    }

    public static boolean G(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String G0(String str, String str2) {
        return U0(str, str2, "");
    }

    public static String G1(String str) {
        if (str == null) {
            return null;
        }
        String strZ1 = z1(str, null);
        if (strZ1.isEmpty()) {
            return null;
        }
        return strZ1;
    }

    public static boolean H(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String H0(String str, String str2) {
        return (A(str) || A(str2) || !str.startsWith(str2)) ? str : str.substring(str2.length());
    }

    public static String H1(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i < 0) {
            i += str.length();
        }
        if (i < 0) {
            i = 0;
        }
        return i > str.length() ? "" : str.substring(i);
    }

    public static String I(Iterable<?> iterable, char c) {
        if (iterable == null) {
            return null;
        }
        return K(iterable.iterator(), c);
    }

    public static String I0(String str, String str2) {
        return (A(str) || A(str2) || !x1(str, str2)) ? str : str.substring(str2.length());
    }

    public static String I1(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0) {
            i2 += str.length();
        }
        if (i < 0) {
            i += str.length();
        }
        if (i2 > str.length()) {
            i2 = str.length();
        }
        if (i > i2) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        return str.substring(i, i2);
    }

    public static String J(Iterable<?> iterable, String str) {
        if (iterable == null) {
            return null;
        }
        return L(iterable.iterator(), str);
    }

    public static String J0(char c, int i) {
        char[] cArr = new char[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            cArr[i2] = c;
        }
        return new String(cArr);
    }

    public static String J1(String str, String str2) {
        int iIndexOf;
        return A(str) ? str : (str2 == null || (iIndexOf = str.indexOf(str2)) == -1) ? "" : str.substring(iIndexOf + str2.length());
    }

    public static String K(Iterator<?> it, char c) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Cgoto.m32396strictfp(next);
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            sb.append(c);
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String K0(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i <= 0) {
            return "";
        }
        int length = str.length();
        if (i == 1 || length == 0) {
            return str;
        }
        if (length == 1 && i <= 8192) {
            return J0(str.charAt(0), i);
        }
        int i2 = length * i;
        if (length == 1) {
            return J0(str.charAt(0), i);
        }
        if (length != 2) {
            StringBuilder sb = new StringBuilder(i2);
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(str);
            }
            return sb.toString();
        }
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(1);
        char[] cArr = new char[i2];
        for (int i4 = (i * 2) - 2; i4 >= 0; i4 = (i4 - 1) - 1) {
            cArr[i4] = cCharAt;
            cArr[i4 + 1] = cCharAt2;
        }
        return new String(cArr);
    }

    public static String K1(String str, String str2) {
        int iLastIndexOf;
        return A(str) ? str : (A(str2) || (iLastIndexOf = str.lastIndexOf(str2)) == -1 || iLastIndexOf == str.length() - str2.length()) ? "" : str.substring(iLastIndexOf + str2.length());
    }

    public static String L(Iterator<?> it, String str) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Cgoto.m32396strictfp(next);
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            if (str != null) {
                sb.append(str);
            }
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String L0(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return K0(str, i);
        }
        return E0(K0(str + str2, i), str2);
    }

    public static String L1(String str, String str2) {
        if (A(str) || str2 == null) {
            return str;
        }
        if (str2.isEmpty()) {
            return "";
        }
        int iIndexOf = str.indexOf(str2);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }

    public static String M(byte[] bArr, char c) {
        if (bArr == null) {
            return null;
        }
        return N(bArr, c, 0, bArr.length);
    }

    public static String M0(String str, String str2, String str3) {
        return N0(str, str2, str3, -1);
    }

    public static String M1(String str, String str2) {
        int iLastIndexOf;
        return (A(str) || A(str2) || (iLastIndexOf = str.lastIndexOf(str2)) == -1) ? str : str.substring(0, iLastIndexOf);
    }

    public static String N(byte[] bArr, char c, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append((int) bArr[i4]);
        }
        return sb.toString();
    }

    public static String N0(String str, String str2, String str3, int i) {
        if (A(str) || A(str2) || str3 == null || i == 0) {
            return str;
        }
        int i2 = 0;
        int iIndexOf = str.indexOf(str2, 0);
        if (iIndexOf == -1) {
            return str;
        }
        int length = str2.length();
        int length2 = str3.length() - length;
        if (length2 < 0) {
            length2 = 0;
        }
        int i3 = 64;
        if (i < 0) {
            i3 = 16;
        } else if (i <= 64) {
            i3 = i;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length2 * i3));
        while (iIndexOf != -1) {
            sb.append(str.substring(i2, iIndexOf));
            sb.append(str3);
            i2 = iIndexOf + length;
            i--;
            if (i == 0) {
                break;
            }
            iIndexOf = str.indexOf(str2, i2);
        }
        sb.append(str.substring(i2));
        return sb.toString();
    }

    public static String N1(String str, String str2) {
        return O1(str, str2, str2);
    }

    public static String O(char[] cArr, char c) {
        if (cArr == null) {
            return null;
        }
        return P(cArr, c, 0, cArr.length);
    }

    public static String O0(String str, char c, char c2) {
        if (str == null) {
            return null;
        }
        return str.replace(c, c2);
    }

    public static String O1(String str, String str2, String str3) {
        int iIndexOf;
        int iIndexOf2;
        if (str == null || str2 == null || str3 == null || (iIndexOf = str.indexOf(str2)) == -1 || (iIndexOf2 = str.indexOf(str3, str2.length() + iIndexOf)) == -1) {
            return null;
        }
        return str.substring(iIndexOf + str2.length(), iIndexOf2);
    }

    public static String P(char[] cArr, char c, int i, int i2) {
        if (cArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }

    public static String P0(String str, String str2, String str3) {
        if (A(str) || A(str2)) {
            return str;
        }
        if (str3 == null) {
            str3 = "";
        }
        int length = str3.length();
        int length2 = str.length();
        StringBuilder sb = new StringBuilder(length2);
        boolean z = false;
        for (int i = 0; i < length2; i++) {
            char cCharAt = str.charAt(i);
            int iIndexOf = str2.indexOf(cCharAt);
            if (iIndexOf >= 0) {
                if (iIndexOf < length) {
                    sb.append(str3.charAt(iIndexOf));
                }
                z = true;
            } else {
                sb.append(cCharAt);
            }
        }
        return z ? sb.toString() : str;
    }

    public static String[] P1(String str, String str2, String str3) {
        int iIndexOf;
        int i;
        int iIndexOf2;
        if (str == null || A(str2) || A(str3)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return Cif.f28724for;
        }
        int length2 = str3.length();
        int length3 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < length - length2 && (iIndexOf = str.indexOf(str2, i2)) >= 0 && (iIndexOf2 = str.indexOf(str3, (i = iIndexOf + length3))) >= 0) {
            arrayList.add(str.substring(i, iIndexOf2));
            i2 = iIndexOf2 + length2;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String Q(double[] dArr, char c) {
        if (dArr == null) {
            return null;
        }
        return R(dArr, c, 0, dArr.length);
    }

    public static String Q0(String str, String[] strArr, String[] strArr2) {
        return R0(str, strArr, strArr2, false, 0);
    }

    public static String Q1(String str) {
        if (A(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            if (Character.isUpperCase(c)) {
                charArray[i] = Character.toLowerCase(c);
            } else if (Character.isTitleCase(c)) {
                charArray[i] = Character.toLowerCase(c);
            } else if (Character.isLowerCase(c)) {
                charArray[i] = Character.toUpperCase(c);
            }
        }
        return new String(charArray);
    }

    public static String R(double[] dArr, char c, int i, int i2) {
        if (dArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append(dArr[i4]);
        }
        return sb.toString();
    }

    private static String R0(String str, String[] strArr, String[] strArr2, boolean z, int i) {
        int length;
        if (str == null || str.isEmpty() || strArr == null || strArr.length == 0 || strArr2 == null || strArr2.length == 0) {
            return str;
        }
        if (i < 0) {
            throw new IllegalStateException("Aborting to protect against StackOverflowError - output of one loop is the input of another");
        }
        int length2 = strArr.length;
        int length3 = strArr2.length;
        if (length2 != length3) {
            throw new IllegalArgumentException("Search and Replace array lengths don't match: " + length2 + " vs " + length3);
        }
        boolean[] zArr = new boolean[length2];
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < length2; i4++) {
            if (!zArr[i4] && strArr[i4] != null && !strArr[i4].isEmpty() && strArr2[i4] != null) {
                int iIndexOf = str.indexOf(strArr[i4]);
                if (iIndexOf == -1) {
                    zArr[i4] = true;
                } else if (i2 == -1 || iIndexOf < i2) {
                    i3 = i4;
                    i2 = iIndexOf;
                }
            }
        }
        if (i2 == -1) {
            return str;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < strArr.length; i6++) {
            if (strArr[i6] != null && strArr2[i6] != null && (length = strArr2[i6].length() - strArr[i6].length()) > 0) {
                i5 += length * 3;
            }
        }
        StringBuilder sb = new StringBuilder(str.length() + Math.min(i5, str.length() / 5));
        int length4 = 0;
        while (i2 != -1) {
            while (length4 < i2) {
                sb.append(str.charAt(length4));
                length4++;
            }
            sb.append(strArr2[i3]);
            length4 = strArr[i3].length() + i2;
            i2 = -1;
            i3 = -1;
            for (int i7 = 0; i7 < length2; i7++) {
                if (!zArr[i7] && strArr[i7] != null && !strArr[i7].isEmpty() && strArr2[i7] != null) {
                    int iIndexOf2 = str.indexOf(strArr[i7], length4);
                    if (iIndexOf2 == -1) {
                        zArr[i7] = true;
                    } else if (i2 == -1 || iIndexOf2 < i2) {
                        i3 = i7;
                        i2 = iIndexOf2;
                    }
                }
            }
        }
        int length5 = str.length();
        while (length4 < length5) {
            sb.append(str.charAt(length4));
            length4++;
        }
        String string = sb.toString();
        return !z ? string : R0(string, strArr, strArr2, z, i - 1);
    }

    public static String R1(byte[] bArr, Charset charset) {
        if (charset == null) {
            charset = Charset.defaultCharset();
        }
        return new String(bArr, charset);
    }

    public static String S(float[] fArr, char c) {
        if (fArr == null) {
            return null;
        }
        return T(fArr, c, 0, fArr.length);
    }

    public static String S0(String str, String[] strArr, String[] strArr2) {
        return R0(str, strArr, strArr2, true, strArr == null ? 0 : strArr.length);
    }

    @Deprecated
    public static String S1(byte[] bArr, String str) throws UnsupportedEncodingException {
        return str != null ? new String(bArr, str) : new String(bArr, Charset.defaultCharset());
    }

    public static String T(float[] fArr, char c, int i, int i2) {
        if (fArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append(fArr[i4]);
        }
        return sb.toString();
    }

    public static String T0(String str, String str2, String str3) {
        return N0(str, str2, str3, 1);
    }

    private static int T1(CharSequence charSequence, CharSequence charSequence2) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                i++;
            }
        }
        return i / 2;
    }

    public static String U(int[] iArr, char c) {
        if (iArr == null) {
            return null;
        }
        return V(iArr, c, 0, iArr.length);
    }

    public static String U0(String str, String str2, String str3) {
        return Pattern.compile(str2, 32).matcher(str).replaceAll(str3);
    }

    public static String U1(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String V(int[] iArr, char c, int i, int i2) {
        if (iArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append(iArr[i4]);
        }
        return sb.toString();
    }

    public static String V0(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuilder(str).reverse().toString();
    }

    public static String V1(String str) {
        return str == null ? "" : str.trim();
    }

    public static String W(long[] jArr, char c) {
        if (jArr == null) {
            return null;
        }
        return X(jArr, c, 0, jArr.length);
    }

    public static String W0(String str, char c) {
        if (str == null) {
            return null;
        }
        String[] strArrD1 = d1(str, c);
        Cif.U1(strArrD1);
        return Z(strArrD1, c);
    }

    public static String W1(String str) {
        String strU1 = U1(str);
        if (A(strU1)) {
            return null;
        }
        return strU1;
    }

    public static String X(long[] jArr, char c, int i, int i2) {
        if (jArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append(jArr[i4]);
        }
        return sb.toString();
    }

    public static String X0(String str, int i) {
        if (str == null) {
            return null;
        }
        return i < 0 ? "" : str.length() <= i ? str : str.substring(str.length() - i);
    }

    public static String X1(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append(Character.toLowerCase(cCharAt));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static <T> String Y(T... tArr) {
        return b0(tArr, null);
    }

    public static String Y0(String str, int i) {
        return Z0(str, i, ' ');
    }

    public static String Y1(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    public static String Z(Object[] objArr, char c) {
        if (objArr == null) {
            return null;
        }
        return a0(objArr, c, 0, objArr.length);
    }

    public static String Z0(String str, int i, char c) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        return length <= 0 ? str : length > 8192 ? a1(str, i, String.valueOf(c)) : str.concat(J0(c, length));
    }

    public static String Z1(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(locale);
    }

    public static int a(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        if (length > length2) {
            length2 = charSequence.length();
            length = length2;
        } else {
            charSequence2 = charSequence;
            charSequence = charSequence2;
        }
        int i = length + 1;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        for (int i2 = 0; i2 <= length; i2++) {
            iArr[i2] = i2;
        }
        int i3 = 1;
        while (i3 <= length2) {
            char cCharAt = charSequence.charAt(i3 - 1);
            iArr2[0] = i3;
            for (int i4 = 1; i4 <= length; i4++) {
                int i5 = i4 - 1;
                iArr2[i4] = Math.min(Math.min(iArr2[i5] + 1, iArr[i4] + 1), iArr[i5] + (charSequence2.charAt(i5) == cCharAt ? 0 : 1));
            }
            i3++;
            int[] iArr3 = iArr;
            iArr = iArr2;
            iArr2 = iArr3;
        }
        return iArr[length];
    }

    public static String a0(Object[] objArr, char c, int i, int i2) {
        if (objArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            if (objArr[i4] != null) {
                sb.append(objArr[i4]);
            }
        }
        return sb.toString();
    }

    public static String a1(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        if (A(str2)) {
            str2 = f28652do;
        }
        int length = str2.length();
        int length2 = i - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return Z0(str, i, str2.charAt(0));
        }
        if (length2 == length) {
            return str.concat(str2);
        }
        if (length2 < length) {
            return str.concat(str2.substring(0, length2));
        }
        char[] cArr = new char[length2];
        char[] charArray = str2.toCharArray();
        for (int i2 = 0; i2 < length2; i2++) {
            cArr[i2] = charArray[i2 % length];
        }
        return str.concat(new String(cArr));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static String m32238abstract(String str) {
        if (A(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(str.charAt(i2))) {
                cArr[i] = str.charAt(i2);
                i++;
            }
        }
        return i == length ? str : new String(cArr, 0, i);
    }

    public static int b(CharSequence charSequence, CharSequence charSequence2, int i) {
        int i2;
        int length;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        if (length2 == 0) {
            if (length3 <= i) {
                return length3;
            }
            return -1;
        }
        if (length3 == 0) {
            if (length2 <= i) {
                return length2;
            }
            return -1;
        }
        if (length2 > length3) {
            length = charSequence.length();
            i2 = length3;
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            i2 = length2;
            length = length3;
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int i3 = i2 + 1;
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        int iMin = Math.min(i2, i) + 1;
        char c = 0;
        for (int i4 = 0; i4 < iMin; i4++) {
            iArr[i4] = i4;
        }
        int i5 = Integer.MAX_VALUE;
        Arrays.fill(iArr, iMin, i3, Integer.MAX_VALUE);
        Arrays.fill(iArr2, Integer.MAX_VALUE);
        int i6 = 1;
        while (i6 <= length) {
            char cCharAt = charSequence4.charAt(i6 - 1);
            iArr2[c] = i6;
            int iMax = Math.max(1, i6 - i);
            int iMin2 = i6 > i5 - i ? i2 : Math.min(i2, i6 + i);
            if (iMax > iMin2) {
                return -1;
            }
            if (iMax > 1) {
                iArr2[iMax - 1] = i5;
            }
            while (iMax <= iMin2) {
                int i7 = iMax - 1;
                if (charSequence3.charAt(i7) == cCharAt) {
                    iArr2[iMax] = iArr[i7];
                } else {
                    iArr2[iMax] = Math.min(Math.min(iArr2[i7], iArr[iMax]), iArr[i7]) + 1;
                }
                iMax++;
            }
            i6++;
            c = 0;
            i5 = Integer.MAX_VALUE;
            int[] iArr3 = iArr2;
            iArr2 = iArr;
            iArr = iArr3;
        }
        if (iArr[i2] <= i) {
            return iArr[i2];
        }
        return -1;
    }

    public static String b0(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return c0(objArr, str, 0, objArr.length);
    }

    private static double b1(CharSequence charSequence, CharSequence charSequence2) {
        String lowerCase;
        String lowerCase2;
        if (charSequence.length() > charSequence2.length()) {
            lowerCase2 = charSequence.toString().toLowerCase();
            lowerCase = charSequence2.toString().toLowerCase();
        } else {
            String lowerCase3 = charSequence2.toString().toLowerCase();
            lowerCase = charSequence.toString().toLowerCase();
            lowerCase2 = lowerCase3;
        }
        int length = (lowerCase.length() / 2) + 1;
        String strC = c(lowerCase, lowerCase2, length);
        String strC2 = c(lowerCase2, lowerCase, length);
        if (strC.length() == 0 || strC2.length() == 0 || strC.length() != strC2.length()) {
            return 0.0d;
        }
        int iT1 = T1(strC, strC2);
        double length2 = strC.length();
        double length3 = lowerCase.length();
        Double.isNaN(length2);
        Double.isNaN(length3);
        double d = length2 / length3;
        double length4 = strC2.length();
        double length5 = lowerCase2.length();
        Double.isNaN(length4);
        Double.isNaN(length5);
        double d2 = d + (length4 / length5);
        double length6 = strC.length() - iT1;
        double length7 = strC.length();
        Double.isNaN(length6);
        Double.isNaN(length7);
        return (d2 + (length6 / length7)) / 3.0d;
    }

    /* renamed from: break, reason: not valid java name */
    public static String m32239break(String str, int i, String str2) {
        if (str == null || i <= 0) {
            return str;
        }
        if (A(str2)) {
            str2 = f28652do;
        }
        int length = str.length();
        int i2 = i - length;
        return i2 <= 0 ? str : a1(q0(str, length + (i2 / 2), str2), i, str2);
    }

    private static String c(CharSequence charSequence, CharSequence charSequence2, int i) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder(charSequence2);
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            char cCharAt = charSequence.charAt(i2);
            boolean z = false;
            for (int iMax = Math.max(0, i2 - i); !z && iMax < Math.min(i2 + i, charSequence2.length()); iMax++) {
                if (sb2.charAt(iMax) == cCharAt) {
                    sb.append(cCharAt);
                    sb2.setCharAt(iMax, '*');
                    z = true;
                }
            }
        }
        return sb.toString();
    }

    public static String c0(Object[] objArr, String str, int i, int i2) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(str);
            }
            if (objArr[i4] != null) {
                sb.append(objArr[i4]);
            }
        }
        return sb.toString();
    }

    public static String[] c1(String str) {
        return f1(str, null, -1);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m32240case(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return m32259new(str, charSequence, true, charSequenceArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m32241catch(String str) {
        if (A(str)) {
            return str;
        }
        if (str.length() == 1) {
            char cCharAt = str.charAt(0);
            return (cCharAt == '\r' || cCharAt == '\n') ? "" : str;
        }
        int length = str.length() - 1;
        char cCharAt2 = str.charAt(length);
        if (cCharAt2 == '\n') {
            if (str.charAt(length - 1) == '\r') {
                length--;
            }
        } else if (cCharAt2 != '\r') {
            length++;
        }
        return str.substring(0, length);
    }

    @Deprecated
    /* renamed from: class, reason: not valid java name */
    public static String m32242class(String str, String str2) {
        return E0(str, str2);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m32243const(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i = length - 1;
        String strSubstring = str.substring(0, i);
        if (str.charAt(i) == '\n') {
            int i2 = i - 1;
            if (strSubstring.charAt(i2) == '\r') {
                return strSubstring.substring(0, i2);
            }
        }
        return strSubstring;
    }

    /* renamed from: continue, reason: not valid java name */
    public static String m32244continue(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        int iM = m(str, str2);
        return iM == -1 ? "" : str2.substring(iM);
    }

    public static int d(CharSequence charSequence, int i) {
        if (A(charSequence)) {
            return -1;
        }
        return sk.m7462do(charSequence, i, 0);
    }

    public static String d0(short[] sArr, char c) {
        if (sArr == null) {
            return null;
        }
        return e0(sArr, c, 0, sArr.length);
    }

    public static String[] d1(String str, char c) {
        return s1(str, c, false);
    }

    /* renamed from: default, reason: not valid java name */
    public static int m32245default(CharSequence charSequence, CharSequence charSequence2) {
        int length = 0;
        if (A(charSequence) || A(charSequence2)) {
            return 0;
        }
        int i = 0;
        while (true) {
            int iM7465if = sk.m7465if(charSequence, charSequence2, length);
            if (iM7465if == -1) {
                return i;
            }
            i++;
            length = iM7465if + charSequence2.length();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m32246do(String str, int i) {
        return m32253if(str, 0, i);
    }

    public static int e(CharSequence charSequence, int i, int i2) {
        if (A(charSequence)) {
            return -1;
        }
        return sk.m7462do(charSequence, i, i2);
    }

    public static String e0(short[] sArr, char c, int i, int i2) {
        if (sArr == null) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i3 * 16);
        for (int i4 = i; i4 < i2; i4++) {
            if (i4 > i) {
                sb.append(c);
            }
            sb.append((int) sArr[i4]);
        }
        return sb.toString();
    }

    public static String[] e1(String str, String str2) {
        return t1(str, str2, -1, false);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m32247else(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (Character.isTitleCase(cCharAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append(Character.toTitleCase(cCharAt));
        sb.append(str.substring(1));
        return sb.toString();
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T extends CharSequence> T m32248extends(T t, T t2) {
        return z(t) ? t2 : t;
    }

    public static int f(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return sk.m7465if(charSequence, charSequence2, 0);
    }

    public static int f0(CharSequence charSequence, int i) {
        if (A(charSequence)) {
            return -1;
        }
        return sk.m7464for(charSequence, i, charSequence.length());
    }

    public static String[] f1(String str, String str2, int i) {
        return t1(str, str2, i, false);
    }

    /* renamed from: final, reason: not valid java name */
    private static int m32249final(CharSequence charSequence, CharSequence charSequence2) {
        int length = m32256instanceof(charSequence.toString(), charSequence2.toString()).length();
        if (length > 4) {
            return 4;
        }
        return length;
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T extends CharSequence> T m32250finally(T t, T t2) {
        return A(t) ? t2 : t;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m32251for(String str, String str2, int i) {
        if (A(str) || A(str2) || i >= str.length() || i < str2.length() + 2) {
            return str;
        }
        int length = i - str2.length();
        int i2 = length / 2;
        int i3 = (length % 2) + i2;
        int length2 = str.length() - i2;
        StringBuilder sb = new StringBuilder(i);
        sb.append(str.substring(0, i3));
        sb.append(str2);
        sb.append(str.substring(length2));
        return sb.toString();
    }

    public static int g(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return sk.m7465if(charSequence, charSequence2, i);
    }

    public static int g0(CharSequence charSequence, int i, int i2) {
        if (A(charSequence)) {
            return -1;
        }
        return sk.m7464for(charSequence, i, i2);
    }

    public static String[] g1(String str) {
        return h1(str, false);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m32252goto(String str, int i) {
        return m32270this(str, i, ' ');
    }

    public static int h(CharSequence charSequence, String str) {
        if (A(charSequence) || A(str)) {
            return -1;
        }
        return i(charSequence, str.toCharArray());
    }

    public static int h0(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return sk.m7466new(charSequence, charSequence2, charSequence.length());
    }

    private static String[] h1(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return Cif.f28724for;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int type = Character.getType(charArray[0]);
        for (int i2 = 1; i2 < charArray.length; i2++) {
            int type2 = Character.getType(charArray[i2]);
            if (type2 != type) {
                if (z && type2 == 2 && type == 1) {
                    int i3 = i2 - 1;
                    if (i3 != i) {
                        arrayList.add(new String(charArray, i, i3 - i));
                        i = i3;
                    }
                } else {
                    arrayList.add(new String(charArray, i, i2 - i));
                    i = i2;
                }
                type = type2;
            }
        }
        arrayList.add(new String(charArray, i, charArray.length - i));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static int i(CharSequence charSequence, char... cArr) {
        if (!A(charSequence) && !Cif.G(cArr)) {
            int length = charSequence.length();
            int i = length - 1;
            int length2 = cArr.length;
            int i2 = length2 - 1;
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = charSequence.charAt(i3);
                for (int i4 = 0; i4 < length2; i4++) {
                    if (cArr[i4] == cCharAt && (i3 >= i || i4 >= i2 || !Character.isHighSurrogate(cCharAt) || cArr[i4 + 1] == charSequence.charAt(i3 + 1))) {
                        return i3;
                    }
                }
            }
        }
        return -1;
    }

    public static int i0(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return sk.m7466new(charSequence, charSequence2, i);
    }

    public static String[] i1(String str) {
        return h1(str, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m32253if(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 4) {
            throw new IllegalArgumentException("Minimum abbreviation width is 4");
        }
        if (str.length() <= i2) {
            return str;
        }
        if (i > str.length()) {
            i = str.length();
        }
        int i3 = i2 - 3;
        if (str.length() - i < i3) {
            i = str.length() - i3;
        }
        if (i <= 4) {
            return str.substring(0, i3) + "...";
        }
        if (i2 < 7) {
            throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
        }
        if ((i2 + i) - 3 < str.length()) {
            return "..." + m32246do(str.substring(i), i3);
        }
        return "..." + str.substring(str.length() - i3);
    }

    /* renamed from: implements, reason: not valid java name */
    public static boolean m32254implements(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence.length() != charSequence2.length()) {
            return false;
        }
        return sk.m7467try(charSequence, true, 0, charSequence2, 0, charSequence.length());
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m32255import(CharSequence charSequence, char... cArr) {
        if (!A(charSequence) && !Cif.G(cArr)) {
            int length = charSequence.length();
            int length2 = cArr.length;
            int i = length - 1;
            int i2 = length2 - 1;
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = charSequence.charAt(i3);
                for (int i4 = 0; i4 < length2; i4++) {
                    if (cArr[i4] == cCharAt) {
                        if (!Character.isHighSurrogate(cCharAt) || i4 == i2) {
                            return true;
                        }
                        if (i3 < i && cArr[i4 + 1] == charSequence.charAt(i3 + 1)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static String m32256instanceof(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        int iN = n(strArr);
        return iN == -1 ? strArr[0] == null ? "" : strArr[0] : iN == 0 ? "" : strArr[0].substring(0, iN);
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m32257interface(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!A(charSequence) && !Cif.L(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (m32266strictfp(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int j(CharSequence charSequence, CharSequence... charSequenceArr) {
        int iM7465if;
        if (charSequence == null || charSequenceArr == null) {
            return -1;
        }
        int i = Integer.MAX_VALUE;
        for (CharSequence charSequence2 : charSequenceArr) {
            if (charSequence2 != null && (iM7465if = sk.m7465if(charSequence, charSequence2, 0)) != -1 && iM7465if < i) {
                i = iM7465if;
            }
        }
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i;
    }

    public static int j0(CharSequence charSequence, CharSequence... charSequenceArr) {
        int iM7466new;
        int i = -1;
        if (charSequence != null && charSequenceArr != null) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (charSequence2 != null && (iM7466new = sk.m7466new(charSequence, charSequence2, charSequence.length())) > i) {
                    i = iM7466new;
                }
            }
        }
        return i;
    }

    public static String[] j1(String str, String str2) {
        return n1(str, str2, -1, false);
    }

    public static int k(CharSequence charSequence, CharSequence charSequence2) {
        if (!A(charSequence) && !A(charSequence2)) {
            int length = charSequence.length();
            int i = 0;
            while (i < length) {
                char cCharAt = charSequence.charAt(i);
                boolean z = sk.m7462do(charSequence2, cCharAt, 0) >= 0;
                int i2 = i + 1;
                if (i2 < length && Character.isHighSurrogate(cCharAt)) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (z && sk.m7462do(charSequence2, cCharAt2, 0) < 0) {
                        return i;
                    }
                } else if (!z) {
                    return i;
                }
                i = i2;
            }
        }
        return -1;
    }

    public static int k0(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return l0(charSequence, charSequence2, charSequence.length());
    }

    public static String[] k1(String str, String str2, int i) {
        return n1(str, str2, i, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        r6 = r6 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int l(CharSequence charSequence, char... cArr) {
        int i;
        if (!A(charSequence) && !Cif.G(cArr)) {
            int length = charSequence.length();
            int i2 = length - 1;
            int length2 = cArr.length;
            int i3 = length2 - 1;
            int i4 = 0;
            while (i4 < length) {
                char cCharAt = charSequence.charAt(i4);
                while (i < length2) {
                    i = (cArr[i] != cCharAt || (i4 < i2 && i < i3 && Character.isHighSurrogate(cCharAt) && cArr[i + 1] != charSequence.charAt(i4 + 1))) ? i + 1 : 0;
                }
                return i4;
            }
        }
        return -1;
    }

    public static int l0(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence != null && charSequence2 != null) {
            if (i > charSequence.length() - charSequence2.length()) {
                i = charSequence.length() - charSequence2.length();
            }
            if (i < 0) {
                return -1;
            }
            if (charSequence2.length() == 0) {
                return i;
            }
            while (i >= 0) {
                if (sk.m7467try(charSequence, true, i, charSequence2, 0, charSequence2.length())) {
                    return i;
                }
                i--;
            }
        }
        return -1;
    }

    public static String[] l1(String str, String str2) {
        return n1(str, str2, -1, true);
    }

    public static int m(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return -1;
        }
        int i = 0;
        if (charSequence != null && charSequence2 != null) {
            while (i < charSequence.length() && i < charSequence2.length() && charSequence.charAt(i) == charSequence2.charAt(i)) {
                i++;
            }
            if (i >= charSequence2.length() && i >= charSequence.length()) {
                return -1;
            }
        }
        return i;
    }

    public static int m0(CharSequence charSequence, CharSequence charSequence2, int i) {
        return x0(charSequence, charSequence2, i, true);
    }

    public static String[] m1(String str, String str2, int i) {
        return n1(str, str2, i, true);
    }

    public static int n(CharSequence... charSequenceArr) {
        if (charSequenceArr != null && charSequenceArr.length > 1) {
            int length = charSequenceArr.length;
            int iMin = Integer.MAX_VALUE;
            boolean z = true;
            int iMax = 0;
            boolean z2 = false;
            for (int i = 0; i < length; i++) {
                if (charSequenceArr[i] == null) {
                    iMin = 0;
                    z2 = true;
                } else {
                    iMin = Math.min(charSequenceArr[i].length(), iMin);
                    iMax = Math.max(charSequenceArr[i].length(), iMax);
                    z = false;
                }
            }
            if (!z && (iMax != 0 || z2)) {
                if (iMin == 0) {
                    return 0;
                }
                int i2 = -1;
                for (int i3 = 0; i3 < iMin; i3++) {
                    char cCharAt = charSequenceArr[0].charAt(i3);
                    int i4 = 1;
                    while (true) {
                        if (i4 >= length) {
                            break;
                        }
                        if (charSequenceArr[i4].charAt(i3) != cCharAt) {
                            i2 = i3;
                            break;
                        }
                        i4++;
                    }
                    if (i2 != -1) {
                        break;
                    }
                }
                return (i2 != -1 || iMin == iMax) ? i2 : iMin;
            }
        }
        return -1;
    }

    public static String n0(String str, int i) {
        if (str == null) {
            return null;
        }
        return i < 0 ? "" : str.length() <= i ? str : str.substring(0, i);
    }

    private static String[] n1(String str, String str2, int i, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return Cif.f28724for;
        }
        if (str2 == null || "".equals(str2)) {
            return t1(str, null, i, z);
        }
        int length2 = str2.length();
        ArrayList arrayList = new ArrayList();
        int iIndexOf = 0;
        int i2 = 0;
        int i3 = 0;
        while (iIndexOf < length) {
            iIndexOf = str.indexOf(str2, i2);
            if (iIndexOf > -1) {
                if (iIndexOf > i2) {
                    i3++;
                    if (i3 == i) {
                        arrayList.add(str.substring(i2));
                    } else {
                        arrayList.add(str.substring(i2, iIndexOf));
                    }
                } else if (z) {
                    i3++;
                    if (i3 == i) {
                        arrayList.add(str.substring(i2));
                        iIndexOf = length;
                    } else {
                        arrayList.add("");
                    }
                }
                i2 = iIndexOf + length2;
            } else {
                arrayList.add(str.substring(i2));
            }
            iIndexOf = length;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m32258native(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null && charSequence2 != null) {
            int length = charSequence2.length();
            int length2 = charSequence.length() - length;
            for (int i = 0; i <= length2; i++) {
                if (sk.m7467try(charSequence, true, i, charSequence2, 0, length)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private static String m32259new(String str, CharSequence charSequence, boolean z, CharSequence... charSequenceArr) {
        if (str == null || A(charSequence) || m32275volatile(str, charSequence, z)) {
            return str;
        }
        if (charSequenceArr != null && charSequenceArr.length > 0) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (m32275volatile(str, charSequence2, z)) {
                    return str;
                }
            }
        }
        return str + charSequence.toString();
    }

    public static int o(CharSequence charSequence, CharSequence charSequence2) {
        return p(charSequence, charSequence2, 0);
    }

    public static String o0(String str, int i) {
        return p0(str, i, ' ');
    }

    public static String[] o1(String str) {
        return t1(str, null, -1, true);
    }

    public static int p(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence != null && charSequence2 != null) {
            if (i < 0) {
                i = 0;
            }
            int length = (charSequence.length() - charSequence2.length()) + 1;
            if (i > length) {
                return -1;
            }
            if (charSequence2.length() == 0) {
                return i;
            }
            while (i < length) {
                if (sk.m7467try(charSequence, true, i, charSequence2, 0, charSequence2.length())) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public static String p0(String str, int i, char c) {
        if (str == null) {
            return null;
        }
        int length = i - str.length();
        return length <= 0 ? str : length > 8192 ? q0(str, i, String.valueOf(c)) : J0(c, length).concat(str);
    }

    public static String[] p1(String str, char c) {
        return s1(str, c, true);
    }

    /* renamed from: package, reason: not valid java name */
    public static String m32260package(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: private, reason: not valid java name */
    public static String m32261private(String str, String str2) {
        return str == null ? str2 : str;
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m32262protected(CharSequence charSequence, CharSequence charSequence2) {
        return m32275volatile(charSequence, charSequence2, true);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m32263public(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return true;
        }
        return m32264return(charSequence, str.toCharArray());
    }

    public static boolean q(CharSequence charSequence) {
        if (charSequence == null || A(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLowerCase(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String q0(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        if (A(str2)) {
            str2 = f28652do;
        }
        int length = str2.length();
        int length2 = i - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return p0(str, i, str2.charAt(0));
        }
        if (length2 == length) {
            return str2.concat(str);
        }
        if (length2 < length) {
            return str2.substring(0, length2).concat(str);
        }
        char[] cArr = new char[length2];
        char[] charArray = str2.toCharArray();
        for (int i2 = 0; i2 < length2; i2++) {
            cArr[i2] = charArray[i2 % length];
        }
        return new String(cArr).concat(str);
    }

    public static String[] q1(String str, String str2) {
        return t1(str, str2, -1, true);
    }

    public static boolean r(CharSequence charSequence) {
        if (charSequence == null || A(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isUpperCase(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static int r0(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String[] r1(String str, String str2, int i) {
        return t1(str, str2, i, true);
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m32264return(CharSequence charSequence, char... cArr) {
        if (charSequence != null && cArr != null) {
            int length = charSequence.length();
            int i = length - 1;
            int length2 = cArr.length;
            int i2 = length2 - 1;
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = charSequence.charAt(i3);
                for (int i4 = 0; i4 < length2; i4++) {
                    if (cArr[i4] == cCharAt) {
                        if (!Character.isHighSurrogate(cCharAt) || i4 == i2) {
                            return false;
                        }
                        if (i3 < i && cArr[i4 + 1] == charSequence.charAt(i3 + 1)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean s(CharSequence charSequence) {
        if (A(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String s0(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    private static String[] s1(String str, char c, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return Cif.f28724for;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (i < length) {
            if (str.charAt(i) == c) {
                if (z2 || z) {
                    arrayList.add(str.substring(i2, i));
                    z2 = false;
                    z3 = true;
                }
                i2 = i + 1;
                i = i2;
            } else {
                i++;
                z2 = true;
                z3 = false;
            }
        }
        if (z2 || (z && z3)) {
            arrayList.add(str.substring(i2, i));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m32265static(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return false;
        }
        return m32268switch(charSequence, str.toCharArray());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m32266strictfp(CharSequence charSequence, CharSequence charSequence2) {
        return m32275volatile(charSequence, charSequence2, false);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m32267super(CharSequence charSequence, int i) {
        return !A(charSequence) && sk.m7462do(charSequence, i, 0) >= 0;
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m32268switch(CharSequence charSequence, char... cArr) {
        if (cArr == null || charSequence == null) {
            return false;
        }
        if (charSequence.length() == 0) {
            return true;
        }
        return cArr.length != 0 && l(charSequence, cArr) == -1;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static double m32269synchronized(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        double dB1 = b1(charSequence, charSequence2);
        double dM32249final = m32249final(charSequence, charSequence2);
        Double.isNaN(dM32249final);
        double dRound = Math.round((dB1 + (dM32249final * 0.1d * (1.0d - dB1))) * 100.0d);
        Double.isNaN(dRound);
        return dRound / 100.0d;
    }

    public static boolean t(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetter(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String t0(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(locale);
    }

    private static String[] t1(String str, String str2, int i, boolean z) {
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        boolean z4;
        boolean z5;
        int i5;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return Cif.f28724for;
        }
        ArrayList arrayList = new ArrayList();
        if (str2 == null) {
            i4 = 0;
            z4 = false;
            z5 = false;
            i5 = 0;
            int i6 = 1;
            while (i4 < length) {
                if (Character.isWhitespace(str.charAt(i4))) {
                    if (z4 || z) {
                        int i7 = i6 + 1;
                        if (i6 == i) {
                            i4 = length;
                            z5 = false;
                        } else {
                            z5 = true;
                        }
                        arrayList.add(str.substring(i5, i4));
                        i6 = i7;
                        z4 = false;
                    }
                    i5 = i4 + 1;
                    i4 = i5;
                } else {
                    i4++;
                    z4 = true;
                    z5 = false;
                }
            }
        } else {
            if (str2.length() == 1) {
                char cCharAt = str2.charAt(0);
                i2 = 0;
                z2 = false;
                z3 = false;
                i3 = 0;
                int i8 = 1;
                while (i2 < length) {
                    if (str.charAt(i2) == cCharAt) {
                        if (z2 || z) {
                            int i9 = i8 + 1;
                            if (i8 == i) {
                                i2 = length;
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            arrayList.add(str.substring(i3, i2));
                            i8 = i9;
                            z2 = false;
                        }
                        i3 = i2 + 1;
                        i2 = i3;
                    } else {
                        i2++;
                        z2 = true;
                        z3 = false;
                    }
                }
            } else {
                i2 = 0;
                z2 = false;
                z3 = false;
                i3 = 0;
                int i10 = 1;
                while (i2 < length) {
                    if (str2.indexOf(str.charAt(i2)) >= 0) {
                        if (z2 || z) {
                            int i11 = i10 + 1;
                            if (i10 == i) {
                                i2 = length;
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            arrayList.add(str.substring(i3, i2));
                            i10 = i11;
                            z2 = false;
                        }
                        i3 = i2 + 1;
                        i2 = i3;
                    } else {
                        i2++;
                        z2 = true;
                        z3 = false;
                    }
                }
            }
            i4 = i2;
            z4 = z2;
            z5 = z3;
            i5 = i3;
        }
        if (z4 || (z && z5)) {
            arrayList.add(str.substring(i5, i4));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m32270this(String str, int i, char c) {
        int length;
        int length2;
        return (str == null || i <= 0 || (length2 = i - (length = str.length())) <= 0) ? str : Z0(p0(str, length + (length2 / 2), c), i, c);
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m32271throw(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence == null || charSequence2 == null || sk.m7465if(charSequence, charSequence2, 0) < 0) ? false : true;
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m32272throws(CharSequence charSequence) {
        if (A(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (Character.isWhitespace(charSequence.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m32273transient(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        return ((charSequence instanceof String) && (charSequence2 instanceof String)) ? charSequence.equals(charSequence2) : sk.m7467try(charSequence, false, 0, charSequence2, 0, Math.max(charSequence.length(), charSequence2.length()));
    }

    /* renamed from: try, reason: not valid java name */
    public static String m32274try(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return m32259new(str, charSequence, false, charSequenceArr);
    }

    public static boolean u(CharSequence charSequence) {
        if (A(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String u0(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0 || i > str.length()) {
            return "";
        }
        if (i < 0) {
            i = 0;
        }
        int i3 = i2 + i;
        return str.length() <= i3 ? str.substring(i) : str.substring(i, i3);
    }

    public static boolean u1(CharSequence charSequence, CharSequence charSequence2) {
        return v1(charSequence, charSequence2, false);
    }

    public static boolean v(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i)) && charSequence.charAt(i) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String v0(String str) {
        if (str == null) {
            return null;
        }
        return f28653else.matcher(U1(str)).replaceAll(f28652do);
    }

    private static boolean v1(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        return sk.m7467try(charSequence, z, 0, charSequence2, 0, charSequence2.length());
    }

    /* renamed from: volatile, reason: not valid java name */
    private static boolean m32275volatile(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        return sk.m7467try(charSequence, z, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length());
    }

    public static boolean w(CharSequence... charSequenceArr) {
        if (Cif.L(charSequenceArr)) {
            return true;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (z(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public static int w0(CharSequence charSequence, CharSequence charSequence2, int i) {
        return x0(charSequence, charSequence2, i, false);
    }

    public static boolean w1(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!A(charSequence) && !Cif.L(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (u1(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m32276while(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2 == null) {
            return false;
        }
        return m32255import(charSequence, sk.m7463else(charSequence2));
    }

    public static boolean x(CharSequence... charSequenceArr) {
        if (Cif.L(charSequenceArr)) {
            return true;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (A(charSequence)) {
                return true;
            }
        }
        return false;
    }

    private static int x0(CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        if (charSequence != null && charSequence2 != null && i > 0) {
            int i2 = 0;
            if (charSequence2.length() == 0) {
                if (z) {
                    return charSequence.length();
                }
                return 0;
            }
            length = z ? charSequence.length() : -1;
            do {
                length = z ? sk.m7466new(charSequence, charSequence2, length - 1) : sk.m7465if(charSequence, charSequence2, length + 1);
                if (length < 0) {
                    return length;
                }
                i2++;
            } while (i2 < i);
        }
        return length;
    }

    public static boolean x1(CharSequence charSequence, CharSequence charSequence2) {
        return v1(charSequence, charSequence2, true);
    }

    public static boolean y(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!wk.m9177goto(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String y0(String str, String str2, int i, int i2) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        int length = str.length();
        if (i < 0) {
            i = 0;
        }
        if (i > length) {
            i = length;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 > length) {
            i2 = length;
        }
        if (i > i2) {
            int i3 = i2;
            i2 = i;
            i = i3;
        }
        StringBuilder sb = new StringBuilder(((length + i) - i2) + str2.length() + 1);
        sb.append(str.substring(0, i));
        sb.append(str2);
        sb.append(str.substring(i2));
        return sb.toString();
    }

    public static String y1(String str) {
        return z1(str, null);
    }

    public static boolean z(CharSequence charSequence) {
        int length;
        if (charSequence != null && (length = charSequence.length()) != 0) {
            for (int i = 0; i < length; i++) {
                if (!Character.isWhitespace(charSequence.charAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    private static String z0(String str, CharSequence charSequence, boolean z, CharSequence... charSequenceArr) {
        if (str == null || A(charSequence) || v1(str, charSequence, z)) {
            return str;
        }
        if (charSequenceArr != null && charSequenceArr.length > 0) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (v1(str, charSequence2, z)) {
                    return str;
                }
            }
        }
        return charSequence.toString() + str;
    }

    public static String z1(String str, String str2) {
        return A(str) ? str : D1(E1(str, str2), str2);
    }
}
