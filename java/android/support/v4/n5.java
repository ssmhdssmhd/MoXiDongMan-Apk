package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.Writer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* loaded from: classes2.dex */
public final class n5 implements Writer {
    /* renamed from: do, reason: not valid java name */
    private static z8 m5087do(String str, Cdo cdo, int i, int i2, Charset charset, int i3, int i4) {
        if (cdo == Cdo.AZTEC) {
            return m5088if(e70.m1674try(str.getBytes(charset), i3, i4), i, i2);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(cdo)));
    }

    /* renamed from: if, reason: not valid java name */
    private static z8 m5088if(k5 k5Var, int i, int i2) {
        z8 z8VarM4246for = k5Var.m4246for();
        if (z8VarM4246for == null) {
            throw new IllegalStateException();
        }
        int iM10091class = z8VarM4246for.m10091class();
        int iM10094goto = z8VarM4246for.m10094goto();
        int iMax = Math.max(i, iM10091class);
        int iMax2 = Math.max(i2, iM10094goto);
        int iMin = Math.min(iMax / iM10091class, iMax2 / iM10094goto);
        int i3 = (iMax - (iM10091class * iMin)) / 2;
        int i4 = (iMax2 - (iM10094goto * iMin)) / 2;
        z8 z8Var = new z8(iMax, iMax2);
        int i5 = 0;
        while (i5 < iM10094goto) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < iM10091class) {
                if (z8VarM4246for.m10105try(i7, i5)) {
                    z8Var.m10106while(i6, i4, iMin, iMin);
                }
                i7++;
                i6 += iMin;
            }
            i5++;
            i4 += iMin;
        }
        return z8Var;
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2) {
        return encode(str, cdo, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws NumberFormatException {
        Charset charset;
        int i3;
        int i4;
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        if (map != null) {
            Ctry ctry = Ctry.CHARACTER_SET;
            if (map.containsKey(ctry)) {
                charsetForName = Charset.forName(map.get(ctry).toString());
            }
            Ctry ctry2 = Ctry.ERROR_CORRECTION;
            int i5 = map.containsKey(ctry2) ? Integer.parseInt(map.get(ctry2).toString()) : 33;
            Ctry ctry3 = Ctry.AZTEC_LAYERS;
            if (map.containsKey(ctry3)) {
                charset = charsetForName;
                i3 = i5;
                i4 = Integer.parseInt(map.get(ctry3).toString());
                return m5087do(str, cdo, i, i2, charset, i3, i4);
            }
            charset = charsetForName;
            i3 = i5;
        } else {
            charset = charsetForName;
            i3 = 33;
        }
        i4 = 0;
        return m5087do(str, cdo, i, i2, charset, i3, i4);
    }
}
