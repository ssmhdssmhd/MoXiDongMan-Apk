package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.bc1;
import android.support.v4.dh;
import android.support.v4.gr0;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo {
    /* renamed from: do, reason: not valid java name */
    public static void m35643do(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) {
        dh dhVar = new dh(20);
        dhVar.init(true, new bc1(new gr0(bArr), bArr2));
        dhVar.processBytes(bArr3, i, i2, bArr3, i);
    }
}
