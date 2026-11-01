package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.Writer;
import com.google.zxing.datamatrix.encoder.Celse;
import com.google.zxing.datamatrix.encoder.Cgoto;
import com.google.zxing.datamatrix.encoder.Cthis;
import java.util.Map;

/* loaded from: classes2.dex */
public final class vw implements Writer {
    /* renamed from: do, reason: not valid java name */
    private static z8 m8987do(zd zdVar, int i, int i2) {
        z8 z8Var;
        int iM10160try = zdVar.m10160try();
        int iM10159new = zdVar.m10159new();
        int iMax = Math.max(i, iM10160try);
        int iMax2 = Math.max(i2, iM10159new);
        int iMin = Math.min(iMax / iM10160try, iMax2 / iM10159new);
        int i3 = (iMax - (iM10160try * iMin)) / 2;
        int i4 = (iMax2 - (iM10159new * iMin)) / 2;
        if (i2 < iM10159new || i < iM10160try) {
            z8Var = new z8(iM10160try, iM10159new);
            i3 = 0;
            i4 = 0;
        } else {
            z8Var = new z8(i, i2);
        }
        z8Var.m10095if();
        int i5 = 0;
        while (i5 < iM10159new) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < iM10160try) {
                if (zdVar.m10158if(i7, i5) == 1) {
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

    /* renamed from: if, reason: not valid java name */
    private static z8 m8988if(ty tyVar, Cgoto cgoto, int i, int i2) {
        int iM21943this = cgoto.m21943this();
        int iM21940goto = cgoto.m21940goto();
        zd zdVar = new zd(cgoto.m21936catch(), cgoto.m21935break());
        int i3 = 0;
        for (int i4 = 0; i4 < iM21940goto; i4++) {
            if (i4 % cgoto.f17538try == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < cgoto.m21936catch(); i6++) {
                    zdVar.m10157goto(i5, i3, i6 % 2 == 0);
                    i5++;
                }
                i3++;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < iM21943this; i8++) {
                if (i8 % cgoto.f17537new == 0) {
                    zdVar.m10157goto(i7, i3, true);
                    i7++;
                }
                zdVar.m10157goto(i7, i3, tyVar.m8158try(i8, i4));
                i7++;
                int i9 = cgoto.f17537new;
                if (i8 % i9 == i9 - 1) {
                    zdVar.m10157goto(i7, i3, i4 % 2 == 0);
                    i7++;
                }
            }
            i3++;
            int i10 = cgoto.f17538try;
            if (i4 % i10 == i10 - 1) {
                int i11 = 0;
                for (int i12 = 0; i12 < cgoto.m21936catch(); i12++) {
                    zdVar.m10157goto(i11, i3, true);
                    i11++;
                }
                i3++;
            }
        }
        return m8987do(zdVar, i, i2);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2) {
        return encode(str, cdo, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) {
        d10 d10Var;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (cdo != Cdo.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(cdo)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i + 'x' + i2);
        }
        Cthis cthis = Cthis.FORCE_NONE;
        d10 d10Var2 = null;
        if (map != null) {
            Cthis cthis2 = (Cthis) map.get(Ctry.DATA_MATRIX_SHAPE);
            if (cthis2 != null) {
                cthis = cthis2;
            }
            d10 d10Var3 = (d10) map.get(Ctry.MIN_SIZE);
            if (d10Var3 == null) {
                d10Var3 = null;
            }
            d10Var = (d10) map.get(Ctry.MAX_SIZE);
            if (d10Var == null) {
                d10Var = null;
            }
            d10Var2 = d10Var3;
        } else {
            d10Var = null;
        }
        String strM21916for = Celse.m21916for(str, cthis, d10Var2, d10Var);
        Cgoto cgotoM21932super = Cgoto.m21932super(strM21916for.length(), cthis, d10Var2, d10Var, true);
        ty tyVar = new ty(h80.m2965for(strM21916for, cgotoM21932super), cgotoM21932super.m21943this(), cgotoM21932super.m21940goto());
        tyVar.m8155catch();
        return m8988if(tyVar, cgotoM21932super, i, i2);
    }
}
