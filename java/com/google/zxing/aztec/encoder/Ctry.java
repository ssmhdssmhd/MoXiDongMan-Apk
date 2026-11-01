package com.google.zxing.aztec.encoder;

import android.support.v4.w8;

/* renamed from: com.google.zxing.aztec.encoder.try, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ctry {

    /* renamed from: if, reason: not valid java name */
    public static final Ctry f17430if = new Cfor(null, 0, 0);

    /* renamed from: do, reason: not valid java name */
    private final Ctry f17431do;

    public Ctry(Ctry ctry) {
        this.f17431do = ctry;
    }

    /* renamed from: do, reason: not valid java name */
    public final Ctry m21777do(int i, int i2) {
        return new Cfor(this, i, i2);
    }

    /* renamed from: for */
    public abstract void mo21759for(w8 w8Var, byte[] bArr);

    /* renamed from: if, reason: not valid java name */
    public final Ctry m21778if(int i, int i2) {
        return new Cdo(this, i, i2);
    }

    /* renamed from: new, reason: not valid java name */
    public final Ctry m21779new() {
        return this.f17431do;
    }
}
