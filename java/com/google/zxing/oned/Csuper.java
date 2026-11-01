package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.w8;
import android.support.v4.wn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cnew;
import com.google.zxing.oned.rss.Cfor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.zxing.oned.super, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Csuper extends Cwhile {

    /* renamed from: do, reason: not valid java name */
    private final Cwhile[] f17754do;

    public Csuper(Map<Cnew, ?> map) {
        Collection collection = map == null ? null : (Collection) map.get(Cnew.POSSIBLE_FORMATS);
        boolean z = (map == null || map.get(Cnew.ASSUME_CODE_39_CHECK_DIGIT) == null) ? false : true;
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(Cdo.EAN_13) || collection.contains(Cdo.UPC_A) || collection.contains(Cdo.EAN_8) || collection.contains(Cdo.UPC_E)) {
                arrayList.add(new Cthrow(map));
            }
            if (collection.contains(Cdo.CODE_39)) {
                arrayList.add(new Cnew(z));
            }
            if (collection.contains(Cdo.CODE_93)) {
                arrayList.add(new Ccase());
            }
            if (collection.contains(Cdo.CODE_128)) {
                arrayList.add(new Cif());
            }
            if (collection.contains(Cdo.ITF)) {
                arrayList.add(new Cconst());
            }
            if (collection.contains(Cdo.CODABAR)) {
                arrayList.add(new Cdo());
            }
            if (collection.contains(Cdo.RSS_14)) {
                arrayList.add(new Cfor());
            }
            if (collection.contains(Cdo.RSS_EXPANDED)) {
                arrayList.add(new com.google.zxing.oned.rss.expanded.Cnew());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new Cthrow(map));
            arrayList.add(new Cnew());
            arrayList.add(new Cdo());
            arrayList.add(new Ccase());
            arrayList.add(new Cif());
            arrayList.add(new Cconst());
            arrayList.add(new Cfor());
            arrayList.add(new com.google.zxing.oned.rss.expanded.Cnew());
        }
        this.f17754do = (Cwhile[]) arrayList.toArray(new Cwhile[arrayList.size()]);
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws j41 {
        for (Cwhile cwhile : this.f17754do) {
            try {
                return cwhile.mo21989do(i, w8Var, map);
            } catch (kl1 unused) {
            }
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.Cwhile, com.google.zxing.Reader
    public void reset() {
        for (Cwhile cwhile : this.f17754do) {
            cwhile.reset();
        }
    }
}
