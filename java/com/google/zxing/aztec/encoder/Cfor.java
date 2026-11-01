package com.google.zxing.aztec.encoder;

import android.support.v4.ca2;
import android.support.v4.w8;

/* renamed from: com.google.zxing.aztec.encoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor extends Ctry {

    /* renamed from: for, reason: not valid java name */
    private final short f17412for;

    /* renamed from: new, reason: not valid java name */
    private final short f17413new;

    public Cfor(Ctry ctry, int i, int i2) {
        super(ctry);
        this.f17412for = (short) i;
        this.f17413new = (short) i2;
    }

    @Override // com.google.zxing.aztec.encoder.Ctry
    /* renamed from: for */
    public void mo21759for(w8 w8Var, byte[] bArr) {
        w8Var.m9083for(this.f17412for, this.f17413new);
    }

    public String toString() {
        short s = this.f17412for;
        short s2 = this.f17413new;
        return "<" + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.f17413new)).substring(1) + ca2.f702try;
    }
}
