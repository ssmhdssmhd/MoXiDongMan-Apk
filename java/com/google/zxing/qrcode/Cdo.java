package com.google.zxing.qrcode;

import android.support.v4.ei1;
import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.mx;
import android.support.v4.oz;
import android.support.v4.wn1;
import android.support.v4.yn1;
import android.support.v4.z8;
import com.google.zxing.Cfor;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import com.google.zxing.qrcode.decoder.Ctry;
import com.google.zxing.qrcode.detector.Cif;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo implements Reader {

    /* renamed from: if, reason: not valid java name */
    private static final yn1[] f17936if = new yn1[0];

    /* renamed from: do, reason: not valid java name */
    private final Ctry f17937do = new Ctry();

    /* renamed from: do, reason: not valid java name */
    private static z8 m22391do(z8 z8Var) throws j41 {
        int[] iArrM10090catch = z8Var.m10090catch();
        int[] iArrM10089case = z8Var.m10089case();
        if (iArrM10090catch == null || iArrM10089case == null) {
            throw j41.getNotFoundInstance();
        }
        float fM22392for = m22392for(iArrM10090catch, z8Var);
        int i = iArrM10090catch[1];
        int i2 = iArrM10089case[1];
        int i3 = iArrM10090catch[0];
        int i4 = iArrM10089case[0];
        if (i3 >= i4 || i >= i2) {
            throw j41.getNotFoundInstance();
        }
        int i5 = i2 - i;
        if (i5 != i4 - i3 && (i4 = i3 + i5) >= z8Var.m10091class()) {
            throw j41.getNotFoundInstance();
        }
        int iRound = Math.round(((i4 - i3) + 1) / fM22392for);
        int iRound2 = Math.round((i5 + 1) / fM22392for);
        if (iRound <= 0 || iRound2 <= 0) {
            throw j41.getNotFoundInstance();
        }
        if (iRound2 != iRound) {
            throw j41.getNotFoundInstance();
        }
        int i6 = (int) (fM22392for / 2.0f);
        int i7 = i + i6;
        int i8 = i3 + i6;
        int i9 = (((int) ((iRound - 1) * fM22392for)) + i8) - i4;
        if (i9 > 0) {
            if (i9 > i6) {
                throw j41.getNotFoundInstance();
            }
            i8 -= i9;
        }
        int i10 = (((int) ((iRound2 - 1) * fM22392for)) + i7) - i2;
        if (i10 > 0) {
            if (i10 > i6) {
                throw j41.getNotFoundInstance();
            }
            i7 -= i10;
        }
        z8 z8Var2 = new z8(iRound, iRound2);
        for (int i11 = 0; i11 < iRound2; i11++) {
            int i12 = ((int) (i11 * fM22392for)) + i7;
            for (int i13 = 0; i13 < iRound; i13++) {
                if (z8Var.m10105try(((int) (i13 * fM22392for)) + i8, i12)) {
                    z8Var2.m10104throw(i13, i11);
                }
            }
        }
        return z8Var2;
    }

    /* renamed from: for, reason: not valid java name */
    private static float m22392for(int[] iArr, z8 z8Var) throws j41 {
        int iM10094goto = z8Var.m10094goto();
        int iM10091class = z8Var.m10091class();
        int i = iArr[0];
        boolean z = true;
        int i2 = iArr[1];
        int i3 = 0;
        while (i < iM10091class && i2 < iM10094goto) {
            if (z != z8Var.m10105try(i, i2)) {
                i3++;
                if (i3 == 5) {
                    break;
                }
                z = !z;
            }
            i++;
            i2++;
        }
        if (i == iM10091class || i2 == iM10094goto) {
            throw j41.getNotFoundInstance();
        }
        return (i - iArr[0]) / 7.0f;
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ll, ld0, j41 {
        return decode(cfor, null);
    }

    /* renamed from: if, reason: not valid java name */
    public final Ctry m22393if() {
        return this.f17937do;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public final wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ll, ld0, j41 {
        yn1[] yn1VarArrM5822if;
        mx mxVarM22353for;
        if (map == null || !map.containsKey(Cnew.PURE_BARCODE)) {
            oz ozVarM22385case = new Cif(cfor.m21954if()).m22385case(map);
            mx mxVarM22353for2 = this.f17937do.m22353for(ozVarM22385case.m5821do(), map);
            yn1VarArrM5822if = ozVarM22385case.m5822if();
            mxVarM22353for = mxVarM22353for2;
        } else {
            mxVarM22353for = this.f17937do.m22353for(m22391do(cfor.m21954if()), map);
            yn1VarArrM5822if = f17936if;
        }
        if (mxVarM22353for.m5030case() instanceof ei1) {
            ((ei1) mxVarM22353for.m5030case()).m1925do(yn1VarArrM5822if);
        }
        wn1 wn1Var = new wn1(mxVarM22353for.m5029break(), mxVarM22353for.m5035else(), yn1VarArrM5822if, com.google.zxing.Cdo.QR_CODE);
        List<byte[]> listM5034do = mxVarM22353for.m5034do();
        if (listM5034do != null) {
            wn1Var.m9242break(Cgoto.BYTE_SEGMENTS, listM5034do);
        }
        String strM5039if = mxVarM22353for.m5039if();
        if (strM5039if != null) {
            wn1Var.m9242break(Cgoto.ERROR_CORRECTION_LEVEL, strM5039if);
        }
        if (mxVarM22353for.m5031catch()) {
            wn1Var.m9242break(Cgoto.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(mxVarM22353for.m5042this()));
            wn1Var.m9242break(Cgoto.STRUCTURED_APPEND_PARITY, Integer.valueOf(mxVarM22353for.m5038goto()));
        }
        return wn1Var;
    }
}
