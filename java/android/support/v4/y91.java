package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.Cfor;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.pdf417.decoder.Cbreak;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes2.dex */
public final class y91 implements Reader, MultipleBarcodeReader {
    /* renamed from: do, reason: not valid java name */
    private static Result[] m9793do(Cfor cfor, Map<Cnew, ?> map, boolean z) throws ll, ld0, j41 {
        ArrayList arrayList = new ArrayList();
        x91 x91VarM5423if = nz.m5423if(cfor, map, z);
        for (yn1[] yn1VarArr : x91VarM5423if.m9440if()) {
            mx mxVarM22174this = Cbreak.m22174this(x91VarM5423if.m9439do(), yn1VarArr[4], yn1VarArr[5], yn1VarArr[6], yn1VarArr[7], m9796new(yn1VarArr), m9795if(yn1VarArr));
            wn1 wn1Var = new wn1(mxVarM22174this.m5029break(), mxVarM22174this.m5035else(), yn1VarArr, Cdo.PDF_417);
            wn1Var.m9242break(Cgoto.ERROR_CORRECTION_LEVEL, mxVarM22174this.m5039if());
            z91 z91Var = (z91) mxVarM22174this.m5030case();
            if (z91Var != null) {
                wn1Var.m9242break(Cgoto.PDF417_EXTRA_METADATA, z91Var);
            }
            arrayList.add(wn1Var);
        }
        return (wn1[]) arrayList.toArray(new wn1[arrayList.size()]);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m9794for(yn1 yn1Var, yn1 yn1Var2) {
        if (yn1Var == null || yn1Var2 == null) {
            return 0;
        }
        return (int) Math.abs(yn1Var.m9911for() - yn1Var2.m9911for());
    }

    /* renamed from: if, reason: not valid java name */
    private static int m9795if(yn1[] yn1VarArr) {
        return Math.max(Math.max(m9794for(yn1VarArr[0], yn1VarArr[4]), (m9794for(yn1VarArr[6], yn1VarArr[2]) * 17) / 18), Math.max(m9794for(yn1VarArr[1], yn1VarArr[5]), (m9794for(yn1VarArr[7], yn1VarArr[3]) * 17) / 18));
    }

    /* renamed from: new, reason: not valid java name */
    private static int m9796new(yn1[] yn1VarArr) {
        return Math.min(Math.min(m9797try(yn1VarArr[0], yn1VarArr[4]), (m9797try(yn1VarArr[6], yn1VarArr[2]) * 17) / 18), Math.min(m9797try(yn1VarArr[1], yn1VarArr[5]), (m9797try(yn1VarArr[7], yn1VarArr[3]) * 17) / 18));
    }

    /* renamed from: try, reason: not valid java name */
    private static int m9797try(yn1 yn1Var, yn1 yn1Var2) {
        if (yn1Var == null || yn1Var2 == null) {
            return Integer.MAX_VALUE;
        }
        return (int) Math.abs(yn1Var.m9911for() - yn1Var2.m9911for());
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ll, ld0, j41 {
        return decode(cfor, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public wn1[] decodeMultiple(Cfor cfor) throws j41 {
        return decodeMultiple(cfor, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ll, ld0, j41 {
        wn1[] wn1VarArrM9793do = m9793do(cfor, map, false);
        if (wn1VarArrM9793do == null || wn1VarArrM9793do.length == 0 || wn1VarArrM9793do[0] == null) {
            throw j41.getNotFoundInstance();
        }
        return wn1VarArrM9793do[0];
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(Cfor cfor, Map<Cnew, ?> map) throws j41 {
        try {
            return m9793do(cfor, map, true);
        } catch (ld0 | ll unused) {
            throw j41.getNotFoundInstance();
        }
    }
}
