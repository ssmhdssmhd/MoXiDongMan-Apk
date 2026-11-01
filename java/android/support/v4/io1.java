package android.support.v4;

import org.bouncycastle.crypto.prng.RandomGenerator;

/* loaded from: classes3.dex */
public class io1 implements RandomGenerator {

    /* renamed from: do, reason: not valid java name */
    private final RandomGenerator f2818do;

    /* renamed from: for, reason: not valid java name */
    private int f2819for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f2820if;

    public io1(RandomGenerator randomGenerator, int i) {
        if (randomGenerator == null) {
            throw new IllegalArgumentException("generator cannot be null");
        }
        if (i < 2) {
            throw new IllegalArgumentException("windowSize must be at least 2");
        }
        this.f2818do = randomGenerator;
        this.f2820if = new byte[i];
    }

    /* renamed from: do, reason: not valid java name */
    private void m3525do(byte[] bArr, int i, int i2) {
        synchronized (this) {
            for (int i3 = 0; i3 < i2; i3++) {
                if (this.f2819for < 1) {
                    RandomGenerator randomGenerator = this.f2818do;
                    byte[] bArr2 = this.f2820if;
                    randomGenerator.nextBytes(bArr2, 0, bArr2.length);
                    this.f2819for = this.f2820if.length;
                }
                byte[] bArr3 = this.f2820if;
                int i4 = this.f2819for - 1;
                this.f2819for = i4;
                bArr[i3 + i] = bArr3[i4];
            }
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j) {
        synchronized (this) {
            this.f2819for = 0;
            this.f2818do.addSeedMaterial(j);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        synchronized (this) {
            this.f2819for = 0;
            this.f2818do.addSeedMaterial(bArr);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        m3525do(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i, int i2) {
        m3525do(bArr, i, i2);
    }
}
