package com.google.zxing.multi.qrcode.detector;

import android.support.v4.dc0;
import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.oz;
import android.support.v4.z8;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.detector.Cif;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: com.google.zxing.multi.qrcode.detector.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo extends Cif {

    /* renamed from: for, reason: not valid java name */
    private static final oz[] f17573for = new oz[0];

    public Cdo(z8 z8Var) {
        super(z8Var);
    }

    /* renamed from: final, reason: not valid java name */
    public DetectorResult[] m21977final(Map<Cnew, ?> map) throws j41 {
        dc0[] dc0VarArrM21979import = new Cif(m22388goto(), map == null ? null : (ResultPointCallback) map.get(Cnew.NEED_RESULT_POINT_CALLBACK)).m21979import(map);
        if (dc0VarArrM21979import.length == 0) {
            throw j41.getNotFoundInstance();
        }
        ArrayList arrayList = new ArrayList();
        for (dc0 dc0Var : dc0VarArrM21979import) {
            try {
                arrayList.add(m22384break(dc0Var));
            } catch (kl1 unused) {
            }
        }
        return arrayList.isEmpty() ? f17573for : (oz[]) arrayList.toArray(new oz[arrayList.size()]);
    }
}
