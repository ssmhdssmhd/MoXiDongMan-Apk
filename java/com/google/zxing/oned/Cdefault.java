package com.google.zxing.oned;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.w8;
import com.google.zxing.Cdo;

/* renamed from: com.google.zxing.oned.default, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdefault extends Cthrows {

    /* renamed from: class, reason: not valid java name */
    private static final int[] f17602class = {1, 1, 1, 1, 1, 1};

    /* renamed from: const, reason: not valid java name */
    public static final int[][] f17603const = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    /* renamed from: catch, reason: not valid java name */
    private final int[] f17604catch = new int[4];

    /* renamed from: import, reason: not valid java name */
    private static void m22000import(StringBuilder sb, int i) throws j41 {
        for (int i2 = 0; i2 <= 1; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (i == f17603const[i2][i3]) {
                    sb.insert(0, (char) (i2 + 48));
                    sb.append((char) (i3 + 48));
                    return;
                }
            }
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: while, reason: not valid java name */
    public static String m22001while(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c = cArr[5];
        switch (c) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c);
                sb.append("0000");
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append("0000");
                sb.append(c);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: break */
    public int mo21981break(w8 w8Var, int[] iArr, StringBuilder sb) throws j41 {
        int[] iArr2 = this.f17604catch;
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
        m22000import(sb, i2);
        return i;
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: case, reason: not valid java name */
    public boolean mo22002case(String str) throws ld0 {
        return super.mo22002case(m22001while(str));
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: super */
    public Cdo mo21982super() {
        return Cdo.UPC_E;
    }

    @Override // com.google.zxing.oned.Cthrows
    /* renamed from: this, reason: not valid java name */
    public int[] mo22003this(w8 w8Var, int i) throws j41 {
        return Cthrows.m22143class(w8Var, i, true, f17602class);
    }
}
