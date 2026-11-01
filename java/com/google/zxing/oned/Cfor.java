package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.z8;
import com.google.zxing.Ctry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.zxing.oned.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor extends Cimport {

    /* renamed from: break, reason: not valid java name */
    private static final char f17621break = 243;

    /* renamed from: case, reason: not valid java name */
    private static final int f17622case = 99;

    /* renamed from: catch, reason: not valid java name */
    private static final char f17623catch = 244;

    /* renamed from: class, reason: not valid java name */
    private static final int f17624class = 102;

    /* renamed from: const, reason: not valid java name */
    private static final int f17625const = 97;

    /* renamed from: do, reason: not valid java name */
    private static final int f17626do = 103;

    /* renamed from: else, reason: not valid java name */
    private static final int f17627else = 106;

    /* renamed from: final, reason: not valid java name */
    private static final int f17628final = 96;

    /* renamed from: for, reason: not valid java name */
    private static final int f17629for = 105;

    /* renamed from: goto, reason: not valid java name */
    private static final char f17630goto = 241;

    /* renamed from: if, reason: not valid java name */
    private static final int f17631if = 104;

    /* renamed from: new, reason: not valid java name */
    private static final int f17632new = 101;

    /* renamed from: super, reason: not valid java name */
    private static final int f17633super = 101;

    /* renamed from: this, reason: not valid java name */
    private static final char f17634this = 242;

    /* renamed from: throw, reason: not valid java name */
    private static final int f17635throw = 100;

    /* renamed from: try, reason: not valid java name */
    private static final int f17636try = 100;

    /* renamed from: com.google.zxing.oned.for$do, reason: invalid class name */
    public enum Cdo {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    /* renamed from: case, reason: not valid java name */
    private static Cdo m22014case(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return Cdo.UNCODABLE;
        }
        char cCharAt = charSequence.charAt(i);
        if (cCharAt == 241) {
            return Cdo.FNC_1;
        }
        if (cCharAt < '0' || cCharAt > '9') {
            return Cdo.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return Cdo.ONE_DIGIT;
        }
        char cCharAt2 = charSequence.charAt(i2);
        return (cCharAt2 < '0' || cCharAt2 > '9') ? Cdo.ONE_DIGIT : Cdo.TWO_DIGITS;
    }

    /* renamed from: try, reason: not valid java name */
    private static int m22015try(CharSequence charSequence, int i, int i2) {
        Cdo cdoM22014case;
        Cdo cdoM22014case2;
        char cCharAt;
        Cdo cdoM22014case3 = m22014case(charSequence, i);
        Cdo cdo = Cdo.ONE_DIGIT;
        if (cdoM22014case3 == cdo) {
            return 100;
        }
        Cdo cdo2 = Cdo.UNCODABLE;
        if (cdoM22014case3 == cdo2) {
            return (i >= charSequence.length() || ((cCharAt = charSequence.charAt(i)) >= ' ' && (i2 != 101 || cCharAt >= '`'))) ? 100 : 101;
        }
        if (i2 == 99) {
            return 99;
        }
        if (i2 != 100) {
            if (cdoM22014case3 == Cdo.FNC_1) {
                cdoM22014case3 = m22014case(charSequence, i + 1);
            }
            return cdoM22014case3 == Cdo.TWO_DIGITS ? 99 : 100;
        }
        Cdo cdo3 = Cdo.FNC_1;
        if (cdoM22014case3 == cdo3 || (cdoM22014case = m22014case(charSequence, i + 2)) == cdo2 || cdoM22014case == cdo) {
            return 100;
        }
        if (cdoM22014case == cdo3) {
            return m22014case(charSequence, i + 3) == Cdo.TWO_DIGITS ? 99 : 100;
        }
        int i3 = i + 4;
        while (true) {
            cdoM22014case2 = m22014case(charSequence, i3);
            if (cdoM22014case2 != Cdo.TWO_DIGITS) {
                break;
            }
            i3 += 2;
        }
        return cdoM22014case2 == Cdo.ONE_DIGIT ? 100 : 99;
    }

    @Override // com.google.zxing.oned.Cimport, com.google.zxing.Writer
    public z8 encode(String str, com.google.zxing.Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == com.google.zxing.Cdo.CODE_128) {
            return super.encode(str, cdo, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(cdo)));
    }

    @Override // com.google.zxing.oned.Cimport
    /* renamed from: if */
    public boolean[] mo7057if(String str) throws NumberFormatException {
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int iM22019do = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (cCharAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(cCharAt)));
                    }
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (true) {
            int i6 = 103;
            if (i2 >= length) {
                int[][] iArr = Cif.f17645do;
                arrayList.add(iArr[i3 % 103]);
                arrayList.add(iArr[106]);
                int i7 = 0;
                for (int[] iArr2 : arrayList) {
                    for (int i8 : iArr2) {
                        i7 += i8;
                    }
                }
                boolean[] zArr = new boolean[i7];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    iM22019do += Cimport.m22019do(zArr, iM22019do, (int[]) it.next(), true);
                }
                return zArr;
            }
            int iM22015try = m22015try(str, i2, i4);
            int iCharAt = 100;
            if (iM22015try == i4) {
                switch (str.charAt(i2)) {
                    case 241:
                        iCharAt = 102;
                        break;
                    case 242:
                        iCharAt = 97;
                        break;
                    case 243:
                        iCharAt = 96;
                        break;
                    case 244:
                        if (i4 == 101) {
                            iCharAt = 101;
                            break;
                        }
                        break;
                    default:
                        if (i4 != 100) {
                            if (i4 != 101) {
                                iCharAt = Integer.parseInt(str.substring(i2, i2 + 2));
                                i2++;
                                break;
                            } else {
                                iCharAt = str.charAt(i2) - ' ';
                                if (iCharAt < 0) {
                                    iCharAt += 96;
                                    break;
                                }
                            }
                        } else {
                            iCharAt = str.charAt(i2) - ' ';
                            break;
                        }
                        break;
                }
                i2++;
            } else {
                if (i4 != 0) {
                    i6 = iM22015try;
                } else if (iM22015try == 100) {
                    i6 = 104;
                } else if (iM22015try != 101) {
                    i6 = 105;
                }
                iCharAt = i6;
                i4 = iM22015try;
            }
            arrayList.add(Cif.f17645do[iCharAt]);
            i3 += iCharAt * i5;
            if (i2 != 0) {
                i5++;
            }
        }
    }
}
