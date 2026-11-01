package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class m50 {

    /* renamed from: do, reason: not valid java name */
    private final Digest f3838do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f3839for;

    /* renamed from: if, reason: not valid java name */
    private h50 f3840if;

    public m50(Digest digest) {
        this.f3838do = digest;
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m4843if(Cnew cnew) {
        BigInteger bigIntegerMo339static = cnew.m35456case().mo339static();
        BigInteger bigIntegerMo339static2 = cnew.m35462else().mo339static();
        int i = bigIntegerMo339static.toByteArray().length > 33 ? 64 : 32;
        int i2 = i * 2;
        byte[] bArr = new byte[i2];
        byte[] bArrM36309do = Cdo.m36309do(i, bigIntegerMo339static);
        byte[] bArrM36309do2 = Cdo.m36309do(i, bigIntegerMo339static2);
        for (int i3 = 0; i3 != i; i3++) {
            bArr[i3] = bArrM36309do[(i - i3) - 1];
        }
        for (int i4 = 0; i4 != i; i4++) {
            bArr[i + i4] = bArrM36309do2[(i - i4) - 1];
        }
        this.f3838do.update(bArr, 0, i2);
        byte[] bArr2 = new byte[this.f3838do.getDigestSize()];
        this.f3838do.doFinal(bArr2, 0);
        return bArr2;
    }

    /* renamed from: try, reason: not valid java name */
    private static BigInteger m4844try(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr2[i] = bArr[(bArr.length - i) - 1];
        }
        return new BigInteger(1, bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m4845do(CipherParameters cipherParameters) {
        k50 k50Var = (k50) cipherParameters;
        e40 e40VarM7258if = this.f3840if.m7258if();
        if (!e40VarM7258if.equals(k50Var.m7258if())) {
            throw new IllegalStateException("ECVKO public key has wrong domain parameters");
        }
        BigInteger bigIntegerMod = e40VarM7258if.m1647for().multiply(this.f3839for).multiply(this.f3840if.m2948for()).mod(e40VarM7258if.m1650try());
        Cnew cnewM35358do = org.bouncycastle.math.ec.Cdo.m35358do(e40VarM7258if.m1646do(), k50Var.m4252for());
        if (cnewM35358do.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECDHC");
        }
        Cnew cnewM35454abstract = cnewM35358do.m35470package(bigIntegerMod).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECVKO");
        }
        return m4843if(cnewM35454abstract);
    }

    /* renamed from: for, reason: not valid java name */
    public int m4846for() {
        return (this.f3840if.m7258if().m1646do().mo35334switch() + 7) / 8;
    }

    /* renamed from: new, reason: not valid java name */
    public void m4847new(CipherParameters cipherParameters) {
        fc1 fc1Var = (fc1) cipherParameters;
        this.f3840if = (h50) fc1Var.m2244do();
        this.f3839for = m4844try(fc1Var.m2245if());
    }
}
