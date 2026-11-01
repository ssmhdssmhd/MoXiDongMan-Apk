package com.google.zxing;

import android.support.v4.ey0;
import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.m5;
import android.support.v4.uw;
import android.support.v4.wn1;
import android.support.v4.y91;
import com.google.zxing.oned.Csuper;
import com.google.zxing.qrcode.Cdo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: com.google.zxing.case, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccase implements Reader {

    /* renamed from: do, reason: not valid java name */
    private Map<Cnew, ?> f17432do;

    /* renamed from: if, reason: not valid java name */
    private Reader[] f17433if;

    /* renamed from: do, reason: not valid java name */
    private wn1 m21780do(Cfor cfor) throws j41 {
        Reader[] readerArr = this.f17433if;
        if (readerArr != null) {
            for (Reader reader : readerArr) {
                try {
                    return reader.decode(cfor, this.f17432do);
                } catch (kl1 unused) {
                }
            }
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws j41 {
        m21781for(null);
        return m21780do(cfor);
    }

    /* renamed from: for, reason: not valid java name */
    public void m21781for(Map<Cnew, ?> map) {
        this.f17432do = map;
        boolean z = true;
        boolean z2 = map != null && map.containsKey(Cnew.TRY_HARDER);
        Collection collection = map == null ? null : (Collection) map.get(Cnew.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (!collection.contains(Cdo.UPC_A) && !collection.contains(Cdo.UPC_E) && !collection.contains(Cdo.EAN_13) && !collection.contains(Cdo.EAN_8) && !collection.contains(Cdo.CODABAR) && !collection.contains(Cdo.CODE_39) && !collection.contains(Cdo.CODE_93) && !collection.contains(Cdo.CODE_128) && !collection.contains(Cdo.ITF) && !collection.contains(Cdo.RSS_14) && !collection.contains(Cdo.RSS_EXPANDED)) {
                z = false;
            }
            if (z && !z2) {
                arrayList.add(new Csuper(map));
            }
            if (collection.contains(Cdo.QR_CODE)) {
                arrayList.add(new Cdo());
            }
            if (collection.contains(Cdo.DATA_MATRIX)) {
                arrayList.add(new uw());
            }
            if (collection.contains(Cdo.AZTEC)) {
                arrayList.add(new m5());
            }
            if (collection.contains(Cdo.PDF_417)) {
                arrayList.add(new y91());
            }
            if (collection.contains(Cdo.MAXICODE)) {
                arrayList.add(new ey0());
            }
            if (z && z2) {
                arrayList.add(new Csuper(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z2) {
                arrayList.add(new Csuper(map));
            }
            arrayList.add(new Cdo());
            arrayList.add(new uw());
            arrayList.add(new m5());
            arrayList.add(new y91());
            arrayList.add(new ey0());
            if (z2) {
                arrayList.add(new Csuper(map));
            }
        }
        this.f17433if = (Reader[]) arrayList.toArray(new Reader[arrayList.size()]);
    }

    /* renamed from: if, reason: not valid java name */
    public wn1 m21782if(Cfor cfor) throws j41 {
        if (this.f17433if == null) {
            m21781for(null);
        }
        return m21780do(cfor);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
        Reader[] readerArr = this.f17433if;
        if (readerArr != null) {
            for (Reader reader : readerArr) {
                reader.reset();
            }
        }
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws j41 {
        m21781for(map);
        return m21780do(cfor);
    }
}
