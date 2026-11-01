package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class u11 extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private int f6727for;

    /* renamed from: new, reason: not valid java name */
    private int f6728new;

    /* renamed from: try, reason: not valid java name */
    private boolean f6729try;

    public u11(SecureRandom secureRandom, int i, int i2, int i3) {
        this(secureRandom, i, i2, i3, false);
    }

    public u11(SecureRandom secureRandom, int i, int i2, int i3, boolean z) {
        super(secureRandom, i);
        this.f6729try = false;
        this.f6727for = i2;
        if (i3 % 2 == 1) {
            throw new IllegalArgumentException("cntSmallPrimes must be a multiple of 2");
        }
        if (i3 < 30) {
            throw new IllegalArgumentException("cntSmallPrimes must be >= 30 for security reasons");
        }
        this.f6728new = i3;
        this.f6729try = z;
    }

    /* renamed from: for, reason: not valid java name */
    public int m8183for() {
        return this.f6727for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m8184new() {
        return this.f6728new;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m8185try() {
        return this.f6729try;
    }
}
