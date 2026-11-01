package com.google.zxing.multi;

import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cfor;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.multi.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif implements MultipleBarcodeReader {

    /* renamed from: for, reason: not valid java name */
    private static final int f17570for = 4;

    /* renamed from: if, reason: not valid java name */
    private static final int f17571if = 100;

    /* renamed from: do, reason: not valid java name */
    private final Reader f17572do;

    public Cif(Reader reader) {
        this.f17572do = reader;
    }

    /* renamed from: do, reason: not valid java name */
    private void m21975do(Cfor cfor, Map<Cnew, ?> map, List<wn1> list, int i, int i2, int i3) {
        boolean z;
        float f;
        float f2;
        int i4;
        int i5;
        if (i3 > 4) {
            return;
        }
        try {
            wn1 wn1VarDecode = this.f17572do.decode(cfor, map);
            Iterator<wn1> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().m9245else().equals(wn1VarDecode.m9245else())) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                list.add(m21976if(wn1VarDecode, i, i2));
            }
            yn1[] yn1VarArrM9243case = wn1VarDecode.m9243case();
            if (yn1VarArrM9243case == null || yn1VarArrM9243case.length == 0) {
                return;
            }
            int iM21957try = cfor.m21957try();
            int iM21955new = cfor.m21955new();
            float f3 = iM21957try;
            float f4 = iM21955new;
            float f5 = 0.0f;
            float f6 = 0.0f;
            for (yn1 yn1Var : yn1VarArrM9243case) {
                if (yn1Var != null) {
                    float fM9911for = yn1Var.m9911for();
                    float fM9912new = yn1Var.m9912new();
                    if (fM9911for < f3) {
                        f3 = fM9911for;
                    }
                    if (fM9912new < f4) {
                        f4 = fM9912new;
                    }
                    if (fM9911for > f5) {
                        f5 = fM9911for;
                    }
                    if (fM9912new > f6) {
                        f6 = fM9912new;
                    }
                }
            }
            if (f3 > 100.0f) {
                f = f5;
                f2 = f4;
                i4 = iM21955new;
                i5 = iM21957try;
                m21975do(cfor.m21950do(0, 0, (int) f3, iM21955new), map, list, i, i2, i3 + 1);
            } else {
                f = f5;
                f2 = f4;
                i4 = iM21955new;
                i5 = iM21957try;
            }
            if (f2 > 100.0f) {
                m21975do(cfor.m21950do(0, 0, i5, (int) f2), map, list, i, i2, i3 + 1);
            }
            float f7 = f;
            if (f7 < i5 - 100) {
                int i6 = (int) f7;
                m21975do(cfor.m21950do(i6, 0, i5 - i6, i4), map, list, i + i6, i2, i3 + 1);
            }
            if (f6 < i4 - 100) {
                int i7 = (int) f6;
                m21975do(cfor.m21950do(0, i7, i5, i4 - i7), map, list, i, i2 + i7, i3 + 1);
            }
        } catch (kl1 unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static wn1 m21976if(wn1 wn1Var, int i, int i2) {
        yn1[] yn1VarArrM9243case = wn1Var.m9243case();
        if (yn1VarArrM9243case == null) {
            return wn1Var;
        }
        yn1[] yn1VarArr = new yn1[yn1VarArrM9243case.length];
        for (int i3 = 0; i3 < yn1VarArrM9243case.length; i3++) {
            yn1 yn1Var = yn1VarArrM9243case[i3];
            if (yn1Var != null) {
                yn1VarArr[i3] = new yn1(yn1Var.m9911for() + i, yn1Var.m9912new() + i2);
            }
        }
        wn1 wn1Var2 = new wn1(wn1Var.m9245else(), wn1Var.m9249new(), wn1Var.m9246for(), yn1VarArr, wn1Var.m9248if(), wn1Var.m9247goto());
        wn1Var2.m9250this(wn1Var.m9251try());
        return wn1Var2;
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public wn1[] decodeMultiple(Cfor cfor) throws j41 {
        return decodeMultiple(cfor, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(Cfor cfor, Map<Cnew, ?> map) throws j41 {
        ArrayList arrayList = new ArrayList();
        m21975do(cfor, map, arrayList, 0, 0, 0);
        if (arrayList.isEmpty()) {
            throw j41.getNotFoundInstance();
        }
        return (wn1[]) arrayList.toArray(new wn1[arrayList.size()]);
    }
}
