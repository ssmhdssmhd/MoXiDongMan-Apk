package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.Writer;
import com.google.zxing.pdf417.encoder.Cfor;
import com.google.zxing.pdf417.encoder.Cnew;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes2.dex */
public final class aa1 implements Writer {

    /* renamed from: do, reason: not valid java name */
    private static final int f68do = 30;

    /* renamed from: if, reason: not valid java name */
    private static final int f69if = 2;

    /* renamed from: do, reason: not valid java name */
    private static z8 m115do(byte[][] bArr, int i) {
        int i2 = i * 2;
        z8 z8Var = new z8(bArr[0].length + i2, bArr.length + i2);
        z8Var.m10095if();
        int iM10094goto = (z8Var.m10094goto() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte[] bArr2 = bArr[i3];
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr2[i4] == 1) {
                    z8Var.m10104throw(i4 + i, iM10094goto);
                }
            }
            i3++;
            iM10094goto--;
        }
        return z8Var;
    }

    /* renamed from: for, reason: not valid java name */
    private static byte[][] m116for(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) byte.class, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private static z8 m117if(Cnew cnew, String str, int i, int i2, int i3, int i4) throws ig2 {
        boolean z;
        cnew.m22307try(str, i);
        byte[][] bArrM22289for = cnew.m22303case().m22289for(1, 4);
        if ((i3 > i2) != (bArrM22289for[0].length < bArrM22289for.length)) {
            bArrM22289for = m116for(bArrM22289for);
            z = true;
        } else {
            z = false;
        }
        int length = i2 / bArrM22289for[0].length;
        int length2 = i3 / bArrM22289for.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return m115do(bArrM22289for, i4);
        }
        byte[][] bArrM22289for2 = cnew.m22303case().m22289for(length, length << 2);
        if (z) {
            bArrM22289for2 = m116for(bArrM22289for2);
        }
        return m115do(bArrM22289for2, i4);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        int i3;
        int i4;
        if (cdo != Cdo.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(cdo)));
        }
        Cnew cnew = new Cnew();
        if (map != null) {
            Ctry ctry = Ctry.PDF417_COMPACT;
            if (map.containsKey(ctry)) {
                cnew.m22305goto(Boolean.valueOf(map.get(ctry).toString()).booleanValue());
            }
            Ctry ctry2 = Ctry.PDF417_COMPACTION;
            if (map.containsKey(ctry2)) {
                cnew.m22306this(Cfor.valueOf(map.get(ctry2).toString()));
            }
            Ctry ctry3 = Ctry.PDF417_DIMENSIONS;
            if (map.containsKey(ctry3)) {
                f10 f10Var = (f10) map.get(ctry3);
                cnew.m22302break(f10Var.m2086do(), f10Var.m2087for(), f10Var.m2088if(), f10Var.m2089new());
            }
            Ctry ctry4 = Ctry.MARGIN;
            int i5 = map.containsKey(ctry4) ? Integer.parseInt(map.get(ctry4).toString()) : 30;
            Ctry ctry5 = Ctry.ERROR_CORRECTION;
            int i6 = map.containsKey(ctry5) ? Integer.parseInt(map.get(ctry5).toString()) : 2;
            Ctry ctry6 = Ctry.CHARACTER_SET;
            if (map.containsKey(ctry6)) {
                cnew.m22304catch(Charset.forName(map.get(ctry6).toString()));
            }
            i4 = i5;
            i3 = i6;
        } else {
            i3 = 2;
            i4 = 30;
        }
        return m117if(cnew, str, i3, i, i2, i4);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2) throws ig2 {
        return encode(str, cdo, i, i2, null);
    }
}
