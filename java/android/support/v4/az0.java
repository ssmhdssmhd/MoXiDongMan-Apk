package android.support.v4;

import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class az0 implements AlgorithmParameterSpec {

    /* renamed from: case, reason: not valid java name */
    public static final int f296case = 50;

    /* renamed from: try, reason: not valid java name */
    public static final int f297try = 11;

    /* renamed from: do, reason: not valid java name */
    private int f298do;

    /* renamed from: for, reason: not valid java name */
    private int f299for;

    /* renamed from: if, reason: not valid java name */
    private int f300if;

    /* renamed from: new, reason: not valid java name */
    private int f301new;

    public az0() {
        this(11, 50);
    }

    public az0(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f298do = 0;
        this.f299for = 1;
        while (true) {
            int i2 = this.f299for;
            if (i2 >= i) {
                int i3 = i2 >>> 1;
                this.f300if = i3;
                int i4 = this.f298do;
                this.f300if = i3 / i4;
                this.f301new = qe1.m6544try(i4);
                return;
            }
            this.f299for = i2 << 1;
            this.f298do++;
        }
    }

    public az0(int i, int i2) throws InvalidParameterException {
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f298do = i;
        int i3 = 1 << i;
        this.f299for = i3;
        if (i2 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i2 > i3) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f300if = i2;
        this.f301new = qe1.m6544try(i);
    }

    public az0(int i, int i2, int i3) {
        this.f298do = i;
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i4 = 1 << i;
        this.f299for = i4;
        this.f300if = i2;
        if (i2 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i2 > i4) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (qe1.m6541if(i3) != i || !qe1.m6536case(i3)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.f301new = i3;
    }

    /* renamed from: do, reason: not valid java name */
    public int m410do() {
        return this.f301new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m411for() {
        return this.f299for;
    }

    /* renamed from: if, reason: not valid java name */
    public int m412if() {
        return this.f298do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m413new() {
        return this.f300if;
    }
}
