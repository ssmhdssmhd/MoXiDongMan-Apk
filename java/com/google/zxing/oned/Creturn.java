package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cgoto;
import java.util.EnumMap;
import java.util.Map;

/* renamed from: com.google.zxing.oned.return, reason: invalid class name */
/* loaded from: classes2.dex */
final class Creturn {

    /* renamed from: do, reason: not valid java name */
    private final int[] f17665do = new int[4];

    /* renamed from: if, reason: not valid java name */
    private final StringBuilder f17666if = new StringBuilder();

    /* renamed from: do, reason: not valid java name */
    private int m22027do(w8 w8Var, int[] iArr, StringBuilder sb) throws j41 {
        int[] iArr2 = this.f17665do;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM9078class = w8Var.m9078class();
        int iM9077catch = iArr[1];
        int i = 0;
        for (int i2 = 0; i2 < 2 && iM9077catch < iM9078class; i2++) {
            int iM22147goto = Cthrows.m22147goto(w8Var, iArr2, iM9077catch, Cthrows.f17760break);
            sb.append((char) ((iM22147goto % 10) + 48));
            for (int i3 : iArr2) {
                iM9077catch += i3;
            }
            if (iM22147goto >= 10) {
                i |= 1 << (1 - i2);
            }
            if (i2 != 1) {
                iM9077catch = w8Var.m9077catch(w8Var.m9076break(iM9077catch));
            }
        }
        if (sb.length() != 2) {
            throw j41.getNotFoundInstance();
        }
        if (Integer.parseInt(sb.toString()) % 4 == i) {
            return iM9077catch;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: for, reason: not valid java name */
    private static Map<Cgoto, Object> m22028for(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(Cgoto.class);
        enumMap.put((EnumMap) Cgoto.ISSUE_NUMBER, (Cgoto) Integer.valueOf(str));
        return enumMap;
    }

    /* renamed from: if, reason: not valid java name */
    public wn1 m22029if(int i, w8 w8Var, int[] iArr) throws j41 {
        StringBuilder sb = this.f17666if;
        sb.setLength(0);
        int iM22027do = m22027do(w8Var, iArr, sb);
        String string = sb.toString();
        Map<Cgoto, Object> mapM22028for = m22028for(string);
        float f = i;
        wn1 wn1Var = new wn1(string, null, new yn1[]{new yn1((iArr[0] + iArr[1]) / 2.0f, f), new yn1(iM22027do, f)}, Cdo.UPC_EAN_EXTENSION);
        if (mapM22028for != null) {
            wn1Var.m9250this(mapM22028for);
        }
        return wn1Var;
    }
}
