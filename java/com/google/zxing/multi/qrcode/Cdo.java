package com.google.zxing.multi.qrcode;

import android.support.v4.ei1;
import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.mx;
import android.support.v4.oz;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cfor;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.Result;
import com.google.zxing.multi.MultipleBarcodeReader;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.multi.qrcode.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo extends com.google.zxing.qrcode.Cdo implements MultipleBarcodeReader {

    /* renamed from: for, reason: not valid java name */
    private static final wn1[] f17579for = new wn1[0];

    /* renamed from: new, reason: not valid java name */
    private static final yn1[] f17580new = new yn1[0];

    /* renamed from: com.google.zxing.multi.qrcode.do$if, reason: invalid class name */
    public static final class Cif implements Serializable, Comparator<wn1> {
        private Cif() {
        }

        @Override // java.util.Comparator
        public int compare(wn1 wn1Var, wn1 wn1Var2) {
            Map<Cgoto, Object> mapM9251try = wn1Var.m9251try();
            Cgoto cgoto = Cgoto.STRUCTURED_APPEND_SEQUENCE;
            return Integer.compare(((Integer) mapM9251try.get(cgoto)).intValue(), ((Integer) wn1Var2.m9251try().get(cgoto)).intValue());
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static List<wn1> m21980new(List<wn1> list) {
        boolean z;
        Iterator<wn1> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (it.next().m9251try().containsKey(Cgoto.STRUCTURED_APPEND_SEQUENCE)) {
                z = true;
                break;
            }
        }
        if (!z) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList<wn1> arrayList2 = new ArrayList();
        for (wn1 wn1Var : list) {
            arrayList.add(wn1Var);
            if (wn1Var.m9251try().containsKey(Cgoto.STRUCTURED_APPEND_SEQUENCE)) {
                arrayList2.add(wn1Var);
            }
        }
        Collections.sort(arrayList2, new Cif());
        StringBuilder sb = new StringBuilder();
        int length = 0;
        int length2 = 0;
        for (wn1 wn1Var2 : arrayList2) {
            sb.append(wn1Var2.m9245else());
            length += wn1Var2.m9249new().length;
            Map<Cgoto, Object> mapM9251try = wn1Var2.m9251try();
            Cgoto cgoto = Cgoto.BYTE_SEGMENTS;
            if (mapM9251try.containsKey(cgoto)) {
                Iterator it2 = ((Iterable) wn1Var2.m9251try().get(cgoto)).iterator();
                while (it2.hasNext()) {
                    length2 += ((byte[]) it2.next()).length;
                }
            }
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = new byte[length2];
        int length3 = 0;
        int length4 = 0;
        for (wn1 wn1Var3 : arrayList2) {
            System.arraycopy(wn1Var3.m9249new(), 0, bArr, length3, wn1Var3.m9249new().length);
            length3 += wn1Var3.m9249new().length;
            Map<Cgoto, Object> mapM9251try2 = wn1Var3.m9251try();
            Cgoto cgoto2 = Cgoto.BYTE_SEGMENTS;
            if (mapM9251try2.containsKey(cgoto2)) {
                for (byte[] bArr3 : (Iterable) wn1Var3.m9251try().get(cgoto2)) {
                    System.arraycopy(bArr3, 0, bArr2, length4, bArr3.length);
                    length4 += bArr3.length;
                }
            }
        }
        wn1 wn1Var4 = new wn1(sb.toString(), bArr, f17580new, com.google.zxing.Cdo.QR_CODE);
        if (length2 > 0) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(bArr2);
            wn1Var4.m9242break(Cgoto.BYTE_SEGMENTS, arrayList3);
        }
        arrayList.add(wn1Var4);
        return arrayList;
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public wn1[] decodeMultiple(Cfor cfor) throws j41 {
        return decodeMultiple(cfor, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(Cfor cfor, Map<Cnew, ?> map) throws j41 {
        ArrayList arrayList = new ArrayList();
        for (oz ozVar : new com.google.zxing.multi.qrcode.detector.Cdo(cfor.m21954if()).m21977final(map)) {
            try {
                mx mxVarM22353for = m22393if().m22353for(ozVar.m5821do(), map);
                yn1[] yn1VarArrM5822if = ozVar.m5822if();
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
                arrayList.add(wn1Var);
            } catch (kl1 unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return f17579for;
        }
        List<wn1> listM21980new = m21980new(arrayList);
        return (wn1[]) listM21980new.toArray(new wn1[listM21980new.size()]);
    }
}
