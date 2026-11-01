package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.signers.DSAEncoding;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class vd1 implements DSAEncoding {

    /* renamed from: do, reason: not valid java name */
    public static final vd1 f7151do = new vd1();

    /* renamed from: for, reason: not valid java name */
    private void m8827for(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, int i, int i2) {
        byte[] byteArray = m8828do(bigInteger, bigInteger2).toByteArray();
        int iMax = Math.max(0, byteArray.length - i2);
        int length = byteArray.length - iMax;
        int i3 = (i2 - length) + i;
        q3.e(bArr, i, i3, (byte) 0);
        System.arraycopy(byteArray, iMax, bArr, i3, length);
    }

    @Override // org.bouncycastle.crypto.signers.DSAEncoding
    public BigInteger[] decode(BigInteger bigInteger, byte[] bArr) {
        int iM36315this = Cdo.m36315this(bigInteger);
        if (bArr.length == iM36315this * 2) {
            return new BigInteger[]{m8829if(bigInteger, bArr, 0, iM36315this), m8829if(bigInteger, bArr, iM36315this, iM36315this)};
        }
        throw new IllegalArgumentException("Encoding has incorrect length");
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m8828do(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger2.signum() < 0 || bigInteger2.compareTo(bigInteger) >= 0) {
            throw new IllegalArgumentException("Value out of range");
        }
        return bigInteger2;
    }

    @Override // org.bouncycastle.crypto.signers.DSAEncoding
    public byte[] encode(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        int iM36315this = Cdo.m36315this(bigInteger);
        byte[] bArr = new byte[iM36315this * 2];
        m8827for(bigInteger, bigInteger2, bArr, 0, iM36315this);
        m8827for(bigInteger, bigInteger3, bArr, iM36315this, iM36315this);
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m8829if(BigInteger bigInteger, byte[] bArr, int i, int i2) {
        return m8828do(bigInteger, new BigInteger(1, q3.m6378instanceof(bArr, i, i2 + i)));
    }
}
