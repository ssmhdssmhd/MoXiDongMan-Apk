package org.bouncycastle.crypto.prng.drbg;

import android.support.v4.hn0;
import android.support.v4.q3;
import android.support.v4.qy0;
import android.support.v4.zq1;
import java.util.Hashtable;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.prng.EntropySource;

/* renamed from: org.bouncycastle.crypto.prng.drbg.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements SP80090DRBG {

    /* renamed from: break, reason: not valid java name */
    private static final int f30313break = 262144;

    /* renamed from: catch, reason: not valid java name */
    private static final Hashtable f30314catch;

    /* renamed from: goto, reason: not valid java name */
    private static final byte[] f30315goto = {1};

    /* renamed from: this, reason: not valid java name */
    private static final long f30316this = 140737488355328L;

    /* renamed from: case, reason: not valid java name */
    private int f30317case;

    /* renamed from: do, reason: not valid java name */
    private Digest f30318do;

    /* renamed from: else, reason: not valid java name */
    private int f30319else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30320for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30321if;

    /* renamed from: new, reason: not valid java name */
    private long f30322new;

    /* renamed from: try, reason: not valid java name */
    private EntropySource f30323try;

    static {
        Hashtable hashtable = new Hashtable();
        f30314catch = hashtable;
        hashtable.put(qy0.f5539case, hn0.m3072for(440));
        hashtable.put(qy0.f5542else, hn0.m3072for(440));
        hashtable.put("SHA-256", hn0.m3072for(440));
        hashtable.put(zq1.f8632for, hn0.m3072for(440));
        hashtable.put("SHA-512/224", hn0.m3072for(440));
        hashtable.put(qy0.f5544this, hn0.m3072for(888));
        hashtable.put("SHA-512", hn0.m3072for(888));
    }

    public Cnew(Digest digest, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        if (i > Ctry.m33890do(digest)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (entropySource.entropySize() < i) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f30318do = digest;
        this.f30323try = entropySource;
        this.f30317case = i;
        this.f30319else = ((Integer) f30314catch.get(digest.getAlgorithmName())).intValue();
        byte[] bArrM33891for = Ctry.m33891for(this.f30318do, q3.m6370extends(m33886for(), bArr2, bArr), this.f30319else);
        this.f30321if = bArrM33891for;
        byte[] bArr3 = new byte[bArrM33891for.length + 1];
        System.arraycopy(bArrM33891for, 0, bArr3, 1, bArrM33891for.length);
        this.f30320for = Ctry.m33891for(this.f30318do, bArr3, this.f30319else);
        this.f30322new = 1L;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33885do(byte[] bArr, byte[] bArr2) {
        int i = 0;
        for (int i2 = 1; i2 <= bArr2.length; i2++) {
            int i3 = (bArr[bArr.length - i2] & 255) + (bArr2[bArr2.length - i2] & 255) + i;
            i = i3 > 255 ? 1 : 0;
            bArr[bArr.length - i2] = (byte) i3;
        }
        for (int length = bArr2.length + 1; length <= bArr.length; length++) {
            int i4 = (bArr[bArr.length - length] & 255) + i;
            i = i4 > 255 ? 1 : 0;
            bArr[bArr.length - length] = (byte) i4;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33886for() {
        byte[] entropy = this.f30323try.getEntropy();
        if (entropy.length >= (this.f30317case + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    /* renamed from: if, reason: not valid java name */
    private void m33887if(byte[] bArr, byte[] bArr2) {
        this.f30318do.update(bArr, 0, bArr.length);
        this.f30318do.doFinal(bArr2, 0);
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m33888new(byte[] bArr) {
        byte[] bArr2 = new byte[this.f30318do.getDigestSize()];
        m33887if(bArr, bArr2);
        return bArr2;
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m33889try(byte[] bArr, int i) {
        int i2 = i / 8;
        int digestSize = i2 / this.f30318do.getDigestSize();
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte[] bArr3 = new byte[i2];
        int digestSize2 = this.f30318do.getDigestSize();
        byte[] bArr4 = new byte[digestSize2];
        for (int i3 = 0; i3 <= digestSize; i3++) {
            m33887if(bArr2, bArr4);
            int i4 = i3 * digestSize2;
            int i5 = i2 - i4;
            if (i5 > digestSize2) {
                i5 = digestSize2;
            }
            System.arraycopy(bArr4, 0, bArr3, i4, i5);
            m33885do(bArr2, f30315goto);
        }
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        }
        if (this.f30322new > f30316this) {
            return -1;
        }
        if (z) {
            reseed(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            byte[] bArr3 = this.f30321if;
            byte[] bArr4 = new byte[bArr3.length + 1 + bArr2.length];
            bArr4[0] = 2;
            System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
            System.arraycopy(bArr2, 0, bArr4, this.f30321if.length + 1, bArr2.length);
            m33885do(this.f30321if, m33888new(bArr4));
        }
        byte[] bArrM33889try = m33889try(this.f30321if, length);
        byte[] bArr5 = this.f30321if;
        byte[] bArr6 = new byte[bArr5.length + 1];
        System.arraycopy(bArr5, 0, bArr6, 1, bArr5.length);
        bArr6[0] = 3;
        m33885do(this.f30321if, m33888new(bArr6));
        m33885do(this.f30321if, this.f30320for);
        m33885do(this.f30321if, new byte[]{(byte) (r6 >> 24), (byte) (r6 >> 16), (byte) (r6 >> 8), (byte) this.f30322new});
        this.f30322new++;
        System.arraycopy(bArrM33889try, 0, bArr, 0, bArr.length);
        return length;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this.f30318do.getDigestSize() * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        byte[] bArrM33891for = Ctry.m33891for(this.f30318do, q3.m6372finally(f30315goto, this.f30321if, m33886for(), bArr), this.f30319else);
        this.f30321if = bArrM33891for;
        byte[] bArr2 = new byte[bArrM33891for.length + 1];
        bArr2[0] = 0;
        System.arraycopy(bArrM33891for, 0, bArr2, 1, bArrM33891for.length);
        this.f30320for = Ctry.m33891for(this.f30318do, bArr2, this.f30319else);
        this.f30322new = 1L;
    }
}
