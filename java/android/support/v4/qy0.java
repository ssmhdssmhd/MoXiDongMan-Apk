package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class qy0 implements AlgorithmParameterSpec {

    /* renamed from: break, reason: not valid java name */
    public static final String f5538break = "SHA-512";

    /* renamed from: case, reason: not valid java name */
    public static final String f5539case = "SHA-1";

    /* renamed from: catch, reason: not valid java name */
    public static final int f5540catch = 11;

    /* renamed from: class, reason: not valid java name */
    public static final int f5541class = 50;

    /* renamed from: else, reason: not valid java name */
    public static final String f5542else = "SHA-224";

    /* renamed from: goto, reason: not valid java name */
    public static final String f5543goto = "SHA-256";

    /* renamed from: this, reason: not valid java name */
    public static final String f5544this = "SHA-384";

    /* renamed from: do, reason: not valid java name */
    private final int f5545do;

    /* renamed from: for, reason: not valid java name */
    private final int f5546for;

    /* renamed from: if, reason: not valid java name */
    private final int f5547if;

    /* renamed from: new, reason: not valid java name */
    private int f5548new;

    /* renamed from: try, reason: not valid java name */
    private final String f5549try;

    public qy0() {
        this(11, 50, "SHA-256");
    }

    public qy0(int i) {
        this(i, "SHA-256");
    }

    public qy0(int i, int i2) {
        this(i, i2, "SHA-256");
    }

    public qy0(int i, int i2, int i3) {
        this(i, i2, i3, "SHA-256");
    }

    public qy0(int i, int i2, int i3, String str) {
        this.f5545do = i;
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i4 = 1 << i;
        this.f5546for = i4;
        this.f5547if = i2;
        if (i2 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i2 > i4) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (qe1.m6541if(i3) != i || !qe1.m6536case(i3)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.f5548new = i3;
        this.f5549try = str;
    }

    public qy0(int i, int i2, String str) {
        if (i < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f5545do = i;
        int i3 = 1 << i;
        this.f5546for = i3;
        if (i2 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i2 > i3) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f5547if = i2;
        this.f5548new = qe1.m6544try(i);
        this.f5549try = str;
    }

    public qy0(int i, String str) {
        int i2 = 1;
        if (i < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        int i3 = 0;
        while (i2 < i) {
            i2 <<= 1;
            i3++;
        }
        this.f5547if = (i2 >>> 1) / i3;
        this.f5545do = i3;
        this.f5546for = i2;
        this.f5548new = qe1.m6544try(i3);
        this.f5549try = str;
    }

    /* renamed from: do, reason: not valid java name */
    public String m6684do() {
        return this.f5549try;
    }

    /* renamed from: for, reason: not valid java name */
    public int m6685for() {
        return this.f5545do;
    }

    /* renamed from: if, reason: not valid java name */
    public int m6686if() {
        return this.f5548new;
    }

    /* renamed from: new, reason: not valid java name */
    public int m6687new() {
        return this.f5546for;
    }

    /* renamed from: try, reason: not valid java name */
    public int m6688try() {
        return this.f5547if;
    }
}
