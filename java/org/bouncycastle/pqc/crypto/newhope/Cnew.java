package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.a4;
import android.support.v4.s11;
import android.support.v4.v80;
import java.security.SecureRandom;
import org.bouncycastle.pqc.crypto.ExchangePairGenerator;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements ExchangePairGenerator {

    /* renamed from: do, reason: not valid java name */
    private final SecureRandom f32253do;

    public Cnew(SecureRandom secureRandom) {
        this.f32253do = secureRandom;
    }

    @Override // org.bouncycastle.pqc.crypto.ExchangePairGenerator
    public v80 GenerateExchange(a4 a4Var) {
        return generateExchange(a4Var);
    }

    @Override // org.bouncycastle.pqc.crypto.ExchangePairGenerator
    public v80 generateExchange(a4 a4Var) {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[2048];
        Celse.m35651this(this.f32253do, bArr, bArr2, ((s11) a4Var).f5991if);
        return new v80(new s11(bArr2), bArr);
    }
}
