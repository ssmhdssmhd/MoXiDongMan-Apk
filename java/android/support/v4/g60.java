package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class g60 extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private l60 f2063for;

    public g60(SecureRandom secureRandom, l60 l60Var) {
        super(secureRandom, m2588new(l60Var));
        this.f2063for = l60Var;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m2588new(l60 l60Var) {
        return l60Var.m4601if() != 0 ? l60Var.m4601if() : l60Var.m4600for().bitLength();
    }

    /* renamed from: for, reason: not valid java name */
    public l60 m2589for() {
        return this.f2063for;
    }
}
