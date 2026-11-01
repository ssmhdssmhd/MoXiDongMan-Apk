package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class ki2 implements AlgorithmParameterSpec {

    /* renamed from: case, reason: not valid java name */
    public static final String f3388case = "SHAKE128";

    /* renamed from: else, reason: not valid java name */
    public static final String f3389else = "SHAKE256";

    /* renamed from: new, reason: not valid java name */
    public static final String f3390new = "SHA256";

    /* renamed from: try, reason: not valid java name */
    public static final String f3391try = "SHA512";

    /* renamed from: do, reason: not valid java name */
    private final int f3392do;

    /* renamed from: for, reason: not valid java name */
    private final String f3393for;

    /* renamed from: if, reason: not valid java name */
    private final int f3394if;

    public ki2(int i, int i2, String str) {
        this.f3392do = i;
        this.f3394if = i2;
        this.f3393for = str;
    }

    /* renamed from: do, reason: not valid java name */
    public int m4413do() {
        return this.f3392do;
    }

    /* renamed from: for, reason: not valid java name */
    public String m4414for() {
        return this.f3393for;
    }

    /* renamed from: if, reason: not valid java name */
    public int m4415if() {
        return this.f3394if;
    }
}
