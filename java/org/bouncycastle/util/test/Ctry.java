package org.bouncycastle.util.test;

import java.security.SecureRandom;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.crypto.prng.EntropySourceProvider;

/* renamed from: org.bouncycastle.util.test.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements EntropySourceProvider {

    /* renamed from: do, reason: not valid java name */
    private final SecureRandom f32676do = new SecureRandom();

    /* renamed from: if, reason: not valid java name */
    private final boolean f32677if;

    /* renamed from: org.bouncycastle.util.test.try$do, reason: invalid class name */
    public class Cdo implements EntropySource {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f32678do;

        public Cdo(int i) {
            this.f32678do = i;
        }

        @Override // org.bouncycastle.crypto.prng.EntropySource
        public int entropySize() {
            return this.f32678do;
        }

        @Override // org.bouncycastle.crypto.prng.EntropySource
        public byte[] getEntropy() {
            byte[] bArr = new byte[(this.f32678do + 7) / 8];
            Ctry.this.f32676do.nextBytes(bArr);
            return bArr;
        }

        @Override // org.bouncycastle.crypto.prng.EntropySource
        public boolean isPredictionResistant() {
            return Ctry.this.f32677if;
        }
    }

    public Ctry(boolean z) {
        this.f32677if = z;
    }

    @Override // org.bouncycastle.crypto.prng.EntropySourceProvider
    public EntropySource get(int i) {
        return new Cdo(i);
    }
}
