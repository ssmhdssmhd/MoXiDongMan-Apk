package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class cv extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private hv f875for;

    public cv(SecureRandom secureRandom, hv hvVar) {
        super(secureRandom, hvVar.m3129if().bitLength() - 1);
        this.f875for = hvVar;
    }

    /* renamed from: for, reason: not valid java name */
    public hv m1032for() {
        return this.f875for;
    }
}
