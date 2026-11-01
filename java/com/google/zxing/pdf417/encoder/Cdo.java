package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

/* renamed from: com.google.zxing.pdf417.encoder.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final Cif[] f17867do;

    /* renamed from: for, reason: not valid java name */
    private final int f17868for;

    /* renamed from: if, reason: not valid java name */
    private int f17869if;

    /* renamed from: new, reason: not valid java name */
    private final int f17870new;

    public Cdo(int i, int i2) {
        Cif[] cifArr = new Cif[i];
        this.f17867do = cifArr;
        int length = cifArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.f17867do[i3] = new Cif(((i2 + 4) * 17) + 1);
        }
        this.f17870new = i2 * 17;
        this.f17868for = i;
        this.f17869if = -1;
    }

    /* renamed from: do, reason: not valid java name */
    public Cif m22288do() {
        return this.f17867do[this.f17869if];
    }

    /* renamed from: for, reason: not valid java name */
    public byte[][] m22289for(int i, int i2) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.f17868for * i2, this.f17870new * i);
        int i3 = this.f17868for * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.f17867do[i4 / i2].m22296if(i);
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[][] m22290if() {
        return m22289for(1, 1);
    }

    /* renamed from: new, reason: not valid java name */
    public void m22291new(int i, int i2, byte b) {
        this.f17867do[i2].m22295for(i, b);
    }

    /* renamed from: try, reason: not valid java name */
    public void m22292try() {
        this.f17869if++;
    }
}
