package com.google.zxing.oned;

import android.support.v4.hy1;
import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.t3;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.zxing.oned.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew extends Cwhile {

    /* renamed from: case, reason: not valid java name */
    public static final int[] f17657case = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 168, 162, 138, 42};

    /* renamed from: else, reason: not valid java name */
    public static final int f17658else = 148;

    /* renamed from: try, reason: not valid java name */
    public static final String f17659try = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";

    /* renamed from: do, reason: not valid java name */
    private final boolean f17660do;

    /* renamed from: for, reason: not valid java name */
    private final StringBuilder f17661for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f17662if;

    /* renamed from: new, reason: not valid java name */
    private final int[] f17663new;

    public Cnew() {
        this(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m22023case(CharSequence charSequence) throws ld0 {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '+' || cCharAt == '$' || cCharAt == '%' || cCharAt == '/') {
                i2++;
                char cCharAt2 = charSequence.charAt(i2);
                if (cCharAt != '$') {
                    if (cCharAt != '%') {
                        if (cCharAt != '+') {
                            if (cCharAt != '/') {
                                c = 0;
                            } else if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                                i = cCharAt2 - ' ';
                            } else {
                                if (cCharAt2 != 'Z') {
                                    throw ld0.getFormatInstance();
                                }
                                c = ':';
                            }
                            sb.append(c);
                        } else {
                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                throw ld0.getFormatInstance();
                            }
                            i = cCharAt2 + ' ';
                        }
                    } else if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                        i = cCharAt2 - '&';
                    } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                        i = cCharAt2 - 11;
                    } else if (cCharAt2 >= 'K' && cCharAt2 <= 'O') {
                        i = cCharAt2 + 16;
                    } else if (cCharAt2 < 'P' || cCharAt2 > 'T') {
                        if (cCharAt2 != 'U') {
                            if (cCharAt2 == 'V') {
                                c = '@';
                            } else if (cCharAt2 == 'W') {
                                c = '`';
                            } else {
                                if (cCharAt2 != 'X' && cCharAt2 != 'Y' && cCharAt2 != 'Z') {
                                    throw ld0.getFormatInstance();
                                }
                                c = t3.a;
                            }
                        }
                        sb.append(c);
                    } else {
                        i = cCharAt2 + hy1.f2562if;
                    }
                } else {
                    if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                        throw ld0.getFormatInstance();
                    }
                    i = cCharAt2 - '@';
                }
                c = (char) i;
                sb.append(c);
            } else {
                sb.append(cCharAt);
            }
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    private static int[] m22024else(w8 w8Var, int[] iArr) throws j41 {
        int iM9078class = w8Var.m9078class();
        int iM9076break = w8Var.m9076break(0);
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
                    if (m22026this(iArr) == 148 && w8Var.m9082final(Math.max(0, i - ((iM9076break - i) / 2)), i, false)) {
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

    /* renamed from: goto, reason: not valid java name */
    private static char m22025goto(int i) throws j41 {
        int i2 = 0;
        while (true) {
            int[] iArr = f17657case;
            if (i2 >= iArr.length) {
                if (i == 148) {
                    return '*';
                }
                throw j41.getNotFoundInstance();
            }
            if (iArr[i2] == i) {
                return f17659try.charAt(i2);
            }
            i2++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static int m22026this(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i5 |= 1 << ((length - 1) - i7);
                    i4++;
                    i6 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if ((i10 << 1) >= i6) {
                            return -1;
                        }
                    }
                }
                return i5;
            }
            if (i4 <= 3) {
                return -1;
            }
            i = i2;
        }
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<com.google.zxing.Cnew, ?> map) throws ll, ld0, j41 {
        int[] iArr = this.f17663new;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f17661for;
        sb.setLength(0);
        int iM9076break = w8Var.m9076break(m22024else(w8Var, iArr)[1]);
        int iM9078class = w8Var.m9078class();
        while (true) {
            Cwhile.m22153new(w8Var, iM9076break, iArr);
            int iM22026this = m22026this(iArr);
            if (iM22026this < 0) {
                throw j41.getNotFoundInstance();
            }
            char cM22025goto = m22025goto(iM22026this);
            sb.append(cM22025goto);
            int i2 = iM9076break;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int iM9076break2 = w8Var.m9076break(i2);
            if (cM22025goto == '*') {
                sb.setLength(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                int i6 = (iM9076break2 - iM9076break) - i4;
                if (iM9076break2 != iM9078class && (i6 << 1) < i4) {
                    throw j41.getNotFoundInstance();
                }
                if (this.f17660do) {
                    int length = sb.length() - 1;
                    int iIndexOf = 0;
                    for (int i7 = 0; i7 < length; i7++) {
                        iIndexOf += f17659try.indexOf(this.f17661for.charAt(i7));
                    }
                    if (sb.charAt(length) != f17659try.charAt(iIndexOf % 43)) {
                        throw ll.getChecksumInstance();
                    }
                    sb.setLength(length);
                }
                if (sb.length() == 0) {
                    throw j41.getNotFoundInstance();
                }
                float f = i;
                return new wn1(this.f17662if ? m22023case(sb) : sb.toString(), null, new yn1[]{new yn1((r2[1] + r2[0]) / 2.0f, f), new yn1(iM9076break + (i4 / 2.0f), f)}, Cdo.CODE_39);
            }
            iM9076break = iM9076break2;
        }
    }

    public Cnew(boolean z) {
        this(z, false);
    }

    public Cnew(boolean z, boolean z2) {
        this.f17660do = z;
        this.f17662if = z2;
        this.f17661for = new StringBuilder(20);
        this.f17663new = new int[9];
    }
}
