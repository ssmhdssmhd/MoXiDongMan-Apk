package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class wq1 implements AlgorithmParameterSpec {

    /* renamed from: for, reason: not valid java name */
    public static final String f7676for = "SHA3-256";

    /* renamed from: if, reason: not valid java name */
    public static final String f7677if = "SHA512-256";

    /* renamed from: do, reason: not valid java name */
    private final String f7678do;

    public wq1() {
        this(f7677if);
    }

    public wq1(String str) {
        this.f7678do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public String m9262do() {
        return this.f7678do;
    }
}
