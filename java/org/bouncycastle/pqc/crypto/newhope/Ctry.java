package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.a4;
import android.support.v4.dr0;
import android.support.v4.r11;
import android.support.v4.s11;
import android.support.v4.y3;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f32254do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        byte[] bArr = new byte[Celse.f32244new];
        short[] sArr = new short[1024];
        Celse.m35644case(this.f32254do, bArr, sArr);
        return new y3((a4) new s11(bArr), (a4) new r11(sArr));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f32254do = dr0Var.m1497do();
    }
}
