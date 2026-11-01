package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class ez0 implements CipherParameters {

    /* renamed from: case, reason: not valid java name */
    public static final int f1630case = 11;

    /* renamed from: else, reason: not valid java name */
    public static final int f1631else = 50;

    /* renamed from: do, reason: not valid java name */
    private int f1632do;

    /* renamed from: for, reason: not valid java name */
    private int f1633for;

    /* renamed from: if, reason: not valid java name */
    private int f1634if;

    /* renamed from: new, reason: not valid java name */
    private int f1635new;

    /* renamed from: try, reason: not valid java name */
    private Digest f1636try;

    public ez0() {
        this(11, 50);
    }

    public ez0(int i) {
        this(i, (Digest) null);
    }

    public ez0(int i, int i2) {
        this(i, i2, (Digest) null);
    }

    public ez0(int i, int i2, int i3) {
        this(i, i2, i3, null);
    }

    public ez0(int i, int i2, int i3, Digest digest) {
        this.f1632do = i;
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i4 = 1 << i;
        this.f1633for = i4;
        this.f1634if = i2;
        if (i2 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i2 > i4) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (qe1.m6541if(i3) != i || !qe1.m6536case(i3)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.f1635new = i3;
        this.f1636try = digest;
    }

    public ez0(int i, int i2, Digest digest) {
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f1632do = i;
        int i3 = 1 << i;
        this.f1633for = i3;
        if (i2 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i2 > i3) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f1634if = i2;
        this.f1635new = qe1.m6544try(i);
        this.f1636try = digest;
    }

    public ez0(int i, Digest digest) {
        if (i < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f1632do = 0;
        this.f1633for = 1;
        while (true) {
            int i2 = this.f1633for;
            if (i2 >= i) {
                int i3 = i2 >>> 1;
                this.f1634if = i3;
                int i4 = this.f1632do;
                this.f1634if = i3 / i4;
                this.f1635new = qe1.m6544try(i4);
                this.f1636try = digest;
                return;
            }
            this.f1633for = i2 << 1;
            this.f1632do++;
        }
    }

    public ez0(Digest digest) {
        this(11, 50, digest);
    }

    /* renamed from: do, reason: not valid java name */
    public int m2074do() {
        return this.f1635new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m2075for() {
        return this.f1633for;
    }

    /* renamed from: if, reason: not valid java name */
    public int m2076if() {
        return this.f1632do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m2077new() {
        return this.f1634if;
    }
}
