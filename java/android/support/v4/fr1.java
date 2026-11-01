package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class fr1 {

    /* renamed from: break, reason: not valid java name */
    public BigInteger f1970break;

    /* renamed from: case, reason: not valid java name */
    public BigInteger f1971case;

    /* renamed from: catch, reason: not valid java name */
    public BigInteger f1972catch;

    /* renamed from: class, reason: not valid java name */
    public Digest f1973class;

    /* renamed from: const, reason: not valid java name */
    public SecureRandom f1974const;

    /* renamed from: do, reason: not valid java name */
    public BigInteger f1975do;

    /* renamed from: else, reason: not valid java name */
    public BigInteger f1976else;

    /* renamed from: for, reason: not valid java name */
    public BigInteger f1977for;

    /* renamed from: goto, reason: not valid java name */
    public BigInteger f1978goto;

    /* renamed from: if, reason: not valid java name */
    public BigInteger f1979if;

    /* renamed from: new, reason: not valid java name */
    public BigInteger f1980new;

    /* renamed from: this, reason: not valid java name */
    public BigInteger f1981this;

    /* renamed from: try, reason: not valid java name */
    public BigInteger f1982try;

    /* renamed from: if, reason: not valid java name */
    private BigInteger m2392if() {
        BigInteger bigIntegerM4077do = jr1.m4077do(this.f1973class, this.f1975do, this.f1979if);
        return this.f1982try.subtract(this.f1979if.modPow(this.f1971case, this.f1975do).multiply(bigIntegerM4077do).mod(this.f1975do)).mod(this.f1975do).modPow(this.f1976else.multiply(this.f1971case).add(this.f1977for), this.f1975do);
    }

    /* renamed from: case, reason: not valid java name */
    public void m2393case(gr1 gr1Var, Digest digest, SecureRandom secureRandom) {
        m2395else(gr1Var.m2772if(), gr1Var.m2771do(), digest, secureRandom);
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m2394do() throws xs {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.f1980new;
        if (bigInteger3 == null || (bigInteger = this.f1982try) == null || (bigInteger2 = this.f1978goto) == null) {
            throw new xs("Impossible to compute M1: some data are missing from the previous operations (A,B,S)");
        }
        BigInteger bigIntegerM4079for = jr1.m4079for(this.f1973class, this.f1975do, bigInteger3, bigInteger, bigInteger2);
        this.f1981this = bigIntegerM4079for;
        return bigIntegerM4079for;
    }

    /* renamed from: else, reason: not valid java name */
    public void m2395else(BigInteger bigInteger, BigInteger bigInteger2, Digest digest, SecureRandom secureRandom) {
        this.f1975do = bigInteger;
        this.f1979if = bigInteger2;
        this.f1973class = digest;
        this.f1974const = secureRandom;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m2396for(BigInteger bigInteger) throws xs {
        BigInteger bigIntegerM4076catch = jr1.m4076catch(this.f1975do, bigInteger);
        this.f1982try = bigIntegerM4076catch;
        this.f1976else = jr1.m4084try(this.f1973class, this.f1975do, this.f1980new, bigIntegerM4076catch);
        BigInteger bigIntegerM2392if = m2392if();
        this.f1978goto = bigIntegerM2392if;
        return bigIntegerM2392if;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m2397goto() {
        return jr1.m4078else(this.f1973class, this.f1975do, this.f1979if, this.f1974const);
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2398new() throws xs {
        BigInteger bigInteger = this.f1978goto;
        if (bigInteger == null || this.f1981this == null || this.f1970break == null) {
            throw new xs("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger bigIntegerM4081if = jr1.m4081if(this.f1973class, this.f1975do, bigInteger);
        this.f1972catch = bigIntegerM4081if;
        return bigIntegerM4081if;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m2399this(BigInteger bigInteger) throws xs {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.f1980new;
        if (bigInteger4 == null || (bigInteger2 = this.f1981this) == null || (bigInteger3 = this.f1978goto) == null) {
            throw new xs("Impossible to compute and verify M2: some data are missing from the previous operations (A,M1,S)");
        }
        if (!jr1.m4082new(this.f1973class, this.f1975do, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            return false;
        }
        this.f1970break = bigInteger;
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m2400try(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f1971case = jr1.m4075case(this.f1973class, this.f1975do, bArr, bArr2, bArr3);
        BigInteger bigIntegerM2397goto = m2397goto();
        this.f1977for = bigIntegerM2397goto;
        BigInteger bigIntegerModPow = this.f1979if.modPow(bigIntegerM2397goto, this.f1975do);
        this.f1980new = bigIntegerModPow;
        return bigIntegerModPow;
    }
}
