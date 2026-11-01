package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.util.logging.Level;
import java.util.logging.Logger;

@ki0
/* renamed from: com.google.common.base.default, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdefault {
    private Cdefault() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m15033break(String str, int i) {
        af1.m205continue(str);
        if (i <= 1) {
            af1.m202catch(i >= 0, "invalid count: %s", i);
            return i == 0 ? "" : str;
        }
        int length = str.length();
        long j = length * i;
        int i2 = (int) j;
        if (i2 != j) {
            throw new ArrayIndexOutOfBoundsException("Required array size too large: " + j);
        }
        char[] cArr = new char[i2];
        str.getChars(0, length, cArr, 0);
        while (true) {
            int i3 = i2 - length;
            if (length >= i3) {
                System.arraycopy(cArr, 0, cArr, length, i3);
                return new String(cArr);
            }
            System.arraycopy(cArr, 0, cArr, length, length);
            length <<= 1;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static String m15034case(@b51 Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception e) {
            String str = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
            Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str, (Throwable) e);
            return "<" + str + " threw " + e.getClass().getName() + ">";
        }
    }

    @af2
    /* renamed from: catch, reason: not valid java name */
    public static boolean m15035catch(CharSequence charSequence, int i) {
        return i >= 0 && i <= charSequence.length() + (-2) && Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1));
    }

    /* renamed from: do, reason: not valid java name */
    public static String m15036do(CharSequence charSequence, CharSequence charSequence2) {
        af1.m205continue(charSequence);
        af1.m205continue(charSequence2);
        int iMin = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < iMin && charSequence.charAt(i) == charSequence2.charAt(i)) {
            i++;
        }
        int i2 = i - 1;
        if (m15035catch(charSequence, i2) || m15035catch(charSequence2, i2)) {
            i--;
        }
        return charSequence.subSequence(0, i).toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static String m15037else(@b51 String str) {
        return Cnative.m15116goto(str);
    }

    @b51
    /* renamed from: for, reason: not valid java name */
    public static String m15038for(@b51 String str) {
        return Cnative.m15115for(str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m15039goto(String str, int i, char c) {
        af1.m205continue(str);
        if (str.length() >= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        for (int length = str.length(); length < i; length++) {
            sb.append(c);
        }
        return sb.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m15040if(CharSequence charSequence, CharSequence charSequence2) {
        af1.m205continue(charSequence);
        af1.m205continue(charSequence2);
        int iMin = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < iMin && charSequence.charAt((charSequence.length() - i) - 1) == charSequence2.charAt((charSequence2.length() - i) - 1)) {
            i++;
        }
        if (m15035catch(charSequence, (charSequence.length() - i) - 1) || m15035catch(charSequence2, (charSequence2.length() - i) - 1)) {
            i--;
        }
        return charSequence.subSequence(charSequence.length() - i, charSequence.length()).toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m15041new(@b51 String str) {
        return Cnative.m15111catch(str);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m15042this(String str, int i, char c) {
        af1.m205continue(str);
        if (str.length() >= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        for (int length = str.length(); length < i; length++) {
            sb.append(c);
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public static String m15043try(@b51 String str, @b51 Object... objArr) {
        int iIndexOf;
        String strValueOf = String.valueOf(str);
        int i = 0;
        if (objArr == null) {
            objArr = new Object[]{"(Object[])null"};
        } else {
            for (int i2 = 0; i2 < objArr.length; i2++) {
                objArr[i2] = m15034case(objArr[i2]);
            }
        }
        StringBuilder sb = new StringBuilder(strValueOf.length() + (objArr.length * 16));
        int i3 = 0;
        while (i < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i3)) != -1) {
            sb.append((CharSequence) strValueOf, i3, iIndexOf);
            sb.append(objArr[i]);
            i3 = iIndexOf + 2;
            i++;
        }
        sb.append((CharSequence) strValueOf, i3, strValueOf.length());
        if (i < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
