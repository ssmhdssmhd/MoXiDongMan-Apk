package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import java.io.Serializable;
import java.nio.ByteBuffer;

@fm0
/* renamed from: com.google.common.hash.static, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cstatic extends Cfor implements Serializable {
    public static final HashFunction SIP_HASH_24 = new Cstatic(2, 4, 506097522914230528L, 1084818905618843912L);
    private static final long serialVersionUID = 0;
    private final int c;
    private final int d;
    private final long k0;
    private final long k1;

    /* renamed from: com.google.common.hash.static$do, reason: invalid class name */
    public static final class Cdo extends Ccase {

        /* renamed from: class, reason: not valid java name */
        private static final int f15198class = 8;

        /* renamed from: break, reason: not valid java name */
        private long f15199break;

        /* renamed from: case, reason: not valid java name */
        private long f15200case;

        /* renamed from: catch, reason: not valid java name */
        private long f15201catch;

        /* renamed from: else, reason: not valid java name */
        private long f15202else;

        /* renamed from: goto, reason: not valid java name */
        private long f15203goto;

        /* renamed from: new, reason: not valid java name */
        private final int f15204new;

        /* renamed from: this, reason: not valid java name */
        private long f15205this;

        /* renamed from: try, reason: not valid java name */
        private final int f15206try;

        public Cdo(int i, int i2, long j, long j2) {
            super(8);
            this.f15200case = 8317987319222330741L;
            this.f15202else = 7237128888997146477L;
            this.f15203goto = 7816392313619706465L;
            this.f15205this = 8387220255154660723L;
            this.f15199break = 0L;
            this.f15201catch = 0L;
            this.f15204new = i;
            this.f15206try = i2;
            this.f15200case = 8317987319222330741L ^ j;
            this.f15202else = 7237128888997146477L ^ j2;
            this.f15203goto = 7816392313619706465L ^ j;
            this.f15205this = 8387220255154660723L ^ j2;
        }

        /* renamed from: else, reason: not valid java name */
        private void m16963else(long j) {
            this.f15205this ^= j;
            m16964goto(this.f15204new);
            this.f15200case = j ^ this.f15200case;
        }

        /* renamed from: goto, reason: not valid java name */
        private void m16964goto(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.f15200case;
                long j2 = this.f15202else;
                this.f15200case = j + j2;
                this.f15203goto += this.f15205this;
                this.f15202else = Long.rotateLeft(j2, 13);
                long jRotateLeft = Long.rotateLeft(this.f15205this, 16);
                this.f15205this = jRotateLeft;
                long j3 = this.f15202else;
                long j4 = this.f15200case;
                this.f15202else = j3 ^ j4;
                this.f15205this = jRotateLeft ^ this.f15203goto;
                long jRotateLeft2 = Long.rotateLeft(j4, 32);
                this.f15200case = jRotateLeft2;
                long j5 = this.f15203goto;
                long j6 = this.f15202else;
                this.f15203goto = j5 + j6;
                this.f15200case = jRotateLeft2 + this.f15205this;
                this.f15202else = Long.rotateLeft(j6, 17);
                long jRotateLeft3 = Long.rotateLeft(this.f15205this, 21);
                this.f15205this = jRotateLeft3;
                long j7 = this.f15202else;
                long j8 = this.f15203goto;
                this.f15202else = j7 ^ j8;
                this.f15205this = jRotateLeft3 ^ this.f15200case;
                this.f15203goto = Long.rotateLeft(j8, 32);
            }
        }

        @Override // com.google.common.hash.Ccase
        /* renamed from: do */
        public Cclass mo16884do() {
            long j = this.f15201catch ^ (this.f15199break << 56);
            this.f15201catch = j;
            m16963else(j);
            this.f15203goto ^= 255;
            m16964goto(this.f15206try);
            return Cclass.fromLong(((this.f15200case ^ this.f15202else) ^ this.f15203goto) ^ this.f15205this);
        }

        @Override // com.google.common.hash.Ccase
        /* renamed from: new */
        public void mo16885new(ByteBuffer byteBuffer) {
            this.f15199break += 8;
            m16963else(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.Ccase
        /* renamed from: try */
        public void mo16886try(ByteBuffer byteBuffer) {
            this.f15199break += byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.f15201catch ^= (byteBuffer.get() & 255) << i;
                i += 8;
            }
        }
    }

    public Cstatic(int i, int i2, long j, long j2) {
        af1.m202catch(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i);
        af1.m202catch(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i2);
        this.c = i;
        this.d = i2;
        this.k0 = j;
        this.k1 = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof Cstatic)) {
            return false;
        }
        Cstatic cstatic = (Cstatic) obj;
        return this.c == cstatic.c && this.d == cstatic.d && this.k0 == cstatic.k0 && this.k1 == cstatic.k1;
    }

    public int hashCode() {
        return (int) ((((Cstatic.class.hashCode() ^ this.c) ^ this.d) ^ this.k0) ^ this.k1);
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new Cdo(this.c, this.d, this.k0, this.k1);
    }

    public String toString() {
        return "Hashing.sipHash" + this.c + "" + this.d + "(" + this.k0 + ", " + this.k1 + ")";
    }
}
