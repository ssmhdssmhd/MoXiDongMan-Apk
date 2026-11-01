package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.w8;
import android.support.v4.wn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cfor;
import com.google.zxing.Cnew;
import java.util.Map;

/* renamed from: com.google.zxing.oned.native, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnative extends Cthrows {

    /* renamed from: catch, reason: not valid java name */
    private final Cthrows f17656catch = new Cgoto();

    /* renamed from: while, reason: not valid java name */
    private static wn1 m22021while(wn1 wn1Var) throws ld0 {
        String strM9245else = wn1Var.m9245else();
        if (strM9245else.charAt(0) != '0') {
            throw ld0.getFormatInstance();
        }
        wn1 wn1Var2 = new wn1(strM9245else.substring(1), null, wn1Var.m9243case(), Cdo.UPC_A);
        if (wn1Var.m9251try() != null) {
            wn1Var2.m9250this(wn1Var.m9251try());
        }
        return wn1Var2;
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: break */
    public int mo21981break(w8 w8Var, int[] iArr, StringBuilder sb) throws j41 {
        return this.f17656catch.mo21981break(w8Var, iArr, sb);
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: catch, reason: not valid java name */
    public wn1 mo22022catch(int i, w8 w8Var, int[] iArr, Map<Cnew, ?> map) throws ll, ld0, j41 {
        return m22021while(this.f17656catch.mo22022catch(i, w8Var, iArr, map));
    }

    @Override // com.google.zxing.oned.Cwhile, com.google.zxing.Reader
    public wn1 decode(Cfor cfor) throws ld0, j41 {
        return m22021while(this.f17656catch.decode(cfor));
    }

    @Override // com.google.zxing.oned.Cthrows, com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws ll, ld0, j41 {
        return m22021while(this.f17656catch.mo21989do(i, w8Var, map));
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: super */
    public Cdo mo21982super() {
        return Cdo.UPC_A;
    }

    @Override // com.google.zxing.oned.Cwhile, com.google.zxing.Reader
    public wn1 decode(Cfor cfor, Map<Cnew, ?> map) throws ld0, j41 {
        return m22021while(this.f17656catch.decode(cfor, map));
    }
}
