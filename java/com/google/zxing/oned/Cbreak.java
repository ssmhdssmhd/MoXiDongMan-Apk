package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.w8;
import com.google.zxing.Cdo;

/* renamed from: com.google.zxing.oned.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak extends Cthrows {

    /* renamed from: catch, reason: not valid java name */
    private final int[] f17582catch = new int[4];

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: break, reason: not valid java name */
    public int mo21981break(w8 w8Var, int[] iArr, StringBuilder sb) throws j41 {
        int[] iArr2 = this.f17582catch;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM9078class = w8Var.m9078class();
        int i = iArr[1];
        for (int i2 = 0; i2 < 4 && i < iM9078class; i2++) {
            sb.append((char) (Cthrows.m22147goto(w8Var, iArr2, i, Cthrows.f17765this) + 48));
            for (int i3 : iArr2) {
                i += i3;
            }
        }
        int i4 = Cthrows.m22143class(w8Var, i, true, Cthrows.f17762else)[1];
        for (int i5 = 0; i5 < 4 && i4 < iM9078class; i5++) {
            sb.append((char) (Cthrows.m22147goto(w8Var, iArr2, i4, Cthrows.f17765this) + 48));
            for (int i6 : iArr2) {
                i4 += i6;
            }
        }
        return i4;
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: super, reason: not valid java name */
    public Cdo mo21982super() {
        return Cdo.EAN_8;
    }
}
