package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class gg0 implements DSAExt {

    /* renamed from: do, reason: not valid java name */
    public tf0 f2115do;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f2116if;

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        BigInteger bigIntegerM36314new;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr2[i] = bArr[(length - 1) - i];
        }
        BigInteger bigInteger = new BigInteger(1, bArr2);
        yf0 yf0VarM7866if = this.f2115do.m7866if();
        do {
            bigIntegerM36314new = Cdo.m36314new(yf0VarM7866if.m9828for().bitLength(), this.f2116if);
        } while (bigIntegerM36314new.compareTo(yf0VarM7866if.m9828for()) >= 0);
        BigInteger bigIntegerMod = yf0VarM7866if.m9827do().modPow(bigIntegerM36314new, yf0VarM7866if.m9829if()).mod(yf0VarM7866if.m9828for());
        return new BigInteger[]{bigIntegerMod, bigIntegerM36314new.multiply(bigInteger).add(((ag0) this.f2115do).m242for().multiply(bigIntegerMod)).mod(yf0VarM7866if.m9828for())};
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.f2115do.m7866if().m9828for();
    }

    @Override // org.bouncycastle.crypto.DSA
    public void init(boolean z, CipherParameters cipherParameters) {
        tf0 tf0Var;
        if (!z) {
            tf0Var = (eg0) cipherParameters;
        } else {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f2116if = cc1Var.m847if();
                this.f2115do = (ag0) cc1Var.m846do();
                return;
            }
            this.f2116if = Cfor.m33599case();
            tf0Var = (ag0) cipherParameters;
        }
        this.f2115do = tf0Var;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr2[i] = bArr[(length - 1) - i];
        }
        BigInteger bigInteger3 = new BigInteger(1, bArr2);
        yf0 yf0VarM7866if = this.f2115do.m7866if();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        if (bigIntegerValueOf.compareTo(bigInteger) >= 0 || yf0VarM7866if.m9828for().compareTo(bigInteger) <= 0 || bigIntegerValueOf.compareTo(bigInteger2) >= 0 || yf0VarM7866if.m9828for().compareTo(bigInteger2) <= 0) {
            return false;
        }
        BigInteger bigIntegerModPow = bigInteger3.modPow(yf0VarM7866if.m9828for().subtract(new BigInteger(ExifInterface.GPS_MEASUREMENT_2D)), yf0VarM7866if.m9828for());
        return yf0VarM7866if.m9827do().modPow(bigInteger2.multiply(bigIntegerModPow).mod(yf0VarM7866if.m9828for()), yf0VarM7866if.m9829if()).multiply(((eg0) this.f2115do).m1876for().modPow(yf0VarM7866if.m9828for().subtract(bigInteger).multiply(bigIntegerModPow).mod(yf0VarM7866if.m9828for()), yf0VarM7866if.m9829if())).mod(yf0VarM7866if.m9829if()).mod(yf0VarM7866if.m9828for()).equals(bigInteger);
    }
}
