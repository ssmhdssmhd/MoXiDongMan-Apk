package org.bouncycastle.crypto.prng;

import android.support.v4.ph2;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.prng.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements EntropySourceProvider {

    /* renamed from: do, reason: not valid java name */
    private final SecureRandom f30258do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f30259if;

    /* renamed from: org.bouncycastle.crypto.prng.do$do, reason: invalid class name and collision with other inner class name */
    public class C0407do implements EntropySource {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f30260do;

        public C0407do(int i) {
            this.f30260do = i;
        }

        @Override // org.bouncycastle.crypto.prng.EntropySource
        public int entropySize() {
            return this.f30260do;
        }

        @Override // org.bouncycastle.crypto.prng.EntropySource
        public byte[] getEntropy() {
            if (!(Cdo.this.f30258do instanceof Cif) && !(Cdo.this.f30258do instanceof ph2)) {
                return Cdo.this.f30258do.generateSeed((this.f30260do + 7) / 8);
            }
            byte[] bArr = new byte[(this.f30260do + 7) / 8];
            Cdo.this.f30258do.nextBytes(bArr);
            return bArr;
        }

        @Override // org.bouncycastle.crypto.prng.EntropySource
        public boolean isPredictionResistant() {
            return Cdo.this.f30259if;
        }
    }

    public Cdo(SecureRandom secureRandom, boolean z) {
        this.f30258do = secureRandom;
        this.f30259if = z;
    }

    @Override // org.bouncycastle.crypto.prng.EntropySourceProvider
    public EntropySource get(int i) {
        return new C0407do(i);
    }
}
