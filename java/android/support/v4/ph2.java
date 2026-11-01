package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class ph2 extends SecureRandom {
    private final oh2 drbg;
    private final boolean predictionResistant;
    private final SecureRandom randomSource;

    public ph2(SecureRandom secureRandom, oh2 oh2Var, boolean z) {
        this.randomSource = secureRandom;
        this.drbg = oh2Var;
        this.predictionResistant = z;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i) {
        return y70.m9767do(this.drbg.m5656if(), i);
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            if (this.drbg.m5655do(bArr, this.predictionResistant) < 0) {
                this.drbg.m5654case();
                this.drbg.m5655do(bArr, this.predictionResistant);
            }
        }
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void setSeed(long j) {
        synchronized (this) {
            SecureRandom secureRandom = this.randomSource;
            if (secureRandom != null) {
                secureRandom.setSeed(j);
            }
        }
    }

    @Override // java.security.SecureRandom
    public void setSeed(byte[] bArr) {
        synchronized (this) {
            SecureRandom secureRandom = this.randomSource;
            if (secureRandom != null) {
                secureRandom.setSeed(bArr);
            }
        }
    }
}
