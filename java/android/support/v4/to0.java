package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.util.Cdo;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class to0 {

    /* renamed from: do, reason: not valid java name */
    public static final BigInteger f6629do = BigInteger.valueOf(0);

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f6630if = BigInteger.valueOf(1);

    /* renamed from: break, reason: not valid java name */
    public static BigInteger[] m8008break(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, String str, Digest digest, SecureRandom secureRandom) {
        BigInteger bigIntegerM36316try = Cdo.m36316try(f6629do, bigInteger2.subtract(f6630if), secureRandom);
        BigInteger bigIntegerModPow = bigInteger3.modPow(bigIntegerM36316try, bigInteger);
        return new BigInteger[]{bigIntegerModPow, bigIntegerM36316try.subtract(bigInteger5.multiply(m8023new(bigInteger3, bigIntegerModPow, bigInteger4, str, digest))).mod(bigInteger2)};
    }

    /* renamed from: case, reason: not valid java name */
    private static byte[] m8009case(BigInteger bigInteger, Digest digest) {
        digest.reset();
        m8027super(digest, bigInteger);
        m8017final(digest, "JPAKE_KC");
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static BigInteger m8010catch(BigInteger bigInteger, SecureRandom secureRandom) {
        return Cdo.m36316try(f6629do, bigInteger.subtract(f6630if), secureRandom);
    }

    /* renamed from: class, reason: not valid java name */
    public static BigInteger m8011class(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = f6630if;
        return Cdo.m36316try(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }

    /* renamed from: const, reason: not valid java name */
    private static byte[] m8012const(int i) {
        return new byte[]{(byte) (i >>> 24), (byte) (i >>> 16), (byte) (i >>> 8), (byte) i};
    }

    /* renamed from: default, reason: not valid java name */
    public static void m8013default(String str, String str2) throws xs {
        if (str.equals(str2)) {
            return;
        }
        throw new xs("Received payload from incorrect partner (" + str2 + "). Expected to receive payload from " + str + ".");
    }

    /* renamed from: do, reason: not valid java name */
    public static BigInteger m8014do(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return bigInteger3.modPow(bigInteger4, bigInteger);
    }

    /* renamed from: else, reason: not valid java name */
    public static BigInteger m8015else(String str, String str2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, Digest digest) throws IllegalStateException, tw {
        byte[] bArrM8009case = m8009case(bigInteger5, digest);
        pi0 pi0Var = new pi0(digest);
        byte[] bArr = new byte[pi0Var.getMacSize()];
        pi0Var.init(new gr0(bArrM8009case));
        m8021import(pi0Var, "KC_1_U");
        m8021import(pi0Var, str);
        m8021import(pi0Var, str2);
        m8022native(pi0Var, bigInteger);
        m8022native(pi0Var, bigInteger2);
        m8022native(pi0Var, bigInteger3);
        m8022native(pi0Var, bigInteger4);
        pi0Var.doFinal(bArr, 0);
        q3.c(bArrM8009case, (byte) 0);
        return new BigInteger(bArr);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m8016extends(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger[] bigIntegerArr, String str, Digest digest) throws xs {
        BigInteger bigInteger5 = bigIntegerArr[0];
        BigInteger bigInteger6 = bigIntegerArr[1];
        BigInteger bigIntegerM8023new = m8023new(bigInteger3, bigInteger5, bigInteger4, str, digest);
        if (bigInteger4.compareTo(f6629do) != 1 || bigInteger4.compareTo(bigInteger) != -1 || bigInteger4.modPow(bigInteger2, bigInteger).compareTo(f6630if) != 0 || bigInteger3.modPow(bigInteger6, bigInteger).multiply(bigInteger4.modPow(bigIntegerM8023new, bigInteger)).mod(bigInteger).compareTo(bigInteger5) != 0) {
            throw new xs("Zero-knowledge proof validation failed");
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static void m8017final(Digest digest, String str) {
        byte[] bArrM36352class = Cfor.m36352class(str);
        digest.update(bArrM36352class, 0, bArrM36352class.length);
        q3.c(bArrM36352class, (byte) 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static BigInteger m8018for(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.modPow(bigInteger3, bigInteger);
    }

    /* renamed from: goto, reason: not valid java name */
    public static BigInteger m8019goto(char[] cArr) {
        return new BigInteger(Cfor.m36353const(cArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static BigInteger m8020if(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return bigInteger2.multiply(bigInteger3).multiply(bigInteger4).mod(bigInteger);
    }

    /* renamed from: import, reason: not valid java name */
    private static void m8021import(Mac mac, String str) throws IllegalStateException, tw {
        byte[] bArrM36352class = Cfor.m36352class(str);
        mac.update(bArrM36352class, 0, bArrM36352class.length);
        q3.c(bArrM36352class, (byte) 0);
    }

    /* renamed from: native, reason: not valid java name */
    private static void m8022native(Mac mac, BigInteger bigInteger) throws IllegalStateException, tw {
        byte[] bArrM36313if = Cdo.m36313if(bigInteger);
        mac.update(bArrM36313if, 0, bArrM36313if.length);
        q3.c(bArrM36313if, (byte) 0);
    }

    /* renamed from: new, reason: not valid java name */
    private static BigInteger m8023new(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, Digest digest) {
        digest.reset();
        m8033while(digest, bigInteger);
        m8033while(digest, bigInteger2);
        m8033while(digest, bigInteger3);
        m8030throw(digest, str);
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return new BigInteger(bArr);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m8024public(BigInteger bigInteger) throws xs {
        if (bigInteger.equals(f6630if)) {
            throw new xs("ga is equal to 1.  It should not be.  The chances of this happening are on the order of 2^160 for a 160-bit q.  Try again.");
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m8025return(BigInteger bigInteger) throws xs {
        if (bigInteger.equals(f6630if)) {
            throw new xs("g^x validation failed.  g^x should not be 1.");
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m8026static(String str, String str2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, Digest digest, BigInteger bigInteger6) throws xs {
        if (!m8015else(str2, str, bigInteger3, bigInteger4, bigInteger, bigInteger2, bigInteger5, digest).equals(bigInteger6)) {
            throw new xs("Partner MacTag validation failed. Therefore, the password, MAC, or digest algorithm of each participant does not match.");
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static void m8027super(Digest digest, BigInteger bigInteger) {
        byte[] bArrM36313if = Cdo.m36313if(bigInteger);
        digest.update(bArrM36313if, 0, bArrM36313if.length);
        q3.c(bArrM36313if, (byte) 0);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m8028switch(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new NullPointerException(str + " must not be null");
    }

    /* renamed from: this, reason: not valid java name */
    public static BigInteger m8029this(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.multiply(bigInteger3).mod(bigInteger);
    }

    /* renamed from: throw, reason: not valid java name */
    private static void m8030throw(Digest digest, String str) {
        byte[] bArrM36352class = Cfor.m36352class(str);
        digest.update(m8012const(bArrM36352class.length), 0, 4);
        digest.update(bArrM36352class, 0, bArrM36352class.length);
        q3.c(bArrM36352class, (byte) 0);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m8031throws(String str, String str2) throws xs {
        if (str.equals(str2)) {
            throw new xs("Both participants are using the same participantId (" + str + "). This is not allowed. Each participant must use a unique participantId.");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static BigInteger m8032try(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6) {
        return bigInteger3.modPow(bigInteger4.multiply(bigInteger5).negate().mod(bigInteger2), bigInteger).multiply(bigInteger6).modPow(bigInteger4, bigInteger);
    }

    /* renamed from: while, reason: not valid java name */
    private static void m8033while(Digest digest, BigInteger bigInteger) {
        byte[] bArrM36313if = Cdo.m36313if(bigInteger);
        digest.update(m8012const(bArrM36313if.length), 0, 4);
        digest.update(bArrM36313if, 0, bArrM36313if.length);
        q3.c(bArrM36313if, (byte) 0);
    }
}
