package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class jr1 {

    /* renamed from: do, reason: not valid java name */
    private static BigInteger f3204do = BigInteger.valueOf(0);

    /* renamed from: if, reason: not valid java name */
    private static BigInteger f3205if = BigInteger.valueOf(1);

    /* renamed from: break, reason: not valid java name */
    private static BigInteger m4074break(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        int iBitLength = (bigInteger.bitLength() + 7) / 8;
        byte[] bArrM4080goto = m4080goto(bigInteger2, iBitLength);
        byte[] bArrM4080goto2 = m4080goto(bigInteger3, iBitLength);
        byte[] bArrM4080goto3 = m4080goto(bigInteger4, iBitLength);
        digest.update(bArrM4080goto, 0, bArrM4080goto.length);
        digest.update(bArrM4080goto2, 0, bArrM4080goto2.length);
        digest.update(bArrM4080goto3, 0, bArrM4080goto3.length);
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return new BigInteger(1, bArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static BigInteger m4075case(Digest digest, BigInteger bigInteger, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int digestSize = digest.getDigestSize();
        byte[] bArr4 = new byte[digestSize];
        digest.update(bArr2, 0, bArr2.length);
        digest.update((byte) 58);
        digest.update(bArr3, 0, bArr3.length);
        digest.doFinal(bArr4, 0);
        digest.update(bArr, 0, bArr.length);
        digest.update(bArr4, 0, digestSize);
        digest.doFinal(bArr4, 0);
        return new BigInteger(1, bArr4);
    }

    /* renamed from: catch, reason: not valid java name */
    public static BigInteger m4076catch(BigInteger bigInteger, BigInteger bigInteger2) throws xs {
        BigInteger bigIntegerMod = bigInteger2.mod(bigInteger);
        if (bigIntegerMod.equals(f3204do)) {
            throw new xs("Invalid public value: 0");
        }
        return bigIntegerMod;
    }

    /* renamed from: do, reason: not valid java name */
    public static BigInteger m4077do(Digest digest, BigInteger bigInteger, BigInteger bigInteger2) {
        return m4083this(digest, bigInteger, bigInteger, bigInteger2);
    }

    /* renamed from: else, reason: not valid java name */
    public static BigInteger m4078else(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return Cdo.m36316try(f3205if.shiftLeft(Math.min(256, bigInteger.bitLength() / 2) - 1), bigInteger.subtract(f3205if), secureRandom);
    }

    /* renamed from: for, reason: not valid java name */
    public static BigInteger m4079for(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return m4074break(digest, bigInteger, bigInteger2, bigInteger3, bigInteger4);
    }

    /* renamed from: goto, reason: not valid java name */
    private static byte[] m4080goto(BigInteger bigInteger, int i) {
        byte[] bArrM36313if = Cdo.m36313if(bigInteger);
        if (bArrM36313if.length >= i) {
            return bArrM36313if;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(bArrM36313if, 0, bArr, i - bArrM36313if.length, bArrM36313if.length);
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static BigInteger m4081if(Digest digest, BigInteger bigInteger, BigInteger bigInteger2) {
        byte[] bArrM4080goto = m4080goto(bigInteger2, (bigInteger.bitLength() + 7) / 8);
        digest.update(bArrM4080goto, 0, bArrM4080goto.length);
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return new BigInteger(1, bArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static BigInteger m4082new(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return m4074break(digest, bigInteger, bigInteger2, bigInteger3, bigInteger4);
    }

    /* renamed from: this, reason: not valid java name */
    private static BigInteger m4083this(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        int iBitLength = (bigInteger.bitLength() + 7) / 8;
        byte[] bArrM4080goto = m4080goto(bigInteger2, iBitLength);
        byte[] bArrM4080goto2 = m4080goto(bigInteger3, iBitLength);
        digest.update(bArrM4080goto, 0, bArrM4080goto.length);
        digest.update(bArrM4080goto2, 0, bArrM4080goto2.length);
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return new BigInteger(1, bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static BigInteger m4084try(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return m4083this(digest, bigInteger, bigInteger2, bigInteger3);
    }
}
