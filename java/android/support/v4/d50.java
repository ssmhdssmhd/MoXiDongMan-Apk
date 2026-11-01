package android.support.v4;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class d50 implements AlgorithmParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private Cif f934do;

    /* renamed from: for, reason: not valid java name */
    private Cnew f935for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f936if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f937new;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f938try;

    public d50(Cif cif, Cnew cnew, BigInteger bigInteger) {
        this.f934do = cif;
        this.f935for = cnew.m35454abstract();
        this.f937new = bigInteger;
        this.f938try = BigInteger.valueOf(1L);
        this.f936if = null;
    }

    public d50(Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f934do = cif;
        this.f935for = cnew.m35454abstract();
        this.f937new = bigInteger;
        this.f938try = bigInteger2;
        this.f936if = null;
    }

    public d50(Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f934do = cif;
        this.f935for = cnew.m35454abstract();
        this.f937new = bigInteger;
        this.f938try = bigInteger2;
        this.f936if = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public Cif m1142do() {
        return this.f934do;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d50)) {
            return false;
        }
        d50 d50Var = (d50) obj;
        return m1142do().m35427final(d50Var.m1142do()) && m1144if().m35481try(d50Var.m1144if());
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m1143for() {
        return this.f938try;
    }

    public int hashCode() {
        return m1142do().hashCode() ^ m1144if().hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m1144if() {
        return this.f935for;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m1145new() {
        return this.f937new;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m1146try() {
        return this.f936if;
    }
}
