package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Cdo;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class iv {

    /* renamed from: case, reason: not valid java name */
    private SecureRandom f2894case;

    /* renamed from: do, reason: not valid java name */
    private Digest f2895do;

    /* renamed from: else, reason: not valid java name */
    private boolean f2896else;

    /* renamed from: for, reason: not valid java name */
    private int f2897for;

    /* renamed from: goto, reason: not valid java name */
    private int f2898goto;

    /* renamed from: if, reason: not valid java name */
    private int f2899if;

    /* renamed from: new, reason: not valid java name */
    private int f2900new;

    /* renamed from: try, reason: not valid java name */
    private int f2901try;

    /* renamed from: this, reason: not valid java name */
    private static final BigInteger f2893this = BigInteger.valueOf(0);

    /* renamed from: break, reason: not valid java name */
    private static final BigInteger f2891break = BigInteger.valueOf(1);

    /* renamed from: catch, reason: not valid java name */
    private static final BigInteger f2892catch = BigInteger.valueOf(2);

    public iv() {
        this(u00.m8176if());
    }

    public iv(Digest digest) {
        this.f2895do = digest;
    }

    /* renamed from: break, reason: not valid java name */
    private static void m3591break(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b = (byte) ((bArr[length] + 1) & 255);
            bArr[length] = b;
            if (b != 0) {
                return;
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    private hv m3592case() {
        BigInteger bit;
        int i;
        BigInteger bigIntegerSubtract;
        BigInteger bigIntegerM3596for;
        Digest digest = this.f2895do;
        int digestSize = digest.getDigestSize() * 8;
        byte[] bArr = new byte[this.f2897for / 8];
        int i2 = this.f2899if;
        int i3 = (i2 - 1) / digestSize;
        int i4 = (i2 - 1) % digestSize;
        int i5 = i2 / 8;
        byte[] bArr2 = new byte[i5];
        int digestSize2 = digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        loop0: while (true) {
            this.f2894case.nextBytes(bArr);
            int i6 = 0;
            m3599this(digest, bArr, bArr3, 0);
            bit = new BigInteger(1, bArr3).mod(f2891break.shiftLeft(this.f2897for - 1)).setBit(0).setBit(this.f2897for - 1);
            if (m3593const(bit)) {
                byte[] bArrM6371final = q3.m6371final(bArr);
                int i7 = this.f2899if * 4;
                i = 0;
                while (i < i7) {
                    for (int i8 = 1; i8 <= i3; i8++) {
                        m3591break(bArrM6371final);
                        m3599this(digest, bArrM6371final, bArr2, i5 - (i8 * digestSize2));
                    }
                    int i9 = i5 - (i3 * digestSize2);
                    m3591break(bArrM6371final);
                    m3599this(digest, bArrM6371final, bArr3, i6);
                    System.arraycopy(bArr3, digestSize2 - i9, bArr2, i6, i9);
                    bArr2[i6] = (byte) (bArr2[i6] | Byte.MIN_VALUE);
                    BigInteger bigInteger = new BigInteger(1, bArr2);
                    bigIntegerSubtract = bigInteger.subtract(bigInteger.mod(bit.shiftLeft(1)).subtract(f2891break));
                    if (bigIntegerSubtract.bitLength() == this.f2899if && m3593const(bigIntegerSubtract)) {
                        break loop0;
                    }
                    i++;
                    i6 = 0;
                }
            }
        }
        int i10 = this.f2898goto;
        return (i10 < 0 || (bigIntegerM3596for = m3596for(digest, bigIntegerSubtract, bit, bArr, i10)) == null) ? new hv(bigIntegerSubtract, bit, m3598if(bigIntegerSubtract, bit, this.f2894case), new mv(bArr, i)) : new hv(bigIntegerSubtract, bit, bigIntegerM3596for, new mv(bArr, i, this.f2898goto));
    }

    /* renamed from: const, reason: not valid java name */
    private boolean m3593const(BigInteger bigInteger) {
        return bigInteger.isProbablePrime(this.f2900new);
    }

    /* renamed from: do, reason: not valid java name */
    private static BigInteger m3594do(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerModPow;
        BigInteger bigIntegerDivide = bigInteger.subtract(f2891break).divide(bigInteger2);
        BigInteger bigIntegerSubtract = bigInteger.subtract(f2892catch);
        do {
            bigIntegerModPow = Cdo.m36316try(f2892catch, bigIntegerSubtract, secureRandom).modPow(bigIntegerDivide, bigInteger);
        } while (bigIntegerModPow.bitLength() <= 1);
        return bigIntegerModPow;
    }

    /* renamed from: else, reason: not valid java name */
    private static int m3595else(int i) {
        return i > 1024 ? 256 : 160;
    }

    /* renamed from: for, reason: not valid java name */
    private static BigInteger m3596for(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, int i) {
        BigInteger bigIntegerDivide = bigInteger.subtract(f2891break).divide(bigInteger2);
        byte[] bArrM36332if = Cfor.m36332if("6767656E");
        int length = bArr.length + bArrM36332if.length + 1 + 2;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(bArrM36332if, 0, bArr2, bArr.length, bArrM36332if.length);
        bArr2[length - 3] = (byte) i;
        byte[] bArr3 = new byte[digest.getDigestSize()];
        for (int i2 = 1; i2 < 65536; i2++) {
            m3591break(bArr2);
            m3599this(digest, bArr2, bArr3, 0);
            BigInteger bigIntegerModPow = new BigInteger(1, bArr3).modPow(bigIntegerDivide, bigInteger);
            if (bigIntegerModPow.compareTo(f2892catch) >= 0) {
                return bigIntegerModPow;
            }
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private static int m3597goto(int i) {
        if (i <= 1024) {
            return 40;
        }
        return (((i - 1) / 1024) * 8) + 48;
    }

    /* renamed from: if, reason: not valid java name */
    private static BigInteger m3598if(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return m3594do(bigInteger, bigInteger2, secureRandom);
    }

    /* renamed from: this, reason: not valid java name */
    private static void m3599this(Digest digest, byte[] bArr, byte[] bArr2, int i) {
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, i);
    }

    /* renamed from: try, reason: not valid java name */
    private hv m3600try() {
        int i = 20;
        byte[] bArr = new byte[20];
        byte[] bArr2 = new byte[20];
        byte[] bArr3 = new byte[20];
        byte[] bArr4 = new byte[20];
        int i2 = this.f2899if;
        int i3 = (i2 - 1) / 160;
        int i4 = i2 / 8;
        byte[] bArr5 = new byte[i4];
        if (!(this.f2895do instanceof wp1)) {
            throw new IllegalStateException("can only use SHA-1 for generating FIPS 186-2 parameters");
        }
        while (true) {
            this.f2894case.nextBytes(bArr);
            m3599this(this.f2895do, bArr, bArr2, 0);
            System.arraycopy(bArr, 0, bArr3, 0, i);
            m3591break(bArr3);
            m3599this(this.f2895do, bArr3, bArr3, 0);
            for (int i5 = 0; i5 != i; i5++) {
                bArr4[i5] = (byte) (bArr2[i5] ^ bArr3[i5]);
            }
            bArr4[0] = (byte) (bArr4[0] | Byte.MIN_VALUE);
            bArr4[19] = (byte) (bArr4[19] | 1);
            BigInteger bigInteger = new BigInteger(1, bArr4);
            if (m3593const(bigInteger)) {
                byte[] bArrM6371final = q3.m6371final(bArr);
                m3591break(bArrM6371final);
                int i6 = 0;
                while (i6 < 4096) {
                    for (int i7 = 1; i7 <= i3; i7++) {
                        m3591break(bArrM6371final);
                        m3599this(this.f2895do, bArrM6371final, bArr5, i4 - (i7 * 20));
                    }
                    int i8 = i4 - (i3 * 20);
                    m3591break(bArrM6371final);
                    m3599this(this.f2895do, bArrM6371final, bArr2, 0);
                    System.arraycopy(bArr2, 20 - i8, bArr5, 0, i8);
                    bArr5[0] = (byte) (bArr5[0] | Byte.MIN_VALUE);
                    BigInteger bigInteger2 = new BigInteger(1, bArr5);
                    BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger2.mod(bigInteger.shiftLeft(1)).subtract(f2891break));
                    if (bigIntegerSubtract.bitLength() == this.f2899if && m3593const(bigIntegerSubtract)) {
                        return new hv(bigIntegerSubtract, bigInteger, m3594do(bigIntegerSubtract, bigInteger, this.f2894case), new mv(bArr, i6));
                    }
                    i6++;
                    i = 20;
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m3601catch(int i, int i2, SecureRandom secureRandom) {
        this.f2899if = i;
        this.f2897for = m3595else(i);
        this.f2900new = i2;
        this.f2901try = Math.max(m3597goto(this.f2899if), (i2 + 1) / 2);
        this.f2894case = secureRandom;
        this.f2896else = false;
        this.f2898goto = -1;
    }

    /* renamed from: class, reason: not valid java name */
    public void m3602class(gv gvVar) {
        int iM2787if = gvVar.m2787if();
        int iM2786for = gvVar.m2786for();
        if (iM2787if < 1024 || iM2787if > 3072 || iM2787if % 1024 != 0) {
            throw new IllegalArgumentException("L values must be between 1024 and 3072 and a multiple of 1024");
        }
        if (iM2787if == 1024 && iM2786for != 160) {
            throw new IllegalArgumentException("N must be 160 for L = 1024");
        }
        if (iM2787if == 2048 && iM2786for != 224 && iM2786for != 256) {
            throw new IllegalArgumentException("N must be 224 or 256 for L = 2048");
        }
        if (iM2787if == 3072 && iM2786for != 256) {
            throw new IllegalArgumentException("N must be 256 for L = 3072");
        }
        if (this.f2895do.getDigestSize() * 8 < iM2786for) {
            throw new IllegalStateException("Digest output size too small for value of N");
        }
        this.f2899if = iM2787if;
        this.f2897for = iM2786for;
        this.f2900new = gvVar.m2785do();
        this.f2901try = Math.max(m3597goto(iM2787if), (this.f2900new + 1) / 2);
        this.f2894case = gvVar.m2788new();
        this.f2896else = true;
        this.f2898goto = gvVar.m2789try();
    }

    /* renamed from: new, reason: not valid java name */
    public hv m3603new() {
        return this.f2896else ? m3592case() : m3600try();
    }
}
