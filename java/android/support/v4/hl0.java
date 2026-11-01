package android.support.v4;

import com.google.zxing.Cdo;

/* loaded from: classes2.dex */
public final class hl0 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public gl0 mo243catch(wn1 wn1Var) {
        if (wn1Var.m9248if() != Cdo.EAN_13) {
            return null;
        }
        String strM9548for = xn1.m9548for(wn1Var);
        if (strM9548for.length() != 13) {
            return null;
        }
        if (strM9548for.startsWith("978") || strM9548for.startsWith("979")) {
            return new gl0(strM9548for);
        }
        return null;
    }
}
