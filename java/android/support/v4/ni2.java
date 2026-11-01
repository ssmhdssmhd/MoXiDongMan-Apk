package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class ni2 implements AlgorithmParameterSpec {

    /* renamed from: case, reason: not valid java name */
    public static final String f4235case = "SHAKE256";

    /* renamed from: for, reason: not valid java name */
    public static final String f4236for = "SHA256";

    /* renamed from: new, reason: not valid java name */
    public static final String f4237new = "SHA512";

    /* renamed from: try, reason: not valid java name */
    public static final String f4238try = "SHAKE128";

    /* renamed from: do, reason: not valid java name */
    private final int f4239do;

    /* renamed from: if, reason: not valid java name */
    private final String f4240if;

    public ni2(int i, String str) {
        this.f4239do = i;
        this.f4240if = str;
    }

    /* renamed from: do, reason: not valid java name */
    public int m5252do() {
        return this.f4239do;
    }

    /* renamed from: if, reason: not valid java name */
    public String m5253if() {
        return this.f4240if;
    }
}
