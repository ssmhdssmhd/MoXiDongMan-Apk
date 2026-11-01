package freemarker.template.utility;

import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.vm;
import android.support.v4.w41;
import android.support.v4.we2;
import android.support.v4.wk;
import com.umeng.analytics.pro.ak;
import freemarker.core.b2;
import freemarker.core.d0;
import freemarker.core.h3;
import freemarker.ext.dom.Cthrow;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Cclass;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: freemarker.template.utility.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper {

    /* renamed from: break, reason: not valid java name */
    private static final int f25233break = 3;

    /* renamed from: goto, reason: not valid java name */
    private static final int f25238goto = 0;

    /* renamed from: this, reason: not valid java name */
    private static final int f25241this = 1;

    /* renamed from: do, reason: not valid java name */
    private static final char[] f25235do = m29329switch();

    /* renamed from: if, reason: not valid java name */
    private static final char[] f25239if = {ca2.f679for, 'l', 't', ';'};

    /* renamed from: for, reason: not valid java name */
    private static final char[] f25237for = {ca2.f679for, 'g', 't', ';'};

    /* renamed from: new, reason: not valid java name */
    private static final char[] f25240new = {ca2.f679for, 'a', 'm', 'p', ';'};

    /* renamed from: try, reason: not valid java name */
    private static final char[] f25242try = {ca2.f679for, 'q', 'u', 'o', 't', ';'};

    /* renamed from: case, reason: not valid java name */
    private static final char[] f25234case = {ca2.f679for, '#', '3', '9', ';'};

    /* renamed from: else, reason: not valid java name */
    private static final char[] f25236else = {ca2.f679for, 'a', 'p', 'o', 's', ';'};

    public static String A(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return obj.toString();
        } catch (Throwable th) {
            return m29309extends(obj, th);
        }
    }

    private static String B(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf == -1) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        int i = 0;
        do {
            sb.append((CharSequence) str, i, iIndexOf);
            i = iIndexOf + 1;
            iIndexOf = str.indexOf(92, i + 1);
        } while (iIndexOf != -1);
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public static int C(String str) {
        return new we2(str).intValue();
    }

    public static String a(Object obj) {
        return b(obj != null ? obj.toString() : null);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static Pattern m29299abstract(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (z2) {
                z2 = false;
            } else {
                if (cCharAt == '?') {
                    m29324public(sb, str, i2, i);
                    sb.append("[^/]");
                } else if (cCharAt == '*') {
                    m29324public(sb, str, i2, i);
                    int i3 = i + 1;
                    if (i3 >= length || str.charAt(i3) != '*') {
                        sb.append("[^/]*");
                    } else {
                        if (i != 0 && str.charAt(i - 1) != '/') {
                            throw new IllegalArgumentException("The \"**\" wildcard must be directly after a \"/\" or it must be at the beginning, in this glob: " + str);
                        }
                        i += 2;
                        if (i == length) {
                            sb.append(".*");
                            i = i3;
                        } else {
                            if (i >= length || str.charAt(i) != '/') {
                                throw new IllegalArgumentException("The \"**\" wildcard must be followed by \"/\", or must be at tehe end, in this glob: " + str);
                            }
                            sb.append("(.*?/)*");
                        }
                    }
                } else if (cCharAt == '\\') {
                    z2 = true;
                } else if (cCharAt == '[' || cCharAt == '{') {
                    throw new IllegalArgumentException("The \"" + cCharAt + "\" glob operator is currently unsupported (precede it with \\ for literal matching), in this glob: " + str);
                }
                i2 = i + 1;
            }
            i++;
        }
        m29324public(sb, str, i2, str.length());
        return Pattern.compile(sb.toString(), z ? 66 : 0);
    }

    public static String b(String str) {
        if (str == null) {
            return "null";
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 4);
        sb.append(ca2.f674do);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt == '\\') {
                sb.append("\\\\");
            } else if (cCharAt == '<') {
                sb.append("\\u003C");
            } else if (cCharAt >= ' ') {
                sb.append(cCharAt);
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\f') {
                sb.append("\\f");
            } else if (cCharAt == '\b') {
                sb.append("\\b");
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else {
                sb.append("\\u00");
                sb.append(w(cCharAt / 16));
                sb.append(w(cCharAt & 15));
            }
        }
        sb.append(ca2.f674do);
        return sb.toString();
    }

    /* renamed from: break, reason: not valid java name */
    public static String m29300break(String str, String str2) throws UnsupportedEncodingException {
        return m29331this(str, str2, true);
    }

    public static String c(String str) {
        return e(str, false);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m29301case(String str) {
        int length = str.length();
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '{' || cCharAt == '}' || cCharAt == '\\') {
                if (i == -1) {
                    i = i4;
                }
                i2++;
                i3 = i4;
            }
        }
        if (i == -1) {
            return str;
        }
        char[] cArr = new char[i2 + length];
        if (i != 0) {
            str.getChars(0, i, cArr, 0);
        }
        int i5 = i;
        while (i <= i3) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 == '{' || cCharAt2 == '}' || cCharAt2 == '\\') {
                cArr[i5] = '\\';
                i5++;
            }
            cArr[i5] = cCharAt2;
            i++;
            i5++;
        }
        if (i3 != length - 1) {
            str.getChars(i3 + 1, length, cArr, i5);
        }
        return String.valueOf(cArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m29302catch(String str) {
        return m29316import(str, true, true, f25234case);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m29303class(String str, Writer writer) throws IOException {
        m29319native(str, f25234case, writer);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m29304const(String str) {
        return m29316import(str, true, true, f25236else);
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m29305continue(char c) {
        return m29327strictfp(c) || (c >= '0' && c <= '9');
    }

    public static String d(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == '\\' || cCharAt < ' ') {
                StringBuilder sb = new StringBuilder(length + 4);
                sb.append(str.substring(0, i));
                while (true) {
                    if (cCharAt == '\"') {
                        sb.append("\\\"");
                    } else if (cCharAt == '\\') {
                        sb.append("\\\\");
                    } else if (cCharAt >= ' ') {
                        sb.append(cCharAt);
                    } else if (cCharAt == '\n') {
                        sb.append("\\n");
                    } else if (cCharAt == '\r') {
                        sb.append("\\r");
                    } else if (cCharAt == '\f') {
                        sb.append("\\f");
                    } else if (cCharAt == '\b') {
                        sb.append("\\b");
                    } else if (cCharAt == '\t') {
                        sb.append("\\t");
                    } else {
                        sb.append("\\u00");
                        int i2 = cCharAt / 16;
                        sb.append((char) (i2 < 10 ? i2 + 48 : (i2 - 10) + 97));
                        int i3 = cCharAt & 15;
                        sb.append((char) (i3 < 10 ? i3 + 48 : (i3 - 10) + 97));
                    }
                    i++;
                    if (i >= length) {
                        return sb.toString();
                    }
                    cCharAt = str.charAt(i);
                }
            } else {
                i++;
            }
        }
        return str;
    }

    /* renamed from: default, reason: not valid java name */
    public static String m29306default(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00f8  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m29307do(String str) throws h3 {
        int i;
        int i2;
        int i3;
        int iIndexOf = str.indexOf(92);
        if (iIndexOf == -1) {
            return str;
        }
        int length = str.length() - 1;
        StringBuilder sb = new StringBuilder(length);
        int i4 = 0;
        do {
            sb.append(str.substring(i4, iIndexOf));
            if (iIndexOf >= length) {
                throw new h3("The last character of string literal is backslash", 0, 0);
            }
            char cCharAt = str.charAt(iIndexOf + 1);
            if (cCharAt == '\"') {
                sb.append(ca2.f674do);
            } else if (cCharAt != '\'') {
                if (cCharAt == '=') {
                    sb.append(cCharAt);
                } else if (cCharAt == '\\') {
                    sb.append('\\');
                } else if (cCharAt == 'l') {
                    sb.append(ca2.f687new);
                } else if (cCharAt == 'n') {
                    sb.append('\n');
                } else if (cCharAt == 'r') {
                    sb.append(wk.f7547for);
                } else if (cCharAt == 't') {
                    sb.append('\t');
                } else if (cCharAt == 'x') {
                    int i5 = iIndexOf + 2;
                    int i6 = i5 + 3;
                    if (length <= i6) {
                        i6 = length;
                    }
                    int i7 = i5;
                    int i8 = 0;
                    while (i7 <= i6) {
                        char cCharAt2 = str.charAt(i7);
                        if (cCharAt2 < '0' || cCharAt2 > '9') {
                            if (cCharAt2 >= 'a' && cCharAt2 <= 'f') {
                                i = i8 << 4;
                                i2 = cCharAt2 - 'a';
                            } else {
                                if (cCharAt2 < 'A' || cCharAt2 > 'F') {
                                    break;
                                }
                                i = i8 << 4;
                                i2 = cCharAt2 - 'A';
                            }
                            i3 = i2 + 10;
                        } else {
                            i = i8 << 4;
                            i3 = cCharAt2 - '0';
                        }
                        i8 = i + i3;
                        i7++;
                    }
                    if (i5 >= i7) {
                        throw new h3("Invalid \\x escape in a string literal", 0, 0);
                    }
                    sb.append((char) i8);
                    i4 = i7;
                } else if (cCharAt != '{') {
                    if (cCharAt == 'a') {
                        sb.append(ca2.f679for);
                    } else if (cCharAt == 'b') {
                        sb.append('\b');
                    } else if (cCharAt == 'f') {
                        sb.append('\f');
                    } else {
                        if (cCharAt != 'g') {
                            throw new h3("Invalid escape sequence (\\" + cCharAt + ") in a string literal", 0, 0);
                        }
                        sb.append(ca2.f702try);
                    }
                }
                iIndexOf = str.indexOf(92, i4);
            } else {
                sb.append('\'');
            }
            i4 = iIndexOf + 2;
            iIndexOf = str.indexOf(92, i4);
        } while (iIndexOf != -1);
        sb.append(str.substring(i4));
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String e(String str, boolean z) {
        char cCharAt;
        w41.check(ak.aB, str);
        int length = str.length();
        StringBuilder sb = null;
        int i = 0;
        while (i < length) {
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 <= '>' || cCharAt2 >= 127 || cCharAt2 == '\\') && cCharAt2 != ' ' && (cCharAt2 < 160 || cCharAt2 >= 8232)) {
                int i2 = 3;
                if (cCharAt2 <= 31) {
                    i2 = cCharAt2 == '\n' ? 110 : cCharAt2 == '\r' ? 114 : cCharAt2 == '\f' ? 102 : cCharAt2 == '\b' ? 98 : cCharAt2 == '\t' ? 116 : 1;
                    if (i2 == 0) {
                        if (sb == null) {
                            sb = new StringBuilder(length + 6);
                            sb.append(str.substring(0, i));
                        }
                        sb.append('\\');
                        if (i2 > 32) {
                            sb.append((char) i2);
                        } else if (i2 != 1) {
                            sb.append(cCharAt2);
                        } else if (z || cCharAt2 >= 256) {
                            sb.append('u');
                            sb.append(w((cCharAt2 >> '\f') & 15));
                            sb.append(w((cCharAt2 >> '\b') & 15));
                            sb.append(w((cCharAt2 >> 4) & 15));
                            sb.append(w(cCharAt2 & 15));
                        } else {
                            sb.append('x');
                            sb.append(w(cCharAt2 >> 4));
                            sb.append(w(cCharAt2 & 15));
                        }
                    } else if (sb != null) {
                        sb.append(cCharAt2);
                    }
                } else {
                    if (cCharAt2 != '\"') {
                        if (cCharAt2 == '\'') {
                            if (z) {
                                i2 = 0;
                            }
                        } else if (cCharAt2 != '\\' && (cCharAt2 != '/' || (i != 0 && str.charAt(i - 1) != '<'))) {
                            if (cCharAt2 == '>') {
                                if (i == 0 || (((cCharAt = str.charAt(i + (-1))) == ']' || cCharAt == '-') && (i == 1 || str.charAt(i + (-2)) == cCharAt))) {
                                    if (z) {
                                    }
                                }
                            } else {
                                if (cCharAt2 == '<') {
                                    if (i != length - 1) {
                                        char cCharAt3 = str.charAt(i + 1);
                                        i2 = (cCharAt3 == '!' || cCharAt3 == '?') ? 1 : 0;
                                    }
                                } else if ((cCharAt2 < 127 || cCharAt2 > 159) && cCharAt2 != 8232 && cCharAt2 != 8233) {
                                }
                            }
                        }
                    }
                    if (i2 == 0) {
                    }
                }
            }
            i++;
        }
        return sb == null ? str : sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static void m29308else(String str, Writer writer) throws IOException {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '{' || cCharAt == '}' || cCharAt == '\\') {
                int i3 = i2 - i;
                if (i3 != 0) {
                    writer.write(str, i, i3);
                }
                writer.write(92);
                i = i2;
            }
        }
        if (i < length) {
            writer.write(str, i, length - i);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private static String m29309extends(Object obj, Throwable th) {
        String strM29273class;
        try {
            strM29273class = th.toString();
        } catch (Throwable unused) {
            strM29273class = Cif.m29273class(th);
        }
        return "[" + Cif.m29273class(obj) + ".toString() failed: " + strM29273class + "]";
    }

    public static String f(String str) {
        return e(str, true);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m29310final(String str, Writer writer) throws IOException {
        m29319native(str, f25236else, writer);
    }

    /* renamed from: finally, reason: not valid java name */
    public static String m29311finally(String str) {
        char c = ca2.f674do;
        if (str.indexOf(34) != -1 && str.indexOf(39) == -1) {
            c = '\'';
        }
        return m29320new(str, c, true);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m29312for(String str, char c) {
        return m29320new(str, c, false);
    }

    public static String g(String str, int i) {
        return h(str, i, ' ');
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m29313goto(String str, String str2) throws UnsupportedEncodingException {
        return m29331this(str, str2, false);
    }

    public static String h(String str, int i, char c) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        int i2 = i - length;
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(c);
        }
        sb.append(str);
        return sb.toString();
    }

    public static String i(String str, int i, String str2) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        int i2 = i - length;
        int length2 = str2.length();
        if (length2 == 0) {
            throw new IllegalArgumentException("The \"filling\" argument can't be 0 length string.");
        }
        int i3 = i2 / length2;
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(str2);
        }
        int i5 = i2 % length2;
        for (int i6 = 0; i6 < i5; i6++) {
            sb.append(str2.charAt(i6));
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m29314if(String str) {
        return m29320new(str, (char) 0, false);
    }

    @Deprecated
    /* renamed from: implements, reason: not valid java name */
    public static boolean m29315implements(String str) {
        return Cthrow.m28809do(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0098  */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m29316import(String str, boolean z, boolean z2, char[] cArr) {
        int length;
        int length2 = str.length();
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length2; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt != '\"') {
                if (cCharAt == '<') {
                    length = f25239if.length;
                } else if (cCharAt != '>') {
                    if (cCharAt == '&') {
                        length = f25240new.length;
                    } else if (cCharAt == '\'' && cArr != null) {
                        length = cArr.length;
                    }
                } else if (z || k(str, i4)) {
                    length = f25237for.length;
                }
                i2 += length - 1;
                if (i == -1) {
                    i = i4;
                }
                i3 = i4;
            } else if (z2) {
                length = f25242try.length;
                i2 += length - 1;
                if (i == -1) {
                }
                i3 = i4;
            }
        }
        if (i == -1) {
            return str;
        }
        char[] cArr2 = new char[i2 + length2];
        if (i != 0) {
            str.getChars(0, i, cArr2, 0);
        }
        int iS = i;
        while (i <= i3) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 != '\"') {
                if (cCharAt2 == '<') {
                    iS = s(f25239if, cArr2, iS);
                } else if (cCharAt2 != '>') {
                    if (cCharAt2 == '&') {
                        iS = s(f25240new, cArr2, iS);
                    } else if (cCharAt2 == '\'' && cArr != null) {
                        iS = s(cArr, cArr2, iS);
                    } else {
                        cArr2[iS] = cCharAt2;
                        iS++;
                    }
                } else if (z || k(str, i)) {
                    iS = s(f25237for, cArr2, iS);
                }
            } else if (z2) {
                iS = s(f25242try, cArr2, iS);
            }
            i++;
        }
        if (i3 != length2 - 1) {
            str.getChars(i3 + 1, length2, cArr2, iS);
        }
        return String.valueOf(cArr2);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static String m29317instanceof(Object obj) {
        return m29330synchronized(obj != null ? obj.toString() : null);
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m29318interface(char[] cArr) {
        return m29334transient(cArr, 0, cArr.length);
    }

    public static boolean j(String str, String str2, String str3, d0 d0Var) {
        return Cthrow.m28810if(str, str2, str3, d0Var);
    }

    private static boolean k(String str, int i) {
        if (i == 0) {
            return true;
        }
        if (str.charAt(i - 1) != ']') {
            return false;
        }
        return i == 1 || str.charAt(i + (-2)) == ']';
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a3, code lost:
    
        throw new java.text.ParseException("Expecting \":\" here, but found " + m29330synchronized(java.lang.String.valueOf(r2)) + " at position " + r4 + ".", r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0117 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Map l(String str, String str2) throws ParseException {
        String str3;
        HashMap map = new HashMap();
        int length = str.length();
        char cCharAt = ' ';
        int i = 0;
        while (true) {
            if (i < length) {
                cCharAt = str.charAt(i);
                if (Character.isWhitespace(cCharAt)) {
                    i++;
                }
            }
            if (i == length) {
                return map;
            }
            int i2 = i;
            while (i2 < length) {
                cCharAt = str.charAt(i2);
                if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '_') {
                    break;
                }
                i2++;
            }
            if (i == i2) {
                throw new ParseException("Expecting letter, digit or \"_\" here, (the first character of the key) but found " + m29330synchronized(String.valueOf(cCharAt)) + " at position " + i2 + ".", i2);
            }
            String strSubstring = str.substring(i, i2);
            while (i2 < length) {
                cCharAt = str.charAt(i2);
                if (!Character.isWhitespace(cCharAt)) {
                    break;
                }
                i2++;
            }
            if (i2 == length) {
                if (str2 == null) {
                    throw new ParseException("Expecting \":\", but reached the end of the string  at position " + i2 + ".", i2);
                }
            } else if (cCharAt == ':') {
                do {
                    i2++;
                    if (i2 >= length) {
                        break;
                    }
                    cCharAt = str.charAt(i2);
                } while (Character.isWhitespace(cCharAt));
                if (i2 == length) {
                    throw new ParseException("Expecting the value of the key here, but reached the end of the string  at position " + i2 + ".", i2);
                }
                int i3 = i2;
                while (i3 < length) {
                    cCharAt = str.charAt(i3);
                    if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '_') {
                        break;
                    }
                    i3++;
                }
                if (i2 == i3) {
                    throw new ParseException("Expecting letter, digit or \"_\" here, (the first character of the value) but found " + m29330synchronized(String.valueOf(cCharAt)) + " at position " + i3 + ".", i3);
                }
                String strSubstring2 = str.substring(i2, i3);
                while (i3 < length) {
                    cCharAt = str.charAt(i3);
                    if (!Character.isWhitespace(cCharAt)) {
                        break;
                    }
                    i3++;
                }
                if (i3 < length) {
                    if (cCharAt != ',') {
                        throw new ParseException("Excpecting \",\" or the end of the string here, but found " + m29330synchronized(String.valueOf(cCharAt)) + " at position " + i3 + ".", i3);
                    }
                    i3++;
                }
                str3 = strSubstring2;
                i2 = i3;
                if (map.put(strSubstring, str3) == null) {
                    throw new ParseException("Dublicated key: " + m29330synchronized(strSubstring), i);
                }
                i = i2;
            } else {
                if (str2 == null || cCharAt != ',') {
                    break;
                }
                i2++;
            }
            str3 = str2;
            if (map.put(strSubstring, str3) == null) {
            }
        }
    }

    public static String m(String str, String str2, String str3) {
        return n(str, str2, str3, false, false);
    }

    public static String n(String str, String str2, String str3, boolean z, boolean z2) {
        int length = str2.length();
        int i = 0;
        if (length == 0) {
            int length2 = str3.length();
            if (length2 == 0) {
                return str;
            }
            if (z2) {
                return str3 + str;
            }
            int length3 = str.length();
            StringBuilder sb = new StringBuilder(((length3 + 1) * length2) + length3);
            sb.append(str3);
            while (i < length3) {
                sb.append(str.charAt(i));
                sb.append(str3);
                i++;
            }
            return sb.toString();
        }
        if (z) {
            str2 = str2.toLowerCase();
        }
        String lowerCase = z ? str.toLowerCase() : str;
        int iIndexOf = lowerCase.indexOf(str2);
        if (iIndexOf == -1) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + (Math.max(str3.length() - length, 0) * 3));
        do {
            sb2.append(str.substring(i, iIndexOf));
            sb2.append(str3);
            i = iIndexOf + length;
            iIndexOf = lowerCase.indexOf(str2, i);
            if (iIndexOf == -1) {
                break;
            }
        } while (!z2);
        sb2.append(str.substring(i));
        return sb2.toString();
    }

    /* renamed from: native, reason: not valid java name */
    private static void m29319native(String str, char[] cArr, Writer writer) throws IOException {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '<' || cCharAt == '>' || cCharAt == '&' || cCharAt == '\"' || cCharAt == '\'') {
                int i3 = i2 - i;
                if (i3 != 0) {
                    writer.write(str, i, i3);
                }
                i = i2 + 1;
                if (cCharAt == '\"') {
                    writer.write(f25242try);
                } else if (cCharAt == '&') {
                    writer.write(f25240new);
                } else if (cCharAt == '<') {
                    writer.write(f25239if);
                } else if (cCharAt != '>') {
                    writer.write(cArr);
                } else {
                    writer.write(f25237for);
                }
            }
        }
        if (i < length) {
            writer.write(str, i, length - i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m29320new(String str, char c, boolean z) {
        int length = str.length();
        char c2 = '\'';
        if (c == 0) {
            c2 = 0;
        } else if (c != '\"') {
            if (c != '\'') {
                throw new IllegalArgumentException("Unsupported quotation character: " + c);
            }
            c2 = ca2.f674do;
        }
        int length2 = f25235do.length;
        StringBuilder sb = null;
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            char c3 = MessageFormatter.DELIM_START;
            if (cCharAt == '=') {
                c3 = (i <= 0 || str.charAt(i + (-1)) != '[') ? (char) 0 : hy1.f2563new;
            } else if (cCharAt < length2) {
                c3 = f25235do[cCharAt];
            } else if (cCharAt != '{' || i <= 0 || !m29336volatile(str.charAt(i - 1))) {
            }
            if (c3 != 0 && c3 != c2) {
                if (sb == null) {
                    sb = new StringBuilder(str.length() + 4 + (z ? 2 : 0));
                    if (z) {
                        sb.append(c);
                    }
                    sb.append(str.substring(0, i));
                }
                if (c3 == 1) {
                    sb.append("\\x00");
                    int i2 = (cCharAt >> 4) & 15;
                    char c4 = (char) (cCharAt & 15);
                    sb.append((char) (i2 < 10 ? i2 + 48 : (i2 - 10) + 65));
                    sb.append((char) (c4 < '\n' ? c4 + '0' : (c4 - '\n') + 65));
                } else {
                    sb.append('\\');
                    sb.append(c3);
                }
            } else if (sb != null) {
                sb.append(cCharAt);
            }
            i++;
        }
        if (sb != null) {
            if (z) {
                sb.append(c);
            }
            return sb.toString();
        }
        if (!z) {
            return str;
        }
        return c + str + c;
    }

    public static String o(String str, int i) {
        return p(str, i, ' ');
    }

    public static String p(String str, int i, char c) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        int i2 = i - length;
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(c);
        }
        return sb.toString();
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m29321package(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1, str.length() - 1);
        }
        if (str.equalsIgnoreCase("n") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("f") || str.equalsIgnoreCase(b2.f23510do)) {
            return false;
        }
        if (str.equalsIgnoreCase("y") || str.equalsIgnoreCase("yes") || str.equalsIgnoreCase(ak.aH) || str.equalsIgnoreCase(b2.f23511if)) {
            return true;
        }
        throw new IllegalArgumentException("Illegal boolean value: " + str);
    }

    /* renamed from: private, reason: not valid java name */
    public static Pattern m29322private(String str) {
        return m29299abstract(str, false);
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m29323protected(char[] cArr, int i) {
        return m29334transient(cArr, i, cArr.length);
    }

    /* renamed from: public, reason: not valid java name */
    private static void m29324public(StringBuilder sb, String str, int i, int i2) {
        if (i == i2) {
            return;
        }
        sb.append(Pattern.quote(B(str.substring(i, i2))));
    }

    public static String q(String str, int i, String str2) {
        int length = str.length();
        if (i <= length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        int i2 = i - length;
        int length2 = str2.length();
        if (length2 == 0) {
            throw new IllegalArgumentException("The \"filling\" argument can't be 0 length string.");
        }
        int i3 = length % length2;
        int i4 = length2 - i3 <= i2 ? length2 : i3 + i2;
        for (int i5 = i3; i5 < i4; i5++) {
            sb.append(str2.charAt(i5));
        }
        int i6 = i2 - (i4 - i3);
        int i7 = i6 / length2;
        for (int i8 = 0; i8 < i7; i8++) {
            sb.append(str2);
        }
        int i9 = i6 % length2;
        for (int i10 = 0; i10 < i9; i10++) {
            sb.append(str2.charAt(i10));
        }
        return sb.toString();
    }

    private static boolean r(char c, boolean z) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || ((c >= '0' && c <= '9') || c == '_' || c == '-' || c == '.' || c == '!' || c == '~' || ((c >= '\'' && c <= '*') || (z && c == '/')));
    }

    /* renamed from: return, reason: not valid java name */
    public static String m29325return(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\r\n", true);
        StringBuilder sb = new StringBuilder(str.length());
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            sb.append(strNextToken.substring(0, 1).toUpperCase());
            sb.append(strNextToken.substring(1).toLowerCase());
        }
        return sb.toString();
    }

    private static int s(char[] cArr, char[] cArr2, int i) {
        int length = cArr.length;
        int i2 = 0;
        while (i2 < length) {
            cArr2[i] = cArr[i2];
            i2++;
            i++;
        }
        return i;
    }

    /* renamed from: static, reason: not valid java name */
    public static String m29326static(String str) {
        return str.endsWith("\r\n") ? str.substring(0, str.length() - 2) : (str.endsWith(Cclass.f28656new) || str.endsWith("\n")) ? str.substring(0, str.length() - 1) : str;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m29327strictfp(char c) {
        return c < 170 ? (c >= 'a' && c <= 'z') || (c >= '@' && c <= 'Z') || c == '$' || c == '_' : c < 43000 ? c < 11631 ? c < 8488 ? c < 8336 ? c < 216 ? c < 186 ? c == 170 || c == 181 : c == 186 || (c >= 192 && c <= 214) : c < 8305 ? (c >= 216 && c <= 246) || (c >= 248 && c <= 8191) : c == 8305 || c == 8319 : c < 8469 ? c < 8455 ? (c >= 8336 && c <= 8348) || c == 8450 : c == 8455 || (c >= 8458 && c <= 8467) : c < 8484 ? c == 8469 || (c >= 8473 && c <= 8477) : c == 8484 || c == 8486 : c < 11312 ? c < 8517 ? c < 8495 ? c == 8488 || (c >= 8490 && c <= 8493) : (c >= 8495 && c <= 8505) || (c >= 8508 && c <= 8511) : c < 8579 ? (c >= 8517 && c <= 8521) || c == 8526 : (c >= 8579 && c <= 8580) || (c >= 11264 && c <= 11310) : c < 11520 ? c < 11499 ? (c >= 11312 && c <= 11358) || (c >= 11360 && c <= 11492) : (c >= 11499 && c <= 11502) || (c >= 11506 && c <= 11507) : c < 11565 ? (c >= 11520 && c <= 11557) || c == 11559 : c == 11565 || (c >= 11568 && c <= 11623) : c < 12784 ? c < 11728 ? c < 11696 ? c < 11680 ? c == 11631 || (c >= 11648 && c <= 11670) : (c >= 11680 && c <= 11686) || (c >= 11688 && c <= 11694) : c < 11712 ? (c >= 11696 && c <= 11702) || (c >= 11704 && c <= 11710) : (c >= 11712 && c <= 11718) || (c >= 11720 && c <= 11726) : c < 12337 ? c < 11823 ? (c >= 11728 && c <= 11734) || (c >= 11736 && c <= 11742) : c == 11823 || (c >= 12293 && c <= 12294) : c < 12352 ? (c >= 12337 && c <= 12341) || (c >= 12347 && c <= 12348) : (c >= 12352 && c <= 12687) || (c >= 12704 && c <= 12730) : c < 42623 ? c < 42192 ? c < 13312 ? (c >= 12784 && c <= 12799) || (c >= 13056 && c <= 13183) : (c >= 13312 && c <= 19893) || (c >= 19968 && c <= 42124) : c < 42512 ? (c >= 42192 && c <= 42237) || (c >= 42240 && c <= 42508) : (c >= 42512 && c <= 42539) || (c >= 42560 && c <= 42606) : c < 42891 ? c < 42775 ? (c >= 42623 && c <= 42647) || (c >= 42656 && c <= 42725) : (c >= 42775 && c <= 42783) || (c >= 42786 && c <= 42888) : c < 42912 ? (c >= 42891 && c <= 42894) || (c >= 42896 && c <= 42899) : c >= 42912 && c <= 42922 : c < 43808 ? c < 43588 ? c < 43259 ? c < 43072 ? c < 43015 ? (c >= 43000 && c <= 43009) || (c >= 43011 && c <= 43013) : (c >= 43015 && c <= 43018) || (c >= 43020 && c <= 43042) : c < 43216 ? (c >= 43072 && c <= 43123) || (c >= 43138 && c <= 43187) : (c >= 43216 && c <= 43225) || (c >= 43250 && c <= 43255) : c < 43396 ? c < 43312 ? c == 43259 || (c >= 43264 && c <= 43301) : (c >= 43312 && c <= 43334) || (c >= 43360 && c <= 43388) : c < 43520 ? (c >= 43396 && c <= 43442) || (c >= 43471 && c <= 43481) : (c >= 43520 && c <= 43560) || (c >= 43584 && c <= 43586) : c < 43712 ? c < 43648 ? c < 43616 ? (c >= 43588 && c <= 43595) || (c >= 43600 && c <= 43609) : (c >= 43616 && c <= 43638) || c == 43642 : c < 43701 ? (c >= 43648 && c <= 43695) || c == 43697 : (c >= 43701 && c <= 43702) || (c >= 43705 && c <= 43709) : c < 43762 ? c < 43739 ? c == 43712 || c == 43714 : (c >= 43739 && c <= 43741) || (c >= 43744 && c <= 43754) : c < 43785 ? (c >= 43762 && c <= 43764) || (c >= 43777 && c <= 43782) : (c >= 43785 && c <= 43790) || (c >= 43793 && c <= 43798) : c < 64326 ? c < 64275 ? c < 44032 ? c < 43968 ? (c >= 43808 && c <= 43814) || (c >= 43816 && c <= 43822) : (c >= 43968 && c <= 44002) || (c >= 44016 && c <= 44025) : c < 55243 ? (c >= 44032 && c <= 55203) || (c >= 55216 && c <= 55238) : (c >= 55243 && c <= 55291) || (c >= 63744 && c <= 64262) : c < 64312 ? c < 64287 ? (c >= 64275 && c <= 64279) || c == 64285 : (c >= 64287 && c <= 64296) || (c >= 64298 && c <= 64310) : c < 64320 ? (c >= 64312 && c <= 64316) || c == 64318 : (c >= 64320 && c <= 64321) || (c >= 64323 && c <= 64324) : c < 65313 ? c < 65008 ? c < 64848 ? (c >= 64326 && c <= 64433) || (c >= 64467 && c <= 64829) : (c >= 64848 && c <= 64911) || (c >= 64914 && c <= 64967) : c < 65142 ? (c >= 65008 && c <= 65019) || (c >= 65136 && c <= 65140) : (c >= 65142 && c <= 65276) || (c >= 65296 && c <= 65305) : c < 65482 ? c < 65382 ? (c >= 65313 && c <= 65338) || (c >= 65345 && c <= 65370) : (c >= 65382 && c <= 65470) || (c >= 65474 && c <= 65479) : c < 65498 ? (c >= 65482 && c <= 65487) || (c >= 65490 && c <= 65495) : c >= 65498 && c <= 65500;
    }

    /* renamed from: super, reason: not valid java name */
    public static String m29328super(String str) {
        return m29316import(str, true, true, null);
    }

    /* renamed from: switch, reason: not valid java name */
    private static char[] m29329switch() {
        char[] cArr = new char[93];
        for (int i = 0; i < 32; i++) {
            cArr[i] = 1;
        }
        cArr[92] = '\\';
        cArr[39] = '\'';
        cArr[34] = ca2.f674do;
        cArr[60] = 'l';
        cArr[62] = 'g';
        cArr[38] = 'a';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[12] = 'f';
        cArr[13] = 'r';
        return cArr;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static String m29330synchronized(String str) {
        if (str == null) {
            return "null";
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 4);
        sb.append(ca2.f674do);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt == '\\') {
                sb.append("\\\\");
            } else if (cCharAt >= ' ') {
                sb.append(cCharAt);
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\f') {
                sb.append("\\f");
            } else if (cCharAt == '\b') {
                sb.append("\\b");
            } else if (cCharAt == '\t') {
                sb.append("\\t");
            } else {
                sb.append("\\u00");
                sb.append(w(cCharAt / 16));
                sb.append(w(cCharAt & 15));
            }
        }
        sb.append(ca2.f674do);
        return sb.toString();
    }

    public static String[] t(String str, char c) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            int iIndexOf = str.indexOf(c, i2);
            if (iIndexOf == -1) {
                break;
            }
            i3++;
            i2 = iIndexOf + 1;
        }
        String[] strArr = new String[i3];
        int i4 = 0;
        while (i <= length) {
            int iIndexOf2 = str.indexOf(c, i);
            if (iIndexOf2 == -1) {
                iIndexOf2 = length;
            }
            strArr[i4] = str.substring(i, iIndexOf2);
            i = iIndexOf2 + 1;
            i4++;
        }
        return strArr;
    }

    /* renamed from: this, reason: not valid java name */
    private static String m29331this(String str, String str2, boolean z) throws UnsupportedEncodingException {
        int length = str.length();
        int i = 0;
        while (i < length && r(str.charAt(i), z)) {
            i++;
        }
        if (i == length) {
            return str;
        }
        StringBuilder sb = new StringBuilder((length / 3) + length + 2);
        sb.append(str.substring(0, i));
        int i2 = i + 1;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (r(cCharAt, z)) {
                if (i != -1) {
                    for (byte b : str.substring(i, i2).getBytes(str2)) {
                        sb.append('%');
                        int i3 = b & 15;
                        int i4 = (b >> 4) & 15;
                        sb.append((char) (i4 < 10 ? i4 + 48 : (i4 - 10) + 65));
                        sb.append((char) (i3 < 10 ? i3 + 48 : (i3 - 10) + 65));
                    }
                    i = -1;
                }
                sb.append(cCharAt);
            } else if (i == -1) {
                i = i2;
            }
            i2++;
        }
        if (i != -1) {
            for (byte b2 : str.substring(i, i2).getBytes(str2)) {
                sb.append('%');
                int i5 = b2 & 15;
                int i6 = (b2 >> 4) & 15;
                sb.append((char) (i6 < 10 ? i6 + 48 : (i6 - 10) + 65));
                sb.append((char) (i5 < 10 ? i5 + 48 : (i5 - 10) + 65));
            }
        }
        return sb.toString();
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m29332throw(String str) {
        return m29316import(str, false, false, null);
    }

    /* renamed from: throws, reason: not valid java name */
    public static Locale m29333throws(String str) {
        if (str == null) {
            return null;
        }
        Locale.getDefault();
        if (str.length() > 0 && str.charAt(0) == '\"') {
            str = str.substring(1, str.length() - 1);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",_ ");
        String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "";
        String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "";
        return !stringTokenizer.hasMoreTokens() ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, stringTokenizer.nextToken());
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m29334transient(char[] cArr, int i, int i2) {
        while (i < i2) {
            if (cArr[i] > ' ') {
                return false;
            }
            i++;
        }
        return true;
    }

    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public static String m29335try(String str) {
        return m29328super(str);
    }

    public static String[] u(String str, String str2, boolean z) {
        int length = str2.length();
        String lowerCase = z ? str.toLowerCase() : str;
        int length2 = str.length();
        int i = 0;
        if (length == 0) {
            String[] strArr = new String[length2];
            while (i < length2) {
                strArr[i] = String.valueOf(str.charAt(i));
                i++;
            }
            return strArr;
        }
        if (z) {
            str2 = str2.toLowerCase();
        }
        int i2 = 1;
        int i3 = 0;
        while (true) {
            int iIndexOf = lowerCase.indexOf(str2, i3);
            if (iIndexOf == -1) {
                break;
            }
            i2++;
            i3 = iIndexOf + length;
        }
        String[] strArr2 = new String[i2];
        int i4 = 0;
        while (i <= length2) {
            int iIndexOf2 = lowerCase.indexOf(str2, i);
            if (iIndexOf2 == -1) {
                iIndexOf2 = length2;
            }
            strArr2[i4] = str.substring(i, iIndexOf2);
            i = iIndexOf2 + length;
            i4++;
        }
        return strArr2;
    }

    private static String v(int i, char c) {
        int i2 = 1;
        if (i < 1) {
            throw new IllegalArgumentException("Can't convert 0 or negative numbers to latin-number: " + i);
        }
        int i3 = 1;
        while (true) {
            int i4 = i2 * 26;
            int i5 = i3 + i4;
            if (i5 > i) {
                break;
            }
            i2 = i4;
            i3 = i5;
        }
        StringBuilder sb = new StringBuilder();
        while (i2 != 0) {
            int i6 = (i - i3) / i2;
            sb.append((char) (c + i6));
            i3 += i6 * i2;
            i2 /= 26;
        }
        return sb.toString();
    }

    /* renamed from: volatile, reason: not valid java name */
    private static boolean m29336volatile(char c) {
        return c == '$' || c == '#';
    }

    private static char w(int i) {
        return (char) (i < 10 ? i + 48 : (i - 10) + 65);
    }

    /* renamed from: while, reason: not valid java name */
    public static String m29337while(String str) {
        return m29316import(str, false, true, null);
    }

    public static String x(int i) {
        return v(i, 'a');
    }

    public static String y(int i) {
        return v(i, 'A');
    }

    public static char[] z(char[] cArr) {
        if (cArr.length == 0) {
            return cArr;
        }
        int length = cArr.length;
        int i = 0;
        while (i < length && cArr[i] <= ' ') {
            i++;
        }
        while (i < length && cArr[length - 1] <= ' ') {
            length--;
        }
        if (i == 0 && length == cArr.length) {
            return cArr;
        }
        if (i == length) {
            return vm.f7295for;
        }
        int i2 = length - i;
        char[] cArr2 = new char[i2];
        System.arraycopy(cArr, i, cArr2, 0, i2);
        return cArr2;
    }
}
