package com.google.common.escape;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.o8;

@ki0
@o8
/* renamed from: com.google.common.escape.case, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ccase extends Cfor {

    /* renamed from: if, reason: not valid java name */
    private static final int f14912if = 32;

    /* renamed from: case, reason: not valid java name */
    private static char[] m16592case(char[] cArr, int i, int i2) {
        if (i2 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m16593for(CharSequence charSequence, int i, int i2) {
        af1.m205continue(charSequence);
        if (i >= i2) {
            throw new IndexOutOfBoundsException("Index exceeds specified range");
        }
        int i3 = i + 1;
        char cCharAt = charSequence.charAt(i);
        if (cCharAt < 55296 || cCharAt > 57343) {
            return cCharAt;
        }
        if (cCharAt > 56319) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unexpected low surrogate character '");
            sb.append(cCharAt);
            sb.append("' with value ");
            sb.append((int) cCharAt);
            sb.append(" at index ");
            sb.append(i3 - 1);
            sb.append(" in '");
            sb.append((Object) charSequence);
            sb.append("'");
            throw new IllegalArgumentException(sb.toString());
        }
        if (i3 == i2) {
            return -cCharAt;
        }
        char cCharAt2 = charSequence.charAt(i3);
        if (Character.isLowSurrogate(cCharAt2)) {
            return Character.toCodePoint(cCharAt, cCharAt2);
        }
        throw new IllegalArgumentException("Expected low surrogate but got char '" + cCharAt2 + "' with value " + ((int) cCharAt2) + " at index " + i3 + " in '" + ((Object) charSequence) + "'");
    }

    /* renamed from: else */
    public int mo851else(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            int iM16593for = m16593for(charSequence, i, i2);
            if (iM16593for < 0 || mo853new(iM16593for) != null) {
                break;
            }
            i += Character.isSupplementaryCodePoint(iM16593for) ? 2 : 1;
        }
        return i;
    }

    @Override // com.google.common.escape.Cfor
    /* renamed from: if */
    public String mo852if(String str) {
        af1.m205continue(str);
        int length = str.length();
        int iMo851else = mo851else(str, 0, length);
        return iMo851else == length ? str : m16594try(str, iMo851else);
    }

    /* renamed from: new */
    public abstract char[] mo853new(int i);

    /* renamed from: try, reason: not valid java name */
    public final String m16594try(String str, int i) {
        int length = str.length();
        char[] cArrM16615do = Ctry.m16615do();
        int i2 = 0;
        int length2 = 0;
        while (i < length) {
            int iM16593for = m16593for(str, i, length);
            if (iM16593for < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] cArrMo853new = mo853new(iM16593for);
            int i3 = (Character.isSupplementaryCodePoint(iM16593for) ? 2 : 1) + i;
            if (cArrMo853new != null) {
                int i4 = i - i2;
                int i5 = length2 + i4;
                int length3 = cArrMo853new.length + i5;
                if (cArrM16615do.length < length3) {
                    cArrM16615do = m16592case(cArrM16615do, length2, length3 + (length - i) + 32);
                }
                if (i4 > 0) {
                    str.getChars(i2, i, cArrM16615do, length2);
                    length2 = i5;
                }
                if (cArrMo853new.length > 0) {
                    System.arraycopy(cArrMo853new, 0, cArrM16615do, length2, cArrMo853new.length);
                    length2 += cArrMo853new.length;
                }
                i2 = i3;
            }
            i = mo851else(str, i3, length);
        }
        int i6 = length - i2;
        if (i6 > 0) {
            int i7 = i6 + length2;
            if (cArrM16615do.length < i7) {
                cArrM16615do = m16592case(cArrM16615do, length2, i7);
            }
            str.getChars(i2, length, cArrM16615do, length2);
            length2 = i7;
        }
        return new String(cArrM16615do, 0, length2);
    }
}
