package org.bouncycastle.crypto.generators;

import android.support.v4.ou;
import android.support.v4.xu;
import java.math.BigInteger;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.generators.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f29856new = BigInteger.valueOf(2);

    /* renamed from: do, reason: not valid java name */
    private int f29857do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f29858for;

    /* renamed from: if, reason: not valid java name */
    private int f29859if;

    /* renamed from: do, reason: not valid java name */
    public ou m33667do() throws IllegalArgumentException {
        BigInteger[] bigIntegerArrM33676do = Cgoto.m33676do(this.f29857do, this.f29859if, this.f29858for);
        BigInteger bigInteger = bigIntegerArrM33676do[0];
        BigInteger bigInteger2 = bigIntegerArrM33676do[1];
        return new ou(bigInteger, Cgoto.m33677if(bigInteger, bigInteger2, this.f29858for), bigInteger2, f29856new, (xu) null);
    }

    /* renamed from: if, reason: not valid java name */
    public void m33668if(int i, int i2, SecureRandom secureRandom) {
        this.f29857do = i;
        this.f29859if = i2;
        this.f29858for = secureRandom;
    }
}
