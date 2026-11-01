package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.KeyEncapsulation;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class zj1 implements KeyEncapsulation {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f8575new = BigInteger.valueOf(0);

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f8576try = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private DerivationFunction f8577do;

    /* renamed from: for, reason: not valid java name */
    private ck1 f8578for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f8579if;

    public zj1(DerivationFunction derivationFunction, SecureRandom secureRandom) {
        this.f8577do = derivationFunction;
        this.f8579if = secureRandom;
    }

    @Override // org.bouncycastle.crypto.KeyEncapsulation
    public CipherParameters decrypt(byte[] bArr, int i, int i2, int i3) throws IllegalArgumentException {
        if (!this.f8578for.m33do()) {
            throw new IllegalArgumentException("Private key required for decryption");
        }
        BigInteger bigIntegerM954for = this.f8578for.m954for();
        BigInteger bigIntegerM955if = this.f8578for.m955if();
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return m10220for(bigIntegerM954for, new BigInteger(1, bArr2).modPow(bigIntegerM955if, bigIntegerM954for), i3);
    }

    /* renamed from: do, reason: not valid java name */
    public CipherParameters m10219do(byte[] bArr, int i) {
        return decrypt(bArr, 0, bArr.length, i);
    }

    @Override // org.bouncycastle.crypto.KeyEncapsulation
    public CipherParameters encrypt(byte[] bArr, int i, int i2) throws IllegalArgumentException {
        if (this.f8578for.m33do()) {
            throw new IllegalArgumentException("Public key required for encryption");
        }
        BigInteger bigIntegerM954for = this.f8578for.m954for();
        BigInteger bigIntegerM955if = this.f8578for.m955if();
        BigInteger bigIntegerM36316try = Cdo.m36316try(f8575new, bigIntegerM954for.subtract(f8576try), this.f8579if);
        byte[] bArrM36309do = Cdo.m36309do((bigIntegerM954for.bitLength() + 7) / 8, bigIntegerM36316try.modPow(bigIntegerM955if, bigIntegerM954for));
        System.arraycopy(bArrM36309do, 0, bArr, i, bArrM36309do.length);
        return m10220for(bigIntegerM954for, bigIntegerM36316try, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public gr0 m10220for(BigInteger bigInteger, BigInteger bigInteger2, int i) throws tw, IllegalArgumentException {
        this.f8577do.init(new kq0(Cdo.m36309do((bigInteger.bitLength() + 7) / 8, bigInteger2), null));
        byte[] bArr = new byte[i];
        this.f8577do.generateBytes(bArr, 0, i);
        return new gr0(bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public CipherParameters m10221if(byte[] bArr, int i) {
        return encrypt(bArr, 0, i);
    }

    @Override // org.bouncycastle.crypto.KeyEncapsulation
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ck1)) {
            throw new IllegalArgumentException("RSA key required");
        }
        this.f8578for = (ck1) cipherParameters;
    }
}
