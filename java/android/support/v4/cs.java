package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class cs extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private fs f860for;

    public cs(SecureRandom secureRandom, fs fsVar) {
        super(secureRandom, m1007new(fsVar));
        this.f860for = fsVar;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m1007new(fs fsVar) {
        return fsVar.m2404new().bitLength();
    }

    /* renamed from: for, reason: not valid java name */
    public fs m1008for() {
        return this.f860for;
    }
}
