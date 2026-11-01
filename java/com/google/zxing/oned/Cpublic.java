package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.Writer;
import java.util.Map;

/* renamed from: com.google.zxing.oned.public, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cpublic implements Writer {

    /* renamed from: do, reason: not valid java name */
    private final Cthis f17664do = new Cthis();

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2) throws ig2 {
        return encode(str, cdo, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        if (cdo == Cdo.UPC_A) {
            return this.f17664do.encode("0".concat(String.valueOf(str)), Cdo.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(cdo)));
    }
}
