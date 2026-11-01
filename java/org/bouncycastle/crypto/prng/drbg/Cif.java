package org.bouncycastle.crypto.prng.drbg;

import android.support.v4.ic0;
import android.support.v4.m30;
import android.support.v4.q3;
import android.support.v4.t11;
import java.math.BigInteger;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.prng.drbg.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements SP80090DRBG {

    /* renamed from: const, reason: not valid java name */
    private static final BigInteger f30284const;

    /* renamed from: default, reason: not valid java name */
    private static final m30[] f30285default;

    /* renamed from: extends, reason: not valid java name */
    private static final long f30286extends = 2147483648L;

    /* renamed from: final, reason: not valid java name */
    private static final BigInteger f30287final;

    /* renamed from: finally, reason: not valid java name */
    private static final int f30288finally = 4096;

    /* renamed from: import, reason: not valid java name */
    private static final BigInteger f30289import;

    /* renamed from: native, reason: not valid java name */
    private static final BigInteger f30290native;

    /* renamed from: package, reason: not valid java name */
    private static final int f30291package = 4096;

    /* renamed from: private, reason: not valid java name */
    private static final int f30292private = 4096;

    /* renamed from: public, reason: not valid java name */
    private static final BigInteger f30293public;

    /* renamed from: return, reason: not valid java name */
    private static final BigInteger f30294return;

    /* renamed from: static, reason: not valid java name */
    private static final BigInteger f30295static;

    /* renamed from: super, reason: not valid java name */
    private static final BigInteger f30296super;

    /* renamed from: switch, reason: not valid java name */
    private static final BigInteger f30297switch;

    /* renamed from: throw, reason: not valid java name */
    private static final BigInteger f30298throw;

    /* renamed from: throws, reason: not valid java name */
    private static final BigInteger f30299throws;

    /* renamed from: while, reason: not valid java name */
    private static final BigInteger f30300while;

    /* renamed from: break, reason: not valid java name */
    private byte[] f30301break;

    /* renamed from: case, reason: not valid java name */
    private int f30302case;

    /* renamed from: catch, reason: not valid java name */
    private int f30303catch;

    /* renamed from: class, reason: not valid java name */
    private ECMultiplier f30304class;

    /* renamed from: do, reason: not valid java name */
    private Digest f30305do;

    /* renamed from: else, reason: not valid java name */
    private Cif.Ccase f30306else;

    /* renamed from: for, reason: not valid java name */
    private EntropySource f30307for;

    /* renamed from: goto, reason: not valid java name */
    private Cnew f30308goto;

    /* renamed from: if, reason: not valid java name */
    private long f30309if;

    /* renamed from: new, reason: not valid java name */
    private int f30310new;

    /* renamed from: this, reason: not valid java name */
    private Cnew f30311this;

    /* renamed from: try, reason: not valid java name */
    private int f30312try;

    static {
        BigInteger bigInteger = new BigInteger("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", 16);
        f30284const = bigInteger;
        BigInteger bigInteger2 = new BigInteger("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5", 16);
        f30287final = bigInteger2;
        BigInteger bigInteger3 = new BigInteger("c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192", 16);
        f30296super = bigInteger3;
        BigInteger bigInteger4 = new BigInteger("b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046", 16);
        f30298throw = bigInteger4;
        BigInteger bigInteger5 = new BigInteger("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", 16);
        f30300while = bigInteger5;
        BigInteger bigInteger6 = new BigInteger("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f", 16);
        f30289import = bigInteger6;
        BigInteger bigInteger7 = new BigInteger("8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065", 16);
        f30290native = bigInteger7;
        BigInteger bigInteger8 = new BigInteger("023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd", 16);
        f30293public = bigInteger8;
        BigInteger bigInteger9 = new BigInteger("c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", 16);
        f30294return = bigInteger9;
        BigInteger bigInteger10 = new BigInteger("11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650", 16);
        f30295static = bigInteger10;
        BigInteger bigInteger11 = new BigInteger("1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63", 16);
        f30297switch = bigInteger11;
        BigInteger bigInteger12 = new BigInteger("1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de", 16);
        f30299throws = bigInteger12;
        f30285default = new m30[]{new m30(128, ccase.m35430goto(bigInteger, bigInteger2), ccase.m35430goto(bigInteger3, bigInteger4), 1), new m30(192, ccase.m35430goto(bigInteger5, bigInteger6), ccase.m35430goto(bigInteger7, bigInteger8), 1), new m30(256, ccase.m35430goto(bigInteger9, bigInteger10), ccase.m35430goto(bigInteger11, bigInteger12), 1)};
        Cif.Ccase ccase = (Cif.Ccase) t11.m7678if("P-256").m7909try();
        Cif.Ccase ccase2 = (Cif.Ccase) t11.m7678if("P-384").m7909try();
        Cif.Ccase ccase3 = (Cif.Ccase) t11.m7678if("P-521").m7909try();
    }

    public Cif(Digest digest, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        this(f30285default, digest, i, entropySource, bArr, bArr2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
    
        if (r2.f30308goto == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
    
        r3 = org.bouncycastle.crypto.prng.drbg.Ctry.m33891for(r2.f30305do, r6, r2.f30312try);
        r2.f30301break = r3;
        r2.f30303catch = r3.length;
        r2.f30309if = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0089, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0091, code lost:
    
        throw new java.lang.IllegalArgumentException("security strength cannot be greater than 256 bits");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Cif(m30[] m30VarArr, Digest digest, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        this.f30304class = new ic0();
        this.f30305do = digest;
        this.f30307for = entropySource;
        this.f30310new = i;
        if (Ctry.m33893new(bArr, 512)) {
            throw new IllegalArgumentException("Personalization string too large");
        }
        if (entropySource.entropySize() < i || entropySource.entropySize() > 4096) {
            throw new IllegalArgumentException("EntropySource must provide between " + i + " and 4096 bits");
        }
        byte[] bArrM6370extends = q3.m6370extends(m33881do(), bArr2, bArr);
        int i2 = 0;
        while (true) {
            if (i2 == m30VarArr.length) {
                break;
            }
            if (i > m30VarArr[i2].m4832try()) {
                i2++;
            } else {
                if (Ctry.m33890do(digest) < m30VarArr[i2].m4832try()) {
                    throw new IllegalArgumentException("Requested security strength is not supported by digest");
                }
                this.f30312try = m30VarArr[i2].m4827case();
                this.f30302case = m30VarArr[i2].m4830if() / 8;
                this.f30308goto = m30VarArr[i2].m4829for();
                this.f30311this = m30VarArr[i2].m4831new();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m33881do() {
        byte[] entropy = this.f30307for.getEntropy();
        if (entropy.length >= (this.f30310new + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33882for(byte[] bArr, int i) {
        int i2 = i % 8;
        if (i2 == 0) {
            return bArr;
        }
        int i3 = 8 - i2;
        int i4 = 0;
        int length = bArr.length - 1;
        while (length >= 0) {
            int i5 = bArr[length] & 255;
            bArr[length] = (byte) ((i4 >> (8 - i3)) | (i5 << i3));
            length--;
            i4 = i5;
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    private BigInteger m33883if(Cnew cnew, BigInteger bigInteger) {
        return this.f30304class.multiply(cnew, bigInteger).m35454abstract().m35456case().mo339static();
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m33884new(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            return bArr;
        }
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr.length * 8;
        int length2 = bArr.length / this.f30302case;
        if (Ctry.m33893new(bArr2, 512)) {
            throw new IllegalArgumentException("Additional input too large");
        }
        if (this.f30309if + length2 > f30286extends) {
            return -1;
        }
        if (z) {
            reseed(bArr2);
            bArr2 = null;
        }
        BigInteger bigInteger = bArr2 != null ? new BigInteger(1, m33884new(this.f30301break, Ctry.m33891for(this.f30305do, bArr2, this.f30312try))) : new BigInteger(1, this.f30301break);
        int length3 = 0;
        q3.c(bArr, (byte) 0);
        int length4 = 0;
        for (int i = 0; i < length2; i++) {
            bigInteger = m33883if(this.f30308goto, bigInteger);
            byte[] byteArray = m33883if(this.f30311this, bigInteger).toByteArray();
            int length5 = byteArray.length;
            int i2 = this.f30302case;
            if (length5 > i2) {
                System.arraycopy(byteArray, byteArray.length - i2, bArr, length4, i2);
            } else {
                System.arraycopy(byteArray, 0, bArr, (i2 - byteArray.length) + length4, byteArray.length);
            }
            length4 += this.f30302case;
            this.f30309if++;
        }
        if (length4 < bArr.length) {
            bigInteger = m33883if(this.f30308goto, bigInteger);
            byte[] byteArray2 = m33883if(this.f30311this, bigInteger).toByteArray();
            int length6 = bArr.length - length4;
            int length7 = byteArray2.length;
            int i3 = this.f30302case;
            if (length7 > i3) {
                length3 = byteArray2.length - i3;
            } else {
                length4 += i3 - byteArray2.length;
            }
            System.arraycopy(byteArray2, length3, bArr, length4, length6);
            this.f30309if++;
        }
        this.f30301break = Cdo.m36309do(this.f30303catch, m33883if(this.f30308goto, bigInteger));
        return length;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this.f30302case * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        if (Ctry.m33893new(bArr, 512)) {
            throw new IllegalArgumentException("Additional input string too large");
        }
        this.f30301break = Ctry.m33891for(this.f30305do, q3.m6370extends(m33882for(this.f30301break, this.f30312try), m33881do(), bArr), this.f30312try);
        this.f30309if = 0L;
    }
}
