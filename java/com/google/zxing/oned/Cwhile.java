package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.kl1;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.yn1;
import com.google.zxing.Cfor;
import com.google.zxing.Cgoto;
import com.google.zxing.Cnew;
import com.google.zxing.Reader;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* renamed from: com.google.zxing.oned.while, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cwhile implements Reader {
    /* renamed from: for, reason: not valid java name */
    public static float m22151for(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0075  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private wn1 m22152if(Cfor cfor, Map<Cnew, ?> map) throws j41 {
        Cwhile cwhile;
        Map<Cnew, ?> map2;
        int i;
        Map<Cnew, ?> map3 = map;
        int iM21957try = cfor.m21957try();
        int iM21955new = cfor.m21955new();
        w8 w8Var = new w8(iM21957try);
        char c = 0;
        int i2 = 1;
        boolean z = map3 != null && map3.containsKey(Cnew.TRY_HARDER);
        int iMax = Math.max(1, iM21955new >> (z ? 8 : 5));
        int i3 = z ? iM21955new : 15;
        int i4 = iM21955new / 2;
        int i5 = 0;
        while (i5 < i3) {
            int i6 = i5 + 1;
            int i7 = i6 / 2;
            if (!((i5 & 1) == 0)) {
                i7 = -i7;
            }
            int i8 = (i7 * iMax) + i4;
            if (i8 < 0 || i8 >= iM21955new) {
                break;
            }
            try {
                w8Var = cfor.m21952for(i8, w8Var);
                int i9 = 0;
                while (i9 < 2) {
                    if (i9 == i2) {
                        w8Var.m9092throw();
                        if (map3 != null) {
                            Cnew cnew = Cnew.NEED_RESULT_POINT_CALLBACK;
                            if (map3.containsKey(cnew)) {
                                EnumMap enumMap = new EnumMap(Cnew.class);
                                enumMap.putAll(map3);
                                enumMap.remove(cnew);
                                cwhile = this;
                                map3 = enumMap;
                            } else {
                                cwhile = this;
                            }
                        }
                    }
                    try {
                        wn1 wn1VarMo21989do = cwhile.mo21989do(i8, w8Var, map3);
                        if (i9 == i2) {
                            wn1VarMo21989do.m9242break(Cgoto.ORIENTATION, 180);
                            yn1[] yn1VarArrM9243case = wn1VarMo21989do.m9243case();
                            if (yn1VarArrM9243case != null) {
                                map2 = map3;
                                float f = iM21957try;
                                try {
                                    i = iM21957try;
                                    try {
                                        yn1VarArrM9243case[0] = new yn1((f - yn1VarArrM9243case[c].m9911for()) - 1.0f, yn1VarArrM9243case[c].m9912new());
                                    } catch (kl1 unused) {
                                        i9++;
                                        map3 = map2;
                                        iM21957try = i;
                                        c = 0;
                                        i2 = 1;
                                    }
                                    try {
                                        yn1VarArrM9243case[1] = new yn1((f - yn1VarArrM9243case[1].m9911for()) - 1.0f, yn1VarArrM9243case[1].m9912new());
                                    } catch (kl1 unused2) {
                                        continue;
                                        i9++;
                                        map3 = map2;
                                        iM21957try = i;
                                        c = 0;
                                        i2 = 1;
                                    }
                                } catch (kl1 unused3) {
                                    i = iM21957try;
                                    i9++;
                                    map3 = map2;
                                    iM21957try = i;
                                    c = 0;
                                    i2 = 1;
                                }
                            }
                        }
                        return wn1VarMo21989do;
                    } catch (kl1 unused4) {
                        map2 = map3;
                    }
                }
            } catch (j41 unused5) {
            }
            i5 = i6;
            iM21957try = iM21957try;
            c = 0;
            i2 = 1;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m22153new(w8 w8Var, int i, int[] iArr) throws j41 {
        int length = iArr.length;
        int i2 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int iM9078class = w8Var.m9078class();
        if (i >= iM9078class) {
            throw j41.getNotFoundInstance();
        }
        boolean z = !w8Var.m9084goto(i);
        while (i < iM9078class) {
            if (w8Var.m9084goto(i) == z) {
                i2++;
                if (i2 == length) {
                    break;
                }
                iArr[i2] = 1;
                z = !z;
            } else {
                iArr[i2] = iArr[i2] + 1;
            }
            i++;
        }
        if (i2 != length) {
            if (i2 != length - 1 || i != iM9078class) {
                throw j41.getNotFoundInstance();
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m22154try(w8 w8Var, int i, int[] iArr) throws j41 {
        int length = iArr.length;
        boolean zM9084goto = w8Var.m9084goto(i);
        while (i > 0 && length >= 0) {
            i--;
            if (w8Var.m9084goto(i) != zM9084goto) {
                length--;
                zM9084goto = !zM9084goto;
            }
        }
        if (length >= 0) {
            throw j41.getNotFoundInstance();
        }
        m22153new(w8Var, i + 1, iArr);
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ld0, j41 {
        return decode(cfor, null);
    }

    /* renamed from: do */
    public abstract wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws ll, ld0, j41;

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ld0, j41 {
        try {
            return m22152if(cfor, map);
        } catch (j41 e) {
            if (!(map != null && map.containsKey(Cnew.TRY_HARDER)) || !cfor.m21951else()) {
                throw e;
            }
            Cfor cforM21953goto = cfor.m21953goto();
            wn1 wn1VarM22152if = m22152if(cforM21953goto, map);
            Map<Cgoto, Object> mapM9251try = wn1VarM22152if.m9251try();
            int iIntValue = 270;
            if (mapM9251try != null) {
                Cgoto cgoto = Cgoto.ORIENTATION;
                if (mapM9251try.containsKey(cgoto)) {
                    iIntValue = (((Integer) mapM9251try.get(cgoto)).intValue() + 270) % FunGameBattleCityHeader.u;
                }
            }
            wn1VarM22152if.m9242break(Cgoto.ORIENTATION, Integer.valueOf(iIntValue));
            yn1[] yn1VarArrM9243case = wn1VarM22152if.m9243case();
            if (yn1VarArrM9243case != null) {
                int iM21955new = cforM21953goto.m21955new();
                for (int i = 0; i < yn1VarArrM9243case.length; i++) {
                    yn1VarArrM9243case[i] = new yn1((iM21955new - yn1VarArrM9243case[i].m9912new()) - 1.0f, yn1VarArrM9243case[i].m9911for());
                }
            }
            return wn1VarM22152if;
        }
    }
}
