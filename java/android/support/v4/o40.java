package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.KeyEncapsulation;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class o40 implements KeyEncapsulation {

    /* renamed from: else, reason: not valid java name */
    private static final BigInteger f4411else = BigInteger.valueOf(1);

    /* renamed from: case, reason: not valid java name */
    private boolean f4412case;

    /* renamed from: do, reason: not valid java name */
    private DerivationFunction f4413do;

    /* renamed from: for, reason: not valid java name */
    private s40 f4414for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f4415if;

    /* renamed from: new, reason: not valid java name */
    private boolean f4416new;

    /* renamed from: try, reason: not valid java name */
    private boolean f4417try;

    public o40(DerivationFunction derivationFunction, SecureRandom secureRandom) {
        this.f4413do = derivationFunction;
        this.f4415if = secureRandom;
        this.f4416new = false;
        this.f4417try = false;
        this.f4412case = false;
    }

    public o40(DerivationFunction derivationFunction, SecureRandom secureRandom, boolean z, boolean z2, boolean z3) {
        this.f4413do = derivationFunction;
        this.f4415if = secureRandom;
        this.f4416new = z;
        if (z) {
            this.f4417try = false;
        } else {
            this.f4417try = z2;
        }
        this.f4412case = z3;
    }

    @Override // org.bouncycastle.crypto.KeyEncapsulation
    public CipherParameters decrypt(byte[] bArr, int i, int i2, int i3) throws IllegalArgumentException {
        s40 s40Var = this.f4414for;
        if (!(s40Var instanceof h50)) {
            throw new IllegalArgumentException("Private key required for encryption");
        }
        h50 h50Var = (h50) s40Var;
        e40 e40VarM7258if = h50Var.m7258if();
        Cif cifM1646do = e40VarM7258if.m1646do();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        BigInteger bigIntegerM1647for = e40VarM7258if.m1647for();
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        Cnew cnewM35421class = cifM1646do.m35421class(bArr2);
        if (this.f4416new || this.f4417try) {
            cnewM35421class = cnewM35421class.m35470package(bigIntegerM1647for);
        }
        BigInteger bigIntegerM2948for = h50Var.m2948for();
        if (this.f4416new) {
            bigIntegerM2948for = bigIntegerM2948for.multiply(bigIntegerM1647for.modInverse(bigIntegerM1650try)).mod(bigIntegerM1650try);
        }
        return m5464for(i3, bArr2, cnewM35421class.m35470package(bigIntegerM2948for).m35454abstract().m35456case().m35379try());
    }

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m5463do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.KeyEncapsulation
    public CipherParameters encrypt(byte[] bArr, int i, int i2) throws IllegalArgumentException {
        s40 s40Var = this.f4414for;
        if (!(s40Var instanceof k50)) {
            throw new IllegalArgumentException("Public key required for encryption");
        }
        k50 k50Var = (k50) s40Var;
        e40 e40VarM7258if = k50Var.m7258if();
        Cif cifM1646do = e40VarM7258if.m1646do();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        BigInteger bigIntegerM1647for = e40VarM7258if.m1647for();
        BigInteger bigIntegerM36316try = Cdo.m36316try(f4411else, bigIntegerM1650try, this.f4415if);
        Cnew[] cnewArr = {m5463do().multiply(e40VarM7258if.m1648if(), bigIntegerM36316try), k50Var.m4252for().m35470package(this.f4417try ? bigIntegerM36316try.multiply(bigIntegerM1647for).mod(bigIntegerM1650try) : bigIntegerM36316try)};
        cifM1646do.m35420abstract(cnewArr);
        Cnew cnew = cnewArr[0];
        Cnew cnew2 = cnewArr[1];
        byte[] bArrM35459const = cnew.m35459const(false);
        System.arraycopy(bArrM35459const, 0, bArr, i, bArrM35459const.length);
        return m5464for(i2, bArrM35459const, cnew2.m35456case().m35379try());
    }

    /* renamed from: for, reason: not valid java name */
    public gr0 m5464for(int i, byte[] bArr, byte[] bArr2) {
        if (!this.f4412case) {
            byte[] bArrM6367default = q3.m6367default(bArr, bArr2);
            q3.c(bArr2, (byte) 0);
            bArr2 = bArrM6367default;
        }
        try {
            this.f4413do.init(new kq0(bArr2, null));
            byte[] bArr3 = new byte[i];
            this.f4413do.generateBytes(bArr3, 0, i);
            return new gr0(bArr3);
        } finally {
            q3.c(bArr2, (byte) 0);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public CipherParameters m5465if(byte[] bArr, int i) {
        return decrypt(bArr, 0, bArr.length, i);
    }

    @Override // org.bouncycastle.crypto.KeyEncapsulation
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof s40)) {
            throw new IllegalArgumentException("EC key required");
        }
        this.f4414for = (s40) cipherParameters;
    }

    /* renamed from: new, reason: not valid java name */
    public CipherParameters m5466new(byte[] bArr, int i) {
        return encrypt(bArr, 0, i);
    }
}
