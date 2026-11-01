package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.w8;
import android.support.v4.wn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cnew;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.zxing.oned.throw, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrow extends Cwhile {

    /* renamed from: do, reason: not valid java name */
    private final Cthrows[] f17759do;

    public Cthrow(Map<Cnew, ?> map) {
        Collection collection = map == null ? null : (Collection) map.get(Cnew.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(Cdo.EAN_13)) {
                arrayList.add(new Cgoto());
            } else if (collection.contains(Cdo.UPC_A)) {
                arrayList.add(new Cnative());
            }
            if (collection.contains(Cdo.EAN_8)) {
                arrayList.add(new Cbreak());
            }
            if (collection.contains(Cdo.UPC_E)) {
                arrayList.add(new Cdefault());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new Cgoto());
            arrayList.add(new Cbreak());
            arrayList.add(new Cdefault());
        }
        this.f17759do = (Cthrows[]) arrayList.toArray(new Cthrows[arrayList.size()]);
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws j41 {
        int[] iArrM22146final = Cthrows.m22146final(w8Var);
        for (Cthrows cthrows : this.f17759do) {
            try {
                wn1 wn1VarMo22022catch = cthrows.mo22022catch(i, w8Var, iArrM22146final, map);
                boolean z = wn1VarMo22022catch.m9248if() == Cdo.EAN_13 && wn1VarMo22022catch.m9245else().charAt(0) == '0';
                Collection collection = map == null ? null : (Collection) map.get(Cnew.POSSIBLE_FORMATS);
                boolean z2 = collection == null || collection.contains(Cdo.UPC_A);
                if (!z || !z2) {
                    return wn1VarMo22022catch;
                }
                wn1 wn1Var = new wn1(wn1VarMo22022catch.m9245else().substring(1), wn1VarMo22022catch.m9249new(), wn1VarMo22022catch.m9243case(), Cdo.UPC_A);
                wn1Var.m9250this(wn1VarMo22022catch.m9251try());
                return wn1Var;
            } catch (kl1 unused) {
            }
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.Cwhile, com.google.zxing.Reader
    public void reset() {
        for (Cthrows cthrows : this.f17759do) {
            cthrows.reset();
        }
    }
}
