package android.support.v4;

import com.google.zxing.Cfor;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.aztec.detector.Cdo;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class m5 implements Reader {
    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ld0, j41 {
        return decode(cfor, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005e A[LOOP:0: B:33:0x005c->B:34:0x005e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008f  */
    @Override // com.google.zxing.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ld0, j41 {
        yn1[] yn1VarArrM5822if;
        yn1[] yn1VarArrM5822if2;
        ld0 ld0Var;
        yn1[] yn1VarArr;
        List<byte[]> listM5034do;
        String strM5039if;
        ResultPointCallback resultPointCallback;
        Cdo cdo = new Cdo(cfor.m21954if());
        mx mxVarM21736for = null;
        try {
            l5 l5VarM21755if = cdo.m21755if(false);
            yn1VarArrM5822if = l5VarM21755if.m5822if();
            try {
                yn1VarArrM5822if2 = yn1VarArrM5822if;
                ld0Var = null;
                mxVarM21736for = new com.google.zxing.aztec.decoder.Cdo().m21736for(l5VarM21755if);
                e = null;
            } catch (j41 e) {
                e = e;
                yn1VarArrM5822if2 = yn1VarArrM5822if;
                ld0Var = null;
                if (mxVarM21736for == null) {
                }
                yn1VarArr = yn1VarArrM5822if2;
                if (map != null) {
                    while (i < r0) {
                    }
                }
                wn1 wn1Var = new wn1(mxVarM21736for.m5029break(), mxVarM21736for.m5035else(), mxVarM21736for.m5043try(), yn1VarArr, com.google.zxing.Cdo.AZTEC, System.currentTimeMillis());
                listM5034do = mxVarM21736for.m5034do();
                if (listM5034do != null) {
                }
                strM5039if = mxVarM21736for.m5039if();
                if (strM5039if != null) {
                }
                return wn1Var;
            } catch (ld0 e2) {
                e = e2;
                yn1VarArrM5822if2 = yn1VarArrM5822if;
                ld0Var = e;
                e = null;
                if (mxVarM21736for == null) {
                }
                yn1VarArr = yn1VarArrM5822if2;
                if (map != null) {
                }
                wn1 wn1Var2 = new wn1(mxVarM21736for.m5029break(), mxVarM21736for.m5035else(), mxVarM21736for.m5043try(), yn1VarArr, com.google.zxing.Cdo.AZTEC, System.currentTimeMillis());
                listM5034do = mxVarM21736for.m5034do();
                if (listM5034do != null) {
                }
                strM5039if = mxVarM21736for.m5039if();
                if (strM5039if != null) {
                }
                return wn1Var2;
            }
        } catch (j41 e3) {
            e = e3;
            yn1VarArrM5822if = null;
        } catch (ld0 e4) {
            e = e4;
            yn1VarArrM5822if = null;
        }
        if (mxVarM21736for == null) {
            try {
                l5 l5VarM21755if2 = cdo.m21755if(true);
                yn1VarArrM5822if2 = l5VarM21755if2.m5822if();
                mxVarM21736for = new com.google.zxing.aztec.decoder.Cdo().m21736for(l5VarM21755if2);
            } catch (j41 | ld0 e5) {
                if (e != null) {
                    throw e;
                }
                if (ld0Var != null) {
                    throw ld0Var;
                }
                throw e5;
            }
        }
        yn1VarArr = yn1VarArrM5822if2;
        if (map != null && (resultPointCallback = (ResultPointCallback) map.get(Cnew.NEED_RESULT_POINT_CALLBACK)) != null) {
            for (yn1 yn1Var : yn1VarArr) {
                resultPointCallback.foundPossibleResultPoint(yn1Var);
            }
        }
        wn1 wn1Var22 = new wn1(mxVarM21736for.m5029break(), mxVarM21736for.m5035else(), mxVarM21736for.m5043try(), yn1VarArr, com.google.zxing.Cdo.AZTEC, System.currentTimeMillis());
        listM5034do = mxVarM21736for.m5034do();
        if (listM5034do != null) {
            wn1Var22.m9242break(Cgoto.BYTE_SEGMENTS, listM5034do);
        }
        strM5039if = mxVarM21736for.m5039if();
        if (strM5039if != null) {
            wn1Var22.m9242break(Cgoto.ERROR_CORRECTION_LEVEL, strM5039if);
        }
        return wn1Var22;
    }
}
