package com.google.zxing.multi;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cfor;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import java.util.Map;

/* renamed from: com.google.zxing.multi.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo implements Reader {

    /* renamed from: do, reason: not valid java name */
    private final Reader f17569do;

    public Cdo(Reader reader) {
        this.f17569do = reader;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m21974do(yn1[] yn1VarArr, int i, int i2) {
        if (yn1VarArr != null) {
            for (int i3 = 0; i3 < yn1VarArr.length; i3++) {
                yn1 yn1Var = yn1VarArr[i3];
                yn1VarArr[i3] = new yn1(yn1Var.m9911for() + i, yn1Var.m9912new() + i2);
            }
        }
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ll, ld0, j41 {
        return decode(cfor, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
        this.f17569do.reset();
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ll, ld0, j41 {
        int iM21957try = cfor.m21957try() / 2;
        int iM21955new = cfor.m21955new() / 2;
        try {
            try {
                try {
                    try {
                        return this.f17569do.decode(cfor.m21950do(0, 0, iM21957try, iM21955new), map);
                    } catch (j41 unused) {
                        wn1 wn1VarDecode = this.f17569do.decode(cfor.m21950do(iM21957try, iM21955new, iM21957try, iM21955new), map);
                        m21974do(wn1VarDecode.m9243case(), iM21957try, iM21955new);
                        return wn1VarDecode;
                    }
                } catch (j41 unused2) {
                    int i = iM21957try / 2;
                    int i2 = iM21955new / 2;
                    wn1 wn1VarDecode2 = this.f17569do.decode(cfor.m21950do(i, i2, iM21957try, iM21955new), map);
                    m21974do(wn1VarDecode2.m9243case(), i, i2);
                    return wn1VarDecode2;
                }
            } catch (j41 unused3) {
                wn1 wn1VarDecode3 = this.f17569do.decode(cfor.m21950do(iM21957try, 0, iM21957try, iM21955new), map);
                m21974do(wn1VarDecode3.m9243case(), iM21957try, 0);
                return wn1VarDecode3;
            }
        } catch (j41 unused4) {
            wn1 wn1VarDecode4 = this.f17569do.decode(cfor.m21950do(0, iM21955new, iM21957try, iM21955new), map);
            m21974do(wn1VarDecode4.m9243case(), 0, iM21955new);
            return wn1VarDecode4;
        }
    }
}
