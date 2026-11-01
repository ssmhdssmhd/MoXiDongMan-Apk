package com.google.common.escape;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.o8;

@ki0
@o8
/* renamed from: com.google.common.escape.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo extends Cfor {

    /* renamed from: if, reason: not valid java name */
    private static final int f14913if = 2;

    /* renamed from: try, reason: not valid java name */
    private static char[] m16595try(char[] cArr, int i, int i2) {
        if (i2 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    /* renamed from: for */
    public abstract char[] mo3714for(char c);

    @Override // com.google.common.escape.Cfor
    /* renamed from: if */
    public String mo852if(String str) {
        af1.m205continue(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (mo3714for(str.charAt(i)) != null) {
                return m16596new(str, i);
            }
        }
        return str;
    }

    /* renamed from: new, reason: not valid java name */
    public final String m16596new(String str, int i) {
        int length = str.length();
        char[] cArrM16615do = Ctry.m16615do();
        int length2 = cArrM16615do.length;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            char[] cArrMo3714for = mo3714for(str.charAt(i));
            if (cArrMo3714for != null) {
                int length3 = cArrMo3714for.length;
                int i4 = i - i2;
                int i5 = i3 + i4;
                int i6 = i5 + length3;
                if (length2 < i6) {
                    length2 = ((length - i) * 2) + i6;
                    cArrM16615do = m16595try(cArrM16615do, i3, length2);
                }
                if (i4 > 0) {
                    str.getChars(i2, i, cArrM16615do, i3);
                    i3 = i5;
                }
                if (length3 > 0) {
                    System.arraycopy(cArrMo3714for, 0, cArrM16615do, i3, length3);
                    i3 += length3;
                }
                i2 = i + 1;
            }
            i++;
        }
        int i7 = length - i2;
        if (i7 > 0) {
            int i8 = i7 + i3;
            if (length2 < i8) {
                cArrM16615do = m16595try(cArrM16615do, i3, i8);
            }
            str.getChars(i2, length, cArrM16615do, i3);
            i3 = i8;
        }
        return new String(cArrM16615do, 0, i3);
    }
}
