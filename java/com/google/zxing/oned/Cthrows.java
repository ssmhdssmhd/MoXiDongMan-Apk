package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPointCallback;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.google.zxing.oned.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cthrows extends Cwhile {

    /* renamed from: break, reason: not valid java name */
    public static final int[][] f17760break;

    /* renamed from: case, reason: not valid java name */
    public static final int[] f17761case = {1, 1, 1};

    /* renamed from: else, reason: not valid java name */
    public static final int[] f17762else = {1, 1, 1, 1, 1};

    /* renamed from: goto, reason: not valid java name */
    public static final int[] f17763goto = {1, 1, 1, 1, 1, 1};

    /* renamed from: new, reason: not valid java name */
    private static final float f17764new = 0.48f;

    /* renamed from: this, reason: not valid java name */
    public static final int[][] f17765this;

    /* renamed from: try, reason: not valid java name */
    private static final float f17766try = 0.7f;

    /* renamed from: do, reason: not valid java name */
    private final StringBuilder f17767do = new StringBuilder(20);

    /* renamed from: if, reason: not valid java name */
    private final Cswitch f17769if = new Cswitch();

    /* renamed from: for, reason: not valid java name */
    private final Cclass f17768for = new Cclass();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f17765this = iArr;
        int[][] iArr2 = new int[20][];
        f17760break = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr3 = f17765this[i - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i2 = 0; i2 < iArr3.length; i2++) {
                iArr4[i2] = iArr3[(iArr3.length - i2) - 1];
            }
            f17760break[i] = iArr4;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static int[] m22143class(w8 w8Var, int i, boolean z, int[] iArr) throws j41 {
        return m22144const(w8Var, i, z, iArr, new int[iArr.length]);
    }

    /* renamed from: const, reason: not valid java name */
    private static int[] m22144const(w8 w8Var, int i, boolean z, int[] iArr, int[] iArr2) throws j41 {
        int iM9078class = w8Var.m9078class();
        int iM9077catch = z ? w8Var.m9077catch(i) : w8Var.m9076break(i);
        int length = iArr.length;
        boolean z2 = z;
        int i2 = 0;
        int i3 = iM9077catch;
        while (iM9077catch < iM9078class) {
            if (w8Var.m9084goto(iM9077catch) != z2) {
                iArr2[i2] = iArr2[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (Cwhile.m22151for(iArr2, iArr, 0.7f) < f17764new) {
                        return new int[]{i3, iM9077catch};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i4 = i2 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i2] = 0;
                    i2--;
                }
                iArr2[i2] = 1;
                z2 = !z2;
            }
            iM9077catch++;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m22145else(CharSequence charSequence) throws ld0 {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return m22148throw(charSequence.subSequence(0, i)) == Character.digit(charSequence.charAt(i), 10);
    }

    /* renamed from: final, reason: not valid java name */
    public static int[] m22146final(w8 w8Var) throws j41 {
        int[] iArr = new int[f17761case.length];
        int[] iArrM22144const = null;
        boolean zM9082final = false;
        int i = 0;
        while (!zM9082final) {
            int[] iArr2 = f17761case;
            Arrays.fill(iArr, 0, iArr2.length, 0);
            iArrM22144const = m22144const(w8Var, i, false, iArr2, iArr);
            int i2 = iArrM22144const[0];
            int i3 = iArrM22144const[1];
            int i4 = i2 - (i3 - i2);
            if (i4 >= 0) {
                zM9082final = w8Var.m9082final(i4, i2, false);
            }
            i = i3;
        }
        return iArrM22144const;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m22147goto(w8 w8Var, int[] iArr, int i, int[][] iArr2) throws j41 {
        Cwhile.m22153new(w8Var, i, iArr);
        int length = iArr2.length;
        float f = f17764new;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float fM22151for = Cwhile.m22151for(iArr, iArr2[i3], 0.7f);
            if (fM22151for < f) {
                i2 = i3;
                f = fM22151for;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m22148throw(CharSequence charSequence) throws ld0 {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int iCharAt = charSequence.charAt(i2) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                throw ld0.getFormatInstance();
            }
            i += iCharAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int iCharAt2 = charSequence.charAt(i4) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                throw ld0.getFormatInstance();
            }
            i3 += iCharAt2;
        }
        return (1000 - i3) % 10;
    }

    /* renamed from: break */
    public abstract int mo21981break(w8 w8Var, int[] iArr, StringBuilder sb) throws j41;

    /* renamed from: case */
    public boolean mo22002case(String str) throws ld0 {
        return m22145else(str);
    }

    /* renamed from: catch */
    public wn1 mo22022catch(int i, w8 w8Var, int[] iArr, Map<Cnew, ?> map) throws ll, ld0, j41 {
        int length;
        String strM21992for;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(Cnew.NEED_RESULT_POINT_CALLBACK);
        boolean z = true;
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new yn1((iArr[0] + iArr[1]) / 2.0f, i));
        }
        StringBuilder sb = this.f17767do;
        sb.setLength(0);
        int iMo21981break = mo21981break(w8Var, iArr, sb);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new yn1(iMo21981break, i));
        }
        int[] iArrMo22003this = mo22003this(w8Var, iMo21981break);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new yn1((iArrMo22003this[0] + iArrMo22003this[1]) / 2.0f, i));
        }
        int i2 = iArrMo22003this[1];
        int i3 = (i2 - iArrMo22003this[0]) + i2;
        if (i3 >= w8Var.m9078class() || !w8Var.m9082final(i2, i3, false)) {
            throw j41.getNotFoundInstance();
        }
        String string = sb.toString();
        if (string.length() < 8) {
            throw ld0.getFormatInstance();
        }
        if (!mo22002case(string)) {
            throw ll.getChecksumInstance();
        }
        Cdo cdoMo21982super = mo21982super();
        float f = i;
        wn1 wn1Var = new wn1(string, null, new yn1[]{new yn1((iArr[1] + iArr[0]) / 2.0f, f), new yn1((iArrMo22003this[1] + iArrMo22003this[0]) / 2.0f, f)}, cdoMo21982super);
        try {
            wn1 wn1VarM22142do = this.f17769if.m22142do(i, w8Var, iArrMo22003this[1]);
            wn1Var.m9242break(Cgoto.UPC_EAN_EXTENSION, wn1VarM22142do.m9245else());
            wn1Var.m9250this(wn1VarM22142do.m9251try());
            wn1Var.m9244do(wn1VarM22142do.m9243case());
            length = wn1VarM22142do.m9245else().length();
        } catch (kl1 unused) {
            length = 0;
        }
        int[] iArr2 = map != null ? (int[]) map.get(Cnew.ALLOWED_EAN_EXTENSIONS) : null;
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length2) {
                    z = false;
                    break;
                }
                if (length == iArr2[i4]) {
                    break;
                }
                i4++;
            }
            if (!z) {
                throw j41.getNotFoundInstance();
            }
        }
        if ((cdoMo21982super == Cdo.EAN_13 || cdoMo21982super == Cdo.UPC_A) && (strM21992for = this.f17768for.m21992for(string)) != null) {
            wn1Var.m9242break(Cgoto.POSSIBLE_COUNTRY, strM21992for);
        }
        return wn1Var;
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws ll, ld0, j41 {
        return mo22022catch(i, w8Var, m22146final(w8Var), map);
    }

    /* renamed from: super */
    public abstract Cdo mo21982super();

    /* renamed from: this */
    public int[] mo22003this(w8 w8Var, int i) throws j41 {
        return m22143class(w8Var, i, false, f17761case);
    }
}
