package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.w8;
import com.google.zxing.Cdo;

/* renamed from: com.google.zxing.oned.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cgoto extends Cthrows {

    /* renamed from: class, reason: not valid java name */
    public static final int[] f17638class = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* renamed from: catch, reason: not valid java name */
    private final int[] f17639catch = new int[4];

    /* renamed from: while, reason: not valid java name */
    private static void m22016while(StringBuilder sb, int i) throws j41 {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == f17638class[i2]) {
                sb.insert(0, (char) (i2 + 48));
                return;
            }
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: break */
    public int mo21981break(w8 w8Var, int[] iArr, StringBuilder sb) throws j41 {
        int[] iArr2 = this.f17639catch;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iM9078class = w8Var.m9078class();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 6 && i < iM9078class; i3++) {
            int iM22147goto = Cthrows.m22147goto(w8Var, iArr2, i, Cthrows.f17760break);
            sb.append((char) ((iM22147goto % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (iM22147goto >= 10) {
                i2 |= 1 << (5 - i3);
            }
        }
        m22016while(sb, i2);
        int i5 = Cthrows.m22143class(w8Var, i, true, Cthrows.f17762else)[1];
        for (int i6 = 0; i6 < 6 && i5 < iM9078class; i6++) {
            sb.append((char) (Cthrows.m22147goto(w8Var, iArr2, i5, Cthrows.f17765this) + 48));
            for (int i7 : iArr2) {
                i5 += i7;
            }
        }
        return i5;
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: super */
    public Cdo mo21982super() {
        return Cdo.EAN_13;
    }
}
