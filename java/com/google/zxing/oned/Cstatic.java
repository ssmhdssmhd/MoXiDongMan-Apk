package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cgoto;
import java.util.EnumMap;
import java.util.Map;
import org.apache.commons.lang3.Ctry;

/* renamed from: com.google.zxing.oned.static, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cstatic {

    /* renamed from: for, reason: not valid java name */
    private static final int[] f17751for = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* renamed from: do, reason: not valid java name */
    private final int[] f17752do = new int[4];

    /* renamed from: if, reason: not valid java name */
    private final StringBuilder f17753if = new StringBuilder();

    /* renamed from: case, reason: not valid java name */
    private static Map<Cgoto, Object> m22136case(String str) {
        String strM22140try;
        if (str.length() != 5 || (strM22140try = m22140try(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(Cgoto.class);
        enumMap.put((EnumMap) Cgoto.SUGGESTED_PRICE, (Cgoto) strM22140try);
        return enumMap;
    }

    /* renamed from: do, reason: not valid java name */
    private int m22137do(w8 w8Var, int[] iArr, StringBuilder sb) throws j41 {
        int[] iArr2 = this.f17752do;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM9078class = w8Var.m9078class();
        int iM9077catch = iArr[1];
        int i = 0;
        for (int i2 = 0; i2 < 5 && iM9077catch < iM9078class; i2++) {
            int iM22147goto = Cthrows.m22147goto(w8Var, iArr2, iM9077catch, Cthrows.f17760break);
            sb.append((char) ((iM22147goto % 10) + 48));
            for (int i3 : iArr2) {
                iM9077catch += i3;
            }
            if (iM22147goto >= 10) {
                i |= 1 << (4 - i2);
            }
            if (i2 != 4) {
                iM9077catch = w8Var.m9077catch(w8Var.m9076break(iM9077catch));
            }
        }
        if (sb.length() != 5) {
            throw j41.getNotFoundInstance();
        }
        if (m22139new(sb.toString()) == m22138for(i)) {
            return iM9077catch;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: for, reason: not valid java name */
    private static int m22138for(int i) throws j41 {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == f17751for[i2]) {
                return i2;
            }
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: new, reason: not valid java name */
    private static int m22139new(CharSequence charSequence) {
        int length = charSequence.length();
        int iCharAt = 0;
        for (int i = length - 2; i >= 0; i -= 2) {
            iCharAt += charSequence.charAt(i) - '0';
        }
        int iCharAt2 = iCharAt * 3;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            iCharAt2 += charSequence.charAt(i2) - '0';
        }
        return (iCharAt2 * 3) % 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m22140try(String str) throws NumberFormatException {
        char c = 0;
        char cCharAt = str.charAt(0);
        String str2 = "";
        if (cCharAt == '0') {
            str2 = "£";
        } else if (cCharAt == '5') {
            str2 = "$";
        } else if (cCharAt == '9') {
            switch (str.hashCode()) {
                case 54118329:
                    if (!str.equals("90000")) {
                        c = 65535;
                        break;
                    }
                    break;
                case 54395376:
                    if (str.equals("99990")) {
                        c = 1;
                        break;
                    }
                    break;
                case 54395377:
                    if (str.equals("99991")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return null;
                case 1:
                    return "Used";
                case 2:
                    return "0.00";
            }
        }
        int i = Integer.parseInt(str.substring(1));
        String strValueOf = String.valueOf(i / 100);
        int i2 = i % 100;
        return str2 + strValueOf + Ctry.f28883do + (i2 < 10 ? "0".concat(String.valueOf(i2)) : String.valueOf(i2));
    }

    /* renamed from: if, reason: not valid java name */
    public wn1 m22141if(int i, w8 w8Var, int[] iArr) throws j41 {
        StringBuilder sb = this.f17753if;
        sb.setLength(0);
        int iM22137do = m22137do(w8Var, iArr, sb);
        String string = sb.toString();
        Map<Cgoto, Object> mapM22136case = m22136case(string);
        float f = i;
        wn1 wn1Var = new wn1(string, null, new yn1[]{new yn1((iArr[0] + iArr[1]) / 2.0f, f), new yn1(iM22137do, f)}, Cdo.UPC_EAN_EXTENSION);
        if (mapM22136case != null) {
            wn1Var.m9250this(mapM22136case);
        }
        return wn1Var;
    }
}
