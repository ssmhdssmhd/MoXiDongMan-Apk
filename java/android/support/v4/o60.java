package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class o60 extends h60 {

    /* renamed from: for, reason: not valid java name */
    private BigInteger f4433for;

    public o60(BigInteger bigInteger, l60 l60Var) {
        super(false, l60Var);
        this.f4433for = bigInteger;
    }

    @Override // android.support.v4.h60
    public boolean equals(Object obj) {
        return (obj instanceof o60) && ((o60) obj).m5492for().equals(this.f4433for) && super.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m5492for() {
        return this.f4433for;
    }

    @Override // android.support.v4.h60
    public int hashCode() {
        return this.f4433for.hashCode() ^ super.hashCode();
    }
}
