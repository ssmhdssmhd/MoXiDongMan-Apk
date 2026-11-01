package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class pu extends ku {

    /* renamed from: for, reason: not valid java name */
    private BigInteger f5193for;

    public pu(BigInteger bigInteger, ou ouVar) {
        super(true, ouVar);
        this.f5193for = bigInteger;
    }

    @Override // android.support.v4.ku
    public boolean equals(Object obj) {
        return (obj instanceof pu) && ((pu) obj).m6221for().equals(this.f5193for) && super.equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m6221for() {
        return this.f5193for;
    }

    @Override // android.support.v4.ku
    public int hashCode() {
        return this.f5193for.hashCode() ^ super.hashCode();
    }
}
