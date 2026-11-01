package org.bouncycastle.pqc.crypto.sphincs;

import android.support.v4.a4;
import android.support.v4.ar1;
import android.support.v4.br1;
import android.support.v4.dr0;
import android.support.v4.xq1;
import android.support.v4.y3;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.sphincs.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f32368do;

    /* renamed from: if, reason: not valid java name */
    private Digest f32369if;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        Cgoto.Cdo cdo = new Cgoto.Cdo();
        byte[] bArr = new byte[Cnew.f32351break];
        this.f32368do.nextBytes(bArr);
        byte[] bArr2 = new byte[Cnew.f32360this];
        System.arraycopy(bArr, 32, bArr2, 0, 1024);
        cdo.f32342do = 11;
        cdo.f32344if = 0L;
        cdo.f32343for = 0L;
        Cgoto.m35792for(new Cdo(this.f32369if), bArr2, 1024, 5, bArr, cdo, bArr2, 0);
        return new y3((a4) new br1(bArr2, this.f32369if.getAlgorithmName()), (a4) new ar1(bArr, this.f32369if.getAlgorithmName()));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f32368do = dr0Var.m1497do();
        this.f32369if = ((xq1) dr0Var).m9566for();
    }
}
