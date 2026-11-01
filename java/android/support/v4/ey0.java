package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import com.google.zxing.maxicode.decoder.Cfor;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ey0 implements Reader {

    /* renamed from: for, reason: not valid java name */
    private static final int f1622for = 30;

    /* renamed from: if, reason: not valid java name */
    private static final yn1[] f1623if = new yn1[0];

    /* renamed from: new, reason: not valid java name */
    private static final int f1624new = 33;

    /* renamed from: do, reason: not valid java name */
    private final Cfor f1625do = new Cfor();

    /* renamed from: do, reason: not valid java name */
    private static z8 m2073do(z8 z8Var) throws j41 {
        int[] iArrM10092else = z8Var.m10092else();
        if (iArrM10092else == null) {
            throw j41.getNotFoundInstance();
        }
        int i = iArrM10092else[0];
        int i2 = iArrM10092else[1];
        int i3 = iArrM10092else[2];
        int i4 = iArrM10092else[3];
        z8 z8Var2 = new z8(30, 33);
        for (int i5 = 0; i5 < 33; i5++) {
            int i6 = (((i5 * i4) + (i4 / 2)) / 33) + i2;
            for (int i7 = 0; i7 < 30; i7++) {
                if (z8Var.m10105try(((((i7 * i3) + (i3 / 2)) + (((i5 & 1) * i3) / 2)) / 30) + i, i6)) {
                    z8Var2.m10104throw(i7, i5);
                }
            }
        }
        return z8Var2;
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(com.google.zxing.Cfor cfor) throws ll, ld0, j41 {
        return decode(cfor, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(com.google.zxing.Cfor cfor, Map<Cnew, ?> map) throws ll, ld0, j41 {
        if (map == null || !map.containsKey(Cnew.PURE_BARCODE)) {
            throw j41.getNotFoundInstance();
        }
        mx mxVarM21963for = this.f1625do.m21963for(m2073do(cfor.m21954if()), map);
        wn1 wn1Var = new wn1(mxVarM21963for.m5029break(), mxVarM21963for.m5035else(), f1623if, Cdo.MAXICODE);
        String strM5039if = mxVarM21963for.m5039if();
        if (strM5039if != null) {
            wn1Var.m9242break(Cgoto.ERROR_CORRECTION_LEVEL, strM5039if);
        }
        return wn1Var;
    }
}
