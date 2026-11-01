package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class m60 extends h60 {

    /* renamed from: for, reason: not valid java name */
    private BigInteger f3846for;

    public m60(BigInteger bigInteger, l60 l60Var) {
        super(true, l60Var);
        this.f3846for = bigInteger;
    }

    @Override // android.support.v4.h60
    public boolean equals(Object obj) {
        if ((obj instanceof m60) && ((m60) obj).m4853for().equals(this.f3846for)) {
            return super.equals(obj);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m4853for() {
        return this.f3846for;
    }

    @Override // android.support.v4.h60
    public int hashCode() {
        return m4853for().hashCode();
    }
}
