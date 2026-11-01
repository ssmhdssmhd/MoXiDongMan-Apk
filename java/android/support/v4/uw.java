package android.support.v4;

import com.google.zxing.Cfor;
import com.google.zxing.Cgoto;
import com.google.zxing.Reader;
import com.google.zxing.datamatrix.decoder.Cnew;
import com.google.zxing.datamatrix.detector.Cdo;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class uw implements Reader {

    /* renamed from: if, reason: not valid java name */
    private static final yn1[] f7001if = new yn1[0];

    /* renamed from: do, reason: not valid java name */
    private final Cnew f7002do = new Cnew();

    /* renamed from: do, reason: not valid java name */
    private static z8 m8690do(z8 z8Var) throws j41 {
        int[] iArrM10090catch = z8Var.m10090catch();
        int[] iArrM10089case = z8Var.m10089case();
        if (iArrM10090catch == null || iArrM10089case == null) {
            throw j41.getNotFoundInstance();
        }
        int iM8691if = m8691if(iArrM10090catch, z8Var);
        int i = iArrM10090catch[1];
        int i2 = iArrM10089case[1];
        int i3 = iArrM10090catch[0];
        int i4 = ((iArrM10089case[0] - i3) + 1) / iM8691if;
        int i5 = ((i2 - i) + 1) / iM8691if;
        if (i4 <= 0 || i5 <= 0) {
            throw j41.getNotFoundInstance();
        }
        int i6 = iM8691if / 2;
        int i7 = i + i6;
        int i8 = i3 + i6;
        z8 z8Var2 = new z8(i4, i5);
        for (int i9 = 0; i9 < i5; i9++) {
            int i10 = (i9 * iM8691if) + i7;
            for (int i11 = 0; i11 < i4; i11++) {
                if (z8Var.m10105try((i11 * iM8691if) + i8, i10)) {
                    z8Var2.m10104throw(i11, i9);
                }
            }
        }
        return z8Var2;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m8691if(int[] iArr, z8 z8Var) throws j41 {
        int iM10091class = z8Var.m10091class();
        int i = iArr[0];
        int i2 = iArr[1];
        while (i < iM10091class && z8Var.m10105try(i, i2)) {
            i++;
        }
        if (i == iM10091class) {
            throw j41.getNotFoundInstance();
        }
        int i3 = i - iArr[0];
        if (i3 != 0) {
            return i3;
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ll, ld0, j41 {
        return decode(cfor, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor, Map<com.google.zxing.Cnew, ?> map) throws ll, ld0, j41 {
        yn1[] yn1VarArrM5822if;
        mx mxVarM21860if;
        if (map == null || !map.containsKey(com.google.zxing.Cnew.PURE_BARCODE)) {
            oz ozVarM21881for = new Cdo(cfor.m21954if()).m21881for();
            mx mxVarM21860if2 = this.f7002do.m21860if(ozVarM21881for.m5821do());
            yn1VarArrM5822if = ozVarM21881for.m5822if();
            mxVarM21860if = mxVarM21860if2;
        } else {
            mxVarM21860if = this.f7002do.m21860if(m8690do(cfor.m21954if()));
            yn1VarArrM5822if = f7001if;
        }
        wn1 wn1Var = new wn1(mxVarM21860if.m5029break(), mxVarM21860if.m5035else(), yn1VarArrM5822if, com.google.zxing.Cdo.DATA_MATRIX);
        List<byte[]> listM5034do = mxVarM21860if.m5034do();
        if (listM5034do != null) {
            wn1Var.m9242break(Cgoto.BYTE_SEGMENTS, listM5034do);
        }
        String strM5039if = mxVarM21860if.m5039if();
        if (strM5039if != null) {
            wn1Var.m9242break(Cgoto.ERROR_CORRECTION_LEVEL, strM5039if);
        }
        return wn1Var;
    }
}
