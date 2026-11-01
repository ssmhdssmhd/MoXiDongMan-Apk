package com.jayway.jsonpath.internal;

import com.jayway.jsonpath.JsonPathException;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class Utils {
    private Utils() {
    }

    public static void closeQuietly(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String concat(CharSequence... charSequenceArr) {
        if (charSequenceArr.length == 0) {
            return "";
        }
        if (charSequenceArr.length == 1) {
            return charSequenceArr[0].toString();
        }
        int i = 0;
        int i2 = -1;
        for (int i3 = 0; i3 < charSequenceArr.length; i3++) {
            int length = charSequenceArr[i3].length();
            i += length;
            if (i2 != -2 && length > 0) {
                i2 = i2 == -1 ? i3 : -2;
            }
        }
        if (i == 0) {
            return "";
        }
        if (i2 > 0) {
            return charSequenceArr[i2].toString();
        }
        StringBuilder sb = new StringBuilder(i);
        for (CharSequence charSequence : charSequenceArr) {
            sb.append(charSequence);
        }
        return sb.toString();
    }

    public static String escape(String str, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringWriter stringWriter = new StringWriter(length * 2);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt > 4095) {
                stringWriter.write("\\u" + hex(cCharAt));
            } else if (cCharAt > 255) {
                stringWriter.write("\\u0" + hex(cCharAt));
            } else if (cCharAt > 127) {
                stringWriter.write("\\u00" + hex(cCharAt));
            } else if (cCharAt < ' ') {
                switch (cCharAt) {
                    case '\b':
                        stringWriter.write(92);
                        stringWriter.write(98);
                        break;
                    case '\t':
                        stringWriter.write(92);
                        stringWriter.write(116);
                        break;
                    case '\n':
                        stringWriter.write(92);
                        stringWriter.write(110);
                        break;
                    case 11:
                    default:
                        if (cCharAt > 15) {
                            stringWriter.write("\\u00" + hex(cCharAt));
                            break;
                        } else {
                            stringWriter.write("\\u000" + hex(cCharAt));
                            break;
                        }
                    case '\f':
                        stringWriter.write(92);
                        stringWriter.write(102);
                        break;
                    case '\r':
                        stringWriter.write(92);
                        stringWriter.write(114);
                        break;
                }
            } else if (cCharAt == '\"') {
                stringWriter.write(92);
                stringWriter.write(34);
            } else if (cCharAt == '\'') {
                if (z) {
                    stringWriter.write(92);
                }
                stringWriter.write(39);
            } else if (cCharAt == '/') {
                stringWriter.write(92);
                stringWriter.write(47);
            } else if (cCharAt != '\\') {
                stringWriter.write(cCharAt);
            } else {
                stringWriter.write(92);
                stringWriter.write(92);
            }
        }
        return stringWriter.toString();
    }

    public static String hex(char c) {
        return Integer.toHexString(c).toUpperCase();
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i) {
        return charSequence.toString().indexOf(charSequence2.toString(), i);
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static void isTrue(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static String join(String str, String str2, Iterable<? extends Object> iterable) {
        Iterator<? extends Object> it = iterable.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(it.next());
        sb.append(str2);
        while (it.hasNext()) {
            sb.append(str);
            sb.append(str2);
            sb.append(it.next());
            sb.append(str2);
        }
        return sb.toString();
    }

    public static <T extends CharSequence> T notEmpty(T t, String str, Object... objArr) {
        if (t == null) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        if (t.length() != 0) {
            return t;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static <T> T notNull(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static void onlyOneIsTrue(String str, boolean... zArr) {
        if (!onlyOneIsTrueNonThrow(zArr)) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean onlyOneIsTrueNonThrow(boolean... zArr) {
        int i = 0;
        for (boolean z : zArr) {
            if (z && (i = i + 1) > 1) {
                return false;
            }
        }
        return 1 == i;
    }

    public static String toString(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static String unescape(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringWriter stringWriter = new StringWriter(length);
        StringBuffer stringBuffer = new StringBuffer(4);
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (z2) {
                stringBuffer.append(cCharAt);
                if (stringBuffer.length() == 4) {
                    try {
                        stringWriter.write((char) Integer.parseInt(stringBuffer.toString(), 16));
                        stringBuffer.setLength(0);
                        z = false;
                        z2 = false;
                    } catch (NumberFormatException e) {
                        throw new JsonPathException("Unable to parse unicode value: " + ((Object) stringBuffer), e);
                    }
                } else {
                    continue;
                }
            } else if (z) {
                if (cCharAt == '\"') {
                    stringWriter.write(34);
                } else if (cCharAt == '\'') {
                    stringWriter.write(39);
                } else if (cCharAt == '\\') {
                    stringWriter.write(92);
                } else if (cCharAt == 'b') {
                    stringWriter.write(8);
                } else if (cCharAt == 'f') {
                    stringWriter.write(12);
                } else if (cCharAt == 'n') {
                    stringWriter.write(10);
                } else if (cCharAt == 'r') {
                    stringWriter.write(13);
                } else if (cCharAt == 't') {
                    stringWriter.write(9);
                } else if (cCharAt != 'u') {
                    stringWriter.write(cCharAt);
                } else {
                    z = false;
                    z2 = true;
                }
                z = false;
            } else if (cCharAt == '\\') {
                z = true;
            } else {
                stringWriter.write(cCharAt);
            }
        }
        if (z) {
            stringWriter.write(92);
        }
        return stringWriter.toString();
    }

    public static String join(String str, Iterable<? extends Object> iterable) {
        return join(str, "", iterable);
    }
}
