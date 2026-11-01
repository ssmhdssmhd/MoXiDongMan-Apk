package com.google.zxing.aztec.encoder;

import android.support.v4.ca2;
import android.support.v4.w8;

/* renamed from: com.google.zxing.aztec.encoder.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo extends Ctry {

    /* renamed from: for, reason: not valid java name */
    private final short f17410for;

    /* renamed from: new, reason: not valid java name */
    private final short f17411new;

    public Cdo(Ctry ctry, int i, int i2) {
        super(ctry);
        this.f17410for = (short) i;
        this.f17411new = (short) i2;
    }

    @Override // com.google.zxing.aztec.encoder.Ctry
    /* renamed from: for, reason: not valid java name */
    public void mo21759for(w8 w8Var, byte[] bArr) {
        int i = 0;
        while (true) {
            short s = this.f17411new;
            if (i >= s) {
                return;
            }
            if (i == 0 || (i == 31 && s <= 62)) {
                w8Var.m9083for(31, 5);
                short s2 = this.f17411new;
                if (s2 > 62) {
                    w8Var.m9083for(s2 - 31, 16);
                } else if (i == 0) {
                    w8Var.m9083for(Math.min((int) s2, 31), 5);
                } else {
                    w8Var.m9083for(s2 - 31, 5);
                }
            }
            w8Var.m9083for(bArr[this.f17410for + i], 8);
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.f17410for);
        sb.append("::");
        sb.append((this.f17410for + this.f17411new) - 1);
        sb.append(ca2.f702try);
        return sb.toString();
    }
}
