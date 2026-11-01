package com.google.zxing.oned;

import android.support.v4.hy1;
import android.support.v4.j41;
import android.support.v4.l80;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.t3;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.zxing.Cdo;
import com.google.zxing.Cnew;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import com.scwang.smartrefresh.header.TaurusHeader;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.zxing.oned.case, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccase extends Cwhile {

    /* renamed from: case, reason: not valid java name */
    private static final int f17583case;

    /* renamed from: for, reason: not valid java name */
    public static final String f17584for = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";

    /* renamed from: new, reason: not valid java name */
    private static final char[] f17585new = f17584for.toCharArray();

    /* renamed from: try, reason: not valid java name */
    public static final int[] f17586try;

    /* renamed from: do, reason: not valid java name */
    private final StringBuilder f17587do = new StringBuilder(20);

    /* renamed from: if, reason: not valid java name */
    private final int[] f17588if = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, TypedValues.Cycle.TYPE_WAVE_OFFSET, TypedValues.Cycle.TYPE_EASING, 418, l80.f3570goto, TypedValues.Cycle.TYPE_VISIBILITY, 394, FunGameBattleCityHeader.u, 356, 354, 308, 282, 344, 332, 326, TaurusHeader.a, 278, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        f17586try = iArr;
        f17583case = iArr[47];
    }

    /* renamed from: break, reason: not valid java name */
    private static char m21983break(int i) throws j41 {
        int i2 = 0;
        while (true) {
            int[] iArr = f17586try;
            if (i2 >= iArr.length) {
                throw j41.getNotFoundInstance();
            }
            if (iArr[i2] == i) {
                return f17585new[i2];
            }
            i2++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static void m21984case(CharSequence charSequence) throws ll {
        int length = charSequence.length();
        m21986else(charSequence, length - 2, 20);
        m21986else(charSequence, length - 1, 15);
    }

    /* renamed from: catch, reason: not valid java name */
    private static int m21985catch(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int iRound = Math.round((iArr[i4] * 9.0f) / i);
            if (iRound <= 0 || iRound > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                for (int i5 = 0; i5 < iRound; i5++) {
                    i3 = (i3 << 1) | 1;
                }
            } else {
                i3 <<= iRound;
            }
        }
        return i3;
    }

    /* renamed from: else, reason: not valid java name */
    private static void m21986else(CharSequence charSequence, int i, int i2) throws ll {
        int iIndexOf = 0;
        int i3 = 1;
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iIndexOf += f17584for.indexOf(charSequence.charAt(i4)) * i3;
            i3++;
            if (i3 > i2) {
                i3 = 1;
            }
        }
        if (charSequence.charAt(i) != f17585new[iIndexOf % 47]) {
            throw ll.getChecksumInstance();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m21987goto(CharSequence charSequence) throws ld0 {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 'a' || cCharAt > 'd') {
                sb.append(cCharAt);
            } else {
                if (i2 >= length - 1) {
                    throw ld0.getFormatInstance();
                }
                i2++;
                char cCharAt2 = charSequence.charAt(i2);
                switch (cCharAt) {
                    case 'a':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'Z') {
                            i = cCharAt2 - '@';
                            c = (char) i;
                            sb.append(c);
                            break;
                        } else {
                            throw ld0.getFormatInstance();
                        }
                        break;
                    case 'b':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                            i = cCharAt2 - '&';
                        } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                            i = cCharAt2 - 11;
                        } else if (cCharAt2 >= 'K' && cCharAt2 <= 'O') {
                            i = cCharAt2 + 16;
                        } else if (cCharAt2 >= 'P' && cCharAt2 <= 'S') {
                            i = cCharAt2 + hy1.f2562if;
                        } else if (cCharAt2 >= 'T' && cCharAt2 <= 'Z') {
                            c = t3.a;
                            sb.append(c);
                            break;
                        } else {
                            throw ld0.getFormatInstance();
                        }
                        c = (char) i;
                        sb.append(c);
                        break;
                    case 'c':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                            i = cCharAt2 - ' ';
                            c = (char) i;
                            sb.append(c);
                        } else {
                            if (cCharAt2 != 'Z') {
                                throw ld0.getFormatInstance();
                            }
                            c = ':';
                            sb.append(c);
                            break;
                        }
                    case 'd':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'Z') {
                            i = cCharAt2 + ' ';
                            c = (char) i;
                            sb.append(c);
                            break;
                        } else {
                            throw ld0.getFormatInstance();
                        }
                    default:
                        c = 0;
                        sb.append(c);
                        break;
                }
            }
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: this, reason: not valid java name */
    private int[] m21988this(w8 w8Var) throws j41 {
        int iM9078class = w8Var.m9078class();
        int iM9076break = w8Var.m9076break(0);
        Arrays.fill(this.f17588if, 0);
        int[] iArr = this.f17588if;
        int length = iArr.length;
        int i = iM9076break;
        boolean z = false;
        int i2 = 0;
        while (iM9076break < iM9078class) {
            if (w8Var.m9084goto(iM9076break) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (m21985catch(iArr) == f17583case) {
                        return new int[]{i, iM9076break};
                    }
                    i += iArr[0] + iArr[1];
                    int i3 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i3);
                    iArr[i3] = 0;
                    iArr[i2] = 0;
                    i2--;
                }
                iArr[i2] = 1;
                z = !z;
            }
            iM9076break++;
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do, reason: not valid java name */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws ll, ld0, j41 {
        int iM9076break = w8Var.m9076break(m21988this(w8Var)[1]);
        int iM9078class = w8Var.m9078class();
        int[] iArr = this.f17588if;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f17587do;
        sb.setLength(0);
        while (true) {
            Cwhile.m22153new(w8Var, iM9076break, iArr);
            int iM21985catch = m21985catch(iArr);
            if (iM21985catch < 0) {
                throw j41.getNotFoundInstance();
            }
            char cM21983break = m21983break(iM21985catch);
            sb.append(cM21983break);
            int i2 = iM9076break;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int iM9076break2 = w8Var.m9076break(i2);
            if (cM21983break == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (iM9076break2 == iM9078class || !w8Var.m9084goto(iM9076break2)) {
                    throw j41.getNotFoundInstance();
                }
                if (sb.length() < 2) {
                    throw j41.getNotFoundInstance();
                }
                m21984case(sb);
                sb.setLength(sb.length() - 2);
                float f = i;
                return new wn1(m21987goto(sb), null, new yn1[]{new yn1((r14[1] + r14[0]) / 2.0f, f), new yn1(iM9076break + (i4 / 2.0f), f)}, Cdo.CODE_93);
            }
            iM9076break = iM9076break2;
        }
    }
}
