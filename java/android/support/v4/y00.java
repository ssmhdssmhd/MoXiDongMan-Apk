package android.support.v4;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.prng.RandomGenerator;

/* loaded from: classes3.dex */
public class y00 implements RandomGenerator {

    /* renamed from: case, reason: not valid java name */
    private static long f8068case = 10;

    /* renamed from: for, reason: not valid java name */
    private Digest f8070for;

    /* renamed from: new, reason: not valid java name */
    private byte[] f8072new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f8073try;

    /* renamed from: if, reason: not valid java name */
    private long f8071if = 1;

    /* renamed from: do, reason: not valid java name */
    private long f8069do = 1;

    public y00(Digest digest) {
        this.f8070for = digest;
        this.f8073try = new byte[digest.getDigestSize()];
        this.f8072new = new byte[digest.getDigestSize()];
    }

    /* renamed from: do, reason: not valid java name */
    private void m9658do() {
        m9661new(this.f8073try);
        long j = this.f8071if;
        this.f8071if = 1 + j;
        m9660if(j);
        m9659for(this.f8073try);
    }

    /* renamed from: for, reason: not valid java name */
    private void m9659for(byte[] bArr) {
        this.f8070for.doFinal(bArr, 0);
    }

    /* renamed from: if, reason: not valid java name */
    private void m9660if(long j) {
        for (int i = 0; i != 8; i++) {
            this.f8070for.update((byte) j);
            j >>>= 8;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m9661new(byte[] bArr) {
        this.f8070for.update(bArr, 0, bArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    private void m9662try() {
        long j = this.f8069do;
        this.f8069do = 1 + j;
        m9660if(j);
        m9661new(this.f8072new);
        m9661new(this.f8073try);
        m9659for(this.f8072new);
        if (this.f8069do % f8068case == 0) {
            m9658do();
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j) {
        synchronized (this) {
            m9660if(j);
            m9661new(this.f8073try);
            m9659for(this.f8073try);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        synchronized (this) {
            m9661new(bArr);
            m9661new(this.f8073try);
            m9659for(this.f8073try);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m9662try();
            int i3 = i2 + i;
            int i4 = 0;
            while (i != i3) {
                if (i4 == this.f8072new.length) {
                    m9662try();
                    i4 = 0;
                }
                bArr[i] = this.f8072new[i4];
                i++;
                i4++;
            }
        }
    }
}
