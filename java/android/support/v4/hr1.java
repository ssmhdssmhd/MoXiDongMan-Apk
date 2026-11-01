package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class hr1 {

    /* renamed from: break, reason: not valid java name */
    public BigInteger f2487break;

    /* renamed from: case, reason: not valid java name */
    public BigInteger f2488case;

    /* renamed from: catch, reason: not valid java name */
    public BigInteger f2489catch;

    /* renamed from: class, reason: not valid java name */
    public BigInteger f2490class;

    /* renamed from: const, reason: not valid java name */
    public BigInteger f2491const;

    /* renamed from: do, reason: not valid java name */
    public BigInteger f2492do;

    /* renamed from: else, reason: not valid java name */
    public BigInteger f2493else;

    /* renamed from: for, reason: not valid java name */
    public BigInteger f2494for;

    /* renamed from: goto, reason: not valid java name */
    public BigInteger f2495goto;

    /* renamed from: if, reason: not valid java name */
    public BigInteger f2496if;

    /* renamed from: new, reason: not valid java name */
    public SecureRandom f2497new;

    /* renamed from: this, reason: not valid java name */
    public BigInteger f2498this;

    /* renamed from: try, reason: not valid java name */
    public Digest f2499try;

    /* renamed from: do, reason: not valid java name */
    private BigInteger m3110do() {
        return this.f2494for.modPow(this.f2498this, this.f2492do).multiply(this.f2488case).mod(this.f2492do).modPow(this.f2493else, this.f2492do);
    }

    /* renamed from: case, reason: not valid java name */
    public void m3111case(gr1 gr1Var, BigInteger bigInteger, Digest digest, SecureRandom secureRandom) {
        m3112else(gr1Var.m2772if(), gr1Var.m2771do(), bigInteger, digest, secureRandom);
    }

    /* renamed from: else, reason: not valid java name */
    public void m3112else(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest, SecureRandom secureRandom) {
        this.f2492do = bigInteger;
        this.f2496if = bigInteger2;
        this.f2494for = bigInteger3;
        this.f2497new = secureRandom;
        this.f2499try = digest;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m3113for() throws xs {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.f2488case;
        if (bigInteger3 == null || (bigInteger = this.f2489catch) == null || (bigInteger2 = this.f2487break) == null) {
            throw new xs("Impossible to compute M2: some data are missing from the previous operations (A,M1,S)");
        }
        BigInteger bigIntegerM4082new = jr1.m4082new(this.f2499try, this.f2492do, bigInteger3, bigInteger, bigInteger2);
        this.f2490class = bigIntegerM4082new;
        return bigIntegerM4082new;
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m3114goto() {
        return jr1.m4078else(this.f2499try, this.f2492do, this.f2496if, this.f2497new);
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m3115if(BigInteger bigInteger) throws xs {
        BigInteger bigIntegerM4076catch = jr1.m4076catch(this.f2492do, bigInteger);
        this.f2488case = bigIntegerM4076catch;
        this.f2498this = jr1.m4084try(this.f2499try, this.f2492do, bigIntegerM4076catch, this.f2495goto);
        BigInteger bigIntegerM3110do = m3110do();
        this.f2487break = bigIntegerM3110do;
        return bigIntegerM3110do;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m3116new() throws xs {
        BigInteger bigInteger = this.f2487break;
        if (bigInteger == null || this.f2489catch == null || this.f2490class == null) {
            throw new xs("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger bigIntegerM4081if = jr1.m4081if(this.f2499try, this.f2492do, bigInteger);
        this.f2491const = bigIntegerM4081if;
        return bigIntegerM4081if;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m3117this(BigInteger bigInteger) throws xs {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.f2488case;
        if (bigInteger4 == null || (bigInteger2 = this.f2495goto) == null || (bigInteger3 = this.f2487break) == null) {
            throw new xs("Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)");
        }
        if (!jr1.m4079for(this.f2499try, this.f2492do, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            return false;
        }
        this.f2489catch = bigInteger;
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m3118try() {
        BigInteger bigIntegerM4077do = jr1.m4077do(this.f2499try, this.f2492do, this.f2496if);
        this.f2493else = m3114goto();
        BigInteger bigIntegerMod = bigIntegerM4077do.multiply(this.f2494for).mod(this.f2492do).add(this.f2496if.modPow(this.f2493else, this.f2492do)).mod(this.f2492do);
        this.f2495goto = bigIntegerMod;
        return bigIntegerMod;
    }
}
