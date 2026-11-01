package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class ju extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private ou f3222for;

    public ju(SecureRandom secureRandom, ou ouVar) {
        super(secureRandom, m4108new(ouVar));
        this.f3222for = ouVar;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m4108new(ou ouVar) {
        return ouVar.m5762new() != 0 ? ouVar.m5762new() : ouVar.m5757case().bitLength();
    }

    /* renamed from: for, reason: not valid java name */
    public ou m4109for() {
        return this.f3222for;
    }
}
