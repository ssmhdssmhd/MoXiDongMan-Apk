package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class ak1 extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private BigInteger f186for;

    /* renamed from: new, reason: not valid java name */
    private int f187new;

    public ak1(BigInteger bigInteger, SecureRandom secureRandom, int i, int i2) {
        super(secureRandom, i);
        if (i < 12) {
            throw new IllegalArgumentException("key strength too small");
        }
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("public exponent cannot be even");
        }
        this.f186for = bigInteger;
        this.f187new = i2;
    }

    /* renamed from: for, reason: not valid java name */
    public int m261for() {
        return this.f187new;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m262new() {
        return this.f186for;
    }
}
