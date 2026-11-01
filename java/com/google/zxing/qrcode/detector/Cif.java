package com.google.zxing.qrcode.detector;

import android.support.v4.bc0;
import android.support.v4.ci0;
import android.support.v4.dc0;
import android.support.v4.hd1;
import android.support.v4.j1;
import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.oz;
import android.support.v4.xx0;
import android.support.v4.yn1;
import android.support.v4.z8;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.qrcode.decoder.Cthis;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.detector.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private final z8 f17934do;

    /* renamed from: if, reason: not valid java name */
    private ResultPointCallback f17935if;

    public Cif(z8 z8Var) {
        this.f17934do = z8Var;
    }

    /* renamed from: catch, reason: not valid java name */
    private static z8 m22378catch(z8 z8Var, hd1 hd1Var, int i) throws j41 {
        return ci0.m933if().mo936new(z8Var, i, i, hd1Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0084, code lost:
    
        if (r15 != 2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        return android.support.v4.xx0.m9610if(r19, r6, r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        return Float.NaN;
     */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float m22379class(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Cif cif;
        boolean z;
        boolean z2;
        int i10 = 1;
        boolean z3 = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z3) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int iAbs = Math.abs(i7 - i5);
        int iAbs2 = Math.abs(i8 - i6);
        int i11 = (-iAbs) / 2;
        int i12 = i5 < i7 ? 1 : -1;
        int i13 = i6 < i8 ? 1 : -1;
        int i14 = i7 + i12;
        int i15 = i5;
        int i16 = i6;
        int i17 = 0;
        while (true) {
            if (i15 == i14) {
                i9 = i14;
                break;
            }
            int i18 = z3 ? i16 : i15;
            int i19 = z3 ? i15 : i16;
            if (i17 == i10) {
                cif = this;
                z = z3;
                i9 = i14;
                z2 = true;
            } else {
                cif = this;
                z = z3;
                i9 = i14;
                z2 = false;
            }
            if (z2 == cif.f17934do.m10105try(i18, i19)) {
                if (i17 == 2) {
                    return xx0.m9610if(i15, i16, i5, i6);
                }
                i17++;
            }
            i11 += iAbs2;
            if (i11 > 0) {
                if (i16 == i8) {
                    break;
                }
                i16 += i13;
                i11 -= iAbs;
            }
            i15 += i12;
            i14 = i9;
            z3 = z;
            i10 = 1;
        }
    }

    /* renamed from: const, reason: not valid java name */
    private float m22380const(int i, int i2, int i3, int i4) {
        float fM10091class;
        float fM10094goto;
        float fM22379class = m22379class(i, i2, i3, i4);
        int iM10091class = i - (i3 - i);
        int iM10094goto = 0;
        if (iM10091class < 0) {
            fM10091class = i / (i - iM10091class);
            iM10091class = 0;
        } else if (iM10091class >= this.f17934do.m10091class()) {
            fM10091class = ((this.f17934do.m10091class() - 1) - i) / (iM10091class - i);
            iM10091class = this.f17934do.m10091class() - 1;
        } else {
            fM10091class = 1.0f;
        }
        float f = i2;
        int i5 = (int) (f - ((i4 - i2) * fM10091class));
        if (i5 < 0) {
            fM10094goto = f / (i2 - i5);
        } else if (i5 >= this.f17934do.m10094goto()) {
            fM10094goto = ((this.f17934do.m10094goto() - 1) - i2) / (i5 - i2);
            iM10094goto = this.f17934do.m10094goto() - 1;
        } else {
            iM10094goto = i5;
            fM10094goto = 1.0f;
        }
        return (fM22379class + m22379class(i, i2, (int) (i + ((iM10091class - i) * fM10094goto)), iM10094goto)) - 1.0f;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m22381for(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, float f) throws j41 {
        int iM9609for = ((xx0.m9609for(yn1.m9909if(yn1Var, yn1Var2) / f) + xx0.m9609for(yn1.m9909if(yn1Var, yn1Var3) / f)) / 2) + 7;
        int i = iM9609for & 3;
        if (i == 0) {
            return iM9609for + 1;
        }
        if (i == 2) {
            return iM9609for - 1;
        }
        if (i != 3) {
            return iM9609for;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: if, reason: not valid java name */
    private float m22382if(yn1 yn1Var, yn1 yn1Var2) {
        float fM22380const = m22380const((int) yn1Var.m9911for(), (int) yn1Var.m9912new(), (int) yn1Var2.m9911for(), (int) yn1Var2.m9912new());
        float fM22380const2 = m22380const((int) yn1Var2.m9911for(), (int) yn1Var2.m9912new(), (int) yn1Var.m9911for(), (int) yn1Var.m9912new());
        return Float.isNaN(fM22380const) ? fM22380const2 / 7.0f : Float.isNaN(fM22380const2) ? fM22380const / 7.0f : (fM22380const + fM22380const2) / 14.0f;
    }

    /* renamed from: new, reason: not valid java name */
    private static hd1 m22383new(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4, int i) {
        float fM9911for;
        float fM9912new;
        float f;
        float f2 = i - 3.5f;
        if (yn1Var4 != null) {
            fM9911for = yn1Var4.m9911for();
            fM9912new = yn1Var4.m9912new();
            f = f2 - 3.0f;
        } else {
            fM9911for = (yn1Var2.m9911for() - yn1Var.m9911for()) + yn1Var3.m9911for();
            fM9912new = (yn1Var2.m9912new() - yn1Var.m9912new()) + yn1Var3.m9912new();
            f = f2;
        }
        return hd1.m2987if(3.5f, 3.5f, f2, 3.5f, f, f, 3.5f, f2, yn1Var.m9911for(), yn1Var.m9912new(), yn1Var2.m9911for(), yn1Var2.m9912new(), fM9911for, fM9912new, yn1Var3.m9911for(), yn1Var3.m9912new());
    }

    /* renamed from: break, reason: not valid java name */
    public final oz m22384break(dc0 dc0Var) throws ld0, j41 {
        bc0 bc0VarM1261if = dc0Var.m1261if();
        bc0 bc0VarM1260for = dc0Var.m1260for();
        bc0 bc0VarM1259do = dc0Var.m1259do();
        float fM22386do = m22386do(bc0VarM1261if, bc0VarM1260for, bc0VarM1259do);
        if (fM22386do < 1.0f) {
            throw j41.getNotFoundInstance();
        }
        int iM22381for = m22381for(bc0VarM1261if, bc0VarM1260for, bc0VarM1259do, fM22386do);
        Cthis cthisM22334else = Cthis.m22334else(iM22381for);
        int iM22343try = cthisM22334else.m22343try() - 7;
        j1 j1VarM22387else = null;
        if (cthisM22334else.m22342new().length > 0) {
            float fM9911for = (bc0VarM1260for.m9911for() - bc0VarM1261if.m9911for()) + bc0VarM1259do.m9911for();
            float fM9912new = (bc0VarM1260for.m9912new() - bc0VarM1261if.m9912new()) + bc0VarM1259do.m9912new();
            float f = 1.0f - (3.0f / iM22343try);
            int iM9911for = (int) (bc0VarM1261if.m9911for() + ((fM9911for - bc0VarM1261if.m9911for()) * f));
            int iM9912new = (int) (bc0VarM1261if.m9912new() + (f * (fM9912new - bc0VarM1261if.m9912new())));
            for (int i = 4; i <= 16; i <<= 1) {
                try {
                    j1VarM22387else = m22387else(fM22386do, iM9911for, iM9912new, i);
                    break;
                } catch (j41 unused) {
                }
            }
        }
        return new oz(m22378catch(this.f17934do, m22383new(bc0VarM1261if, bc0VarM1260for, bc0VarM1259do, j1VarM22387else, iM22381for), iM22381for), j1VarM22387else == null ? new yn1[]{bc0VarM1259do, bc0VarM1261if, bc0VarM1260for} : new yn1[]{bc0VarM1259do, bc0VarM1261if, bc0VarM1260for, j1VarM22387else});
    }

    /* renamed from: case, reason: not valid java name */
    public final oz m22385case(Map<Cnew, ?> map) throws ld0, j41 {
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(Cnew.NEED_RESULT_POINT_CALLBACK);
        this.f17935if = resultPointCallback;
        return m22384break(new Cfor(this.f17934do, resultPointCallback).m22371case(map));
    }

    /* renamed from: do, reason: not valid java name */
    public final float m22386do(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3) {
        return (m22382if(yn1Var, yn1Var2) + m22382if(yn1Var, yn1Var3)) / 2.0f;
    }

    /* renamed from: else, reason: not valid java name */
    public final j1 m22387else(float f, int i, int i2, float f2) throws j41 {
        int i3 = (int) (f2 * f);
        int iMax = Math.max(0, i - i3);
        int iMin = Math.min(this.f17934do.m10091class() - 1, i + i3) - iMax;
        float f3 = 3.0f * f;
        if (iMin < f3) {
            throw j41.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i2 - i3);
        int iMin2 = Math.min(this.f17934do.m10094goto() - 1, i2 + i3) - iMax2;
        if (iMin2 >= f3) {
            return new Cdo(this.f17934do, iMax, iMax2, iMin, iMin2, f, this.f17935if).m22360for();
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: goto, reason: not valid java name */
    public final z8 m22388goto() {
        return this.f17934do;
    }

    /* renamed from: this, reason: not valid java name */
    public final ResultPointCallback m22389this() {
        return this.f17935if;
    }

    /* renamed from: try, reason: not valid java name */
    public oz m22390try() throws ld0, j41 {
        return m22385case(null);
    }
}
