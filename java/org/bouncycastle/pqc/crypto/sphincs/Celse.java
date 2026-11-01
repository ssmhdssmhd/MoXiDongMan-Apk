package org.bouncycastle.pqc.crypto.sphincs;

import android.support.v4.bc1;
import android.support.v4.dh;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.tw;
import org.bouncycastle.pqc.crypto.sphincs.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse {
    /* renamed from: do, reason: not valid java name */
    public static void m35786do(Cdo cdo, byte[] bArr, int i, byte[] bArr2, Cgoto.Cdo cdo2) {
        byte[] bArr3 = new byte[40];
        for (int i2 = 0; i2 < 32; i2++) {
            bArr3[i2] = bArr2[i2];
        }
        ib1.m3356extends((cdo2.f32343for << 59) | cdo2.f32342do | (cdo2.f32344if << 4), bArr3, 32);
        cdo.m35780case(bArr, i, bArr3, 40);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35787if(byte[] bArr, int i, long j, byte[] bArr2, int i2) throws tw, IllegalArgumentException {
        dh dhVar = new dh(12);
        dhVar.init(true, new bc1(new gr0(bArr2, i2, 32), new byte[8]));
        dhVar.processBytes(bArr, i, (int) j, bArr, i);
    }
}
