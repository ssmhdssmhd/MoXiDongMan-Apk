package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.signers.DSAKCalculator;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class qi0 implements DSAKCalculator {

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f5427try = BigInteger.valueOf(0);

    /* renamed from: do, reason: not valid java name */
    private final pi0 f5428do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f5429for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f5430if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f5431new;

    public qi0(Digest digest) {
        pi0 pi0Var = new pi0(digest);
        this.f5428do = pi0Var;
        this.f5429for = new byte[pi0Var.getMacSize()];
        this.f5430if = new byte[pi0Var.getMacSize()];
    }

    /* renamed from: do, reason: not valid java name */
    private BigInteger m6602do(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        return bArr.length * 8 > this.f5431new.bitLength() ? bigInteger.shiftRight((bArr.length * 8) - this.f5431new.bitLength()) : bigInteger;
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public void init(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f5431new = bigInteger;
        q3.c(this.f5429for, (byte) 1);
        q3.c(this.f5430if, (byte) 0);
        int iM36315this = Cdo.m36315this(bigInteger);
        byte[] bArr2 = new byte[iM36315this];
        byte[] bArrM36313if = Cdo.m36313if(bigInteger2);
        System.arraycopy(bArrM36313if, 0, bArr2, iM36315this - bArrM36313if.length, bArrM36313if.length);
        byte[] bArr3 = new byte[iM36315this];
        BigInteger bigIntegerM6602do = m6602do(bArr);
        if (bigIntegerM6602do.compareTo(bigInteger) >= 0) {
            bigIntegerM6602do = bigIntegerM6602do.subtract(bigInteger);
        }
        byte[] bArrM36313if2 = Cdo.m36313if(bigIntegerM6602do);
        System.arraycopy(bArrM36313if2, 0, bArr3, iM36315this - bArrM36313if2.length, bArrM36313if2.length);
        this.f5428do.init(new gr0(this.f5430if));
        pi0 pi0Var = this.f5428do;
        byte[] bArr4 = this.f5429for;
        pi0Var.update(bArr4, 0, bArr4.length);
        this.f5428do.update((byte) 0);
        this.f5428do.update(bArr2, 0, iM36315this);
        this.f5428do.update(bArr3, 0, iM36315this);
        this.f5428do.doFinal(this.f5430if, 0);
        this.f5428do.init(new gr0(this.f5430if));
        pi0 pi0Var2 = this.f5428do;
        byte[] bArr5 = this.f5429for;
        pi0Var2.update(bArr5, 0, bArr5.length);
        this.f5428do.doFinal(this.f5429for, 0);
        pi0 pi0Var3 = this.f5428do;
        byte[] bArr6 = this.f5429for;
        pi0Var3.update(bArr6, 0, bArr6.length);
        this.f5428do.update((byte) 1);
        this.f5428do.update(bArr2, 0, iM36315this);
        this.f5428do.update(bArr3, 0, iM36315this);
        this.f5428do.doFinal(this.f5430if, 0);
        this.f5428do.init(new gr0(this.f5430if));
        pi0 pi0Var4 = this.f5428do;
        byte[] bArr7 = this.f5429for;
        pi0Var4.update(bArr7, 0, bArr7.length);
        this.f5428do.doFinal(this.f5429for, 0);
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public void init(BigInteger bigInteger, SecureRandom secureRandom) {
        throw new IllegalStateException("Operation not supported");
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public boolean isDeterministic() {
        return true;
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public BigInteger nextK() {
        int iM36315this = Cdo.m36315this(this.f5431new);
        byte[] bArr = new byte[iM36315this];
        while (true) {
            int i = 0;
            while (i < iM36315this) {
                pi0 pi0Var = this.f5428do;
                byte[] bArr2 = this.f5429for;
                pi0Var.update(bArr2, 0, bArr2.length);
                this.f5428do.doFinal(this.f5429for, 0);
                int iMin = Math.min(iM36315this - i, this.f5429for.length);
                System.arraycopy(this.f5429for, 0, bArr, i, iMin);
                i += iMin;
            }
            BigInteger bigIntegerM6602do = m6602do(bArr);
            if (bigIntegerM6602do.compareTo(f5427try) > 0 && bigIntegerM6602do.compareTo(this.f5431new) < 0) {
                return bigIntegerM6602do;
            }
            pi0 pi0Var2 = this.f5428do;
            byte[] bArr3 = this.f5429for;
            pi0Var2.update(bArr3, 0, bArr3.length);
            this.f5428do.update((byte) 0);
            this.f5428do.doFinal(this.f5430if, 0);
            this.f5428do.init(new gr0(this.f5430if));
            pi0 pi0Var3 = this.f5428do;
            byte[] bArr4 = this.f5429for;
            pi0Var3.update(bArr4, 0, bArr4.length);
            this.f5428do.doFinal(this.f5429for, 0);
        }
    }
}
