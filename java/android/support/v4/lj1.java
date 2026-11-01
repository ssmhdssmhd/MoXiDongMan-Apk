package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class lj1 implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private static final long f3669case = -5196783011329398165L;

    /* renamed from: else, reason: not valid java name */
    private static final long f3670else = -7046029254386353131L;

    /* renamed from: new, reason: not valid java name */
    private static final int f3671new = 64;

    /* renamed from: try, reason: not valid java name */
    private static final int f3672try = 8;

    /* renamed from: for, reason: not valid java name */
    private boolean f3674for;

    /* renamed from: do, reason: not valid java name */
    private int f3673do = 12;

    /* renamed from: if, reason: not valid java name */
    private long[] f3675if = null;

    /* renamed from: case, reason: not valid java name */
    private void m4692case(byte[] bArr) {
        long[] jArr;
        int length = (bArr.length + 7) / 8;
        long[] jArr2 = new long[length];
        for (int i = 0; i != bArr.length; i++) {
            int i2 = i / 8;
            jArr2[i2] = jArr2[i2] + ((bArr[i] & 255) << ((i % 8) * 8));
        }
        long[] jArr3 = new long[(this.f3673do + 1) * 2];
        this.f3675if = jArr3;
        jArr3[0] = -5196783011329398165L;
        int i3 = 1;
        while (true) {
            jArr = this.f3675if;
            if (i3 >= jArr.length) {
                break;
            }
            jArr[i3] = jArr[i3 - 1] + f3670else;
            i3++;
        }
        int length2 = length > jArr.length ? length * 3 : jArr.length * 3;
        long jM4697new = 0;
        long jM4697new2 = 0;
        int length3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < length2; i5++) {
            long[] jArr4 = this.f3675if;
            jM4697new = m4697new(jArr4[length3] + jM4697new + jM4697new2, 3L);
            jArr4[length3] = jM4697new;
            jM4697new2 = m4697new(jArr2[i4] + jM4697new + jM4697new2, jM4697new2 + jM4697new);
            jArr2[i4] = jM4697new2;
            length3 = (length3 + 1) % this.f3675if.length;
            i4 = (i4 + 1) % length;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private long m4693do(byte[] bArr, int i) {
        long j = 0;
        for (int i2 = 7; i2 >= 0; i2--) {
            j = (j << 8) + (bArr[i2 + i] & 255);
        }
        return j;
    }

    /* renamed from: else, reason: not valid java name */
    private void m4694else(long j, byte[] bArr, int i) {
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i2 + i] = (byte) j;
            j >>>= 8;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m4695for(byte[] bArr, int i, byte[] bArr2, int i2) {
        long jM4693do = m4693do(bArr, i) + this.f3675if[0];
        long jM4693do2 = m4693do(bArr, i + 8) + this.f3675if[1];
        for (int i3 = 1; i3 <= this.f3673do; i3++) {
            int i4 = i3 * 2;
            jM4693do = m4697new(jM4693do ^ jM4693do2, jM4693do2) + this.f3675if[i4];
            jM4693do2 = m4697new(jM4693do2 ^ jM4693do, jM4693do) + this.f3675if[i4 + 1];
        }
        m4694else(jM4693do, bArr2, i2);
        m4694else(jM4693do2, bArr2, i2 + 8);
        return 16;
    }

    /* renamed from: if, reason: not valid java name */
    private int m4696if(byte[] bArr, int i, byte[] bArr2, int i2) {
        long jM4693do = m4693do(bArr, i);
        long jM4693do2 = m4693do(bArr, i + 8);
        for (int i3 = this.f3673do; i3 >= 1; i3--) {
            int i4 = i3 * 2;
            jM4693do2 = m4698try(jM4693do2 - this.f3675if[i4 + 1], jM4693do) ^ jM4693do;
            jM4693do = m4698try(jM4693do - this.f3675if[i4], jM4693do2) ^ jM4693do2;
        }
        m4694else(jM4693do - this.f3675if[0], bArr2, i2);
        m4694else(jM4693do2 - this.f3675if[1], bArr2, i2 + 8);
        return 16;
    }

    /* renamed from: new, reason: not valid java name */
    private long m4697new(long j, long j2) {
        long j3 = j2 & 63;
        return (j >>> ((int) (64 - j3))) | (j << ((int) j3));
    }

    /* renamed from: try, reason: not valid java name */
    private long m4698try(long j, long j2) {
        long j3 = j2 & 63;
        return (j << ((int) (64 - j3))) | (j >>> ((int) j3));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC5-64";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof mj1)) {
            throw new IllegalArgumentException("invalid parameter passed to RC564 init - " + cipherParameters.getClass().getName());
        }
        mj1 mj1Var = (mj1) cipherParameters;
        this.f3674for = z;
        this.f3673do = mj1Var.m4933if();
        m4692case(mj1Var.m4932do());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        return this.f3674for ? m4695for(bArr, i, bArr2, i2) : m4696if(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
