package org.bouncycastle.crypto.generators;

import android.support.v4.l60;
import java.math.BigInteger;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.generators.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: do, reason: not valid java name */
    private int f29806do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f29807for;

    /* renamed from: if, reason: not valid java name */
    private int f29808if;

    /* renamed from: do, reason: not valid java name */
    public l60 m33616do() throws IllegalArgumentException {
        BigInteger[] bigIntegerArrM33676do = Cgoto.m33676do(this.f29806do, this.f29808if, this.f29807for);
        BigInteger bigInteger = bigIntegerArrM33676do[0];
        return new l60(bigInteger, Cgoto.m33677if(bigInteger, bigIntegerArrM33676do[1], this.f29807for));
    }

    /* renamed from: if, reason: not valid java name */
    public void m33617if(int i, int i2, SecureRandom secureRandom) {
        this.f29806do = i;
        this.f29808if = i2;
        this.f29807for = secureRandom;
    }
}
