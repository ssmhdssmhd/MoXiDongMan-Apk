package com.google.common.hash;

import android.support.v4.b51;
import android.support.v4.fm0;
import com.google.common.primitives.Csuper;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@fm0
/* renamed from: com.google.common.hash.public, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cpublic extends Cfor implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;
    public static final HashFunction MURMUR3_128 = new Cpublic(0);
    public static final HashFunction GOOD_FAST_HASH_128 = new Cpublic(Cconst.f15154do);

    /* renamed from: com.google.common.hash.public$do, reason: invalid class name */
    public static final class Cdo extends Ccase {

        /* renamed from: else, reason: not valid java name */
        private static final int f15184else = 16;

        /* renamed from: goto, reason: not valid java name */
        private static final long f15185goto = -8663945395140668459L;

        /* renamed from: this, reason: not valid java name */
        private static final long f15186this = 5545529020109919103L;

        /* renamed from: case, reason: not valid java name */
        private int f15187case;

        /* renamed from: new, reason: not valid java name */
        private long f15188new;

        /* renamed from: try, reason: not valid java name */
        private long f15189try;

        public Cdo(int i) {
            super(16);
            long j = i;
            this.f15188new = j;
            this.f15189try = j;
            this.f15187case = 0;
        }

        /* renamed from: break, reason: not valid java name */
        private static long m16951break(long j) {
            return Long.rotateLeft(j * f15186this, 33) * f15185goto;
        }

        /* renamed from: else, reason: not valid java name */
        private void m16952else(long j, long j2) {
            long jM16954this = m16954this(j) ^ this.f15188new;
            this.f15188new = jM16954this;
            long jRotateLeft = Long.rotateLeft(jM16954this, 27);
            this.f15188new = jRotateLeft;
            long j3 = this.f15189try;
            long j4 = jRotateLeft + j3;
            this.f15188new = j4;
            this.f15188new = (j4 * 5) + 1390208809;
            long jM16951break = m16951break(j2) ^ j3;
            this.f15189try = jM16951break;
            long jRotateLeft2 = Long.rotateLeft(jM16951break, 31);
            this.f15189try = jRotateLeft2;
            long j5 = jRotateLeft2 + this.f15188new;
            this.f15189try = j5;
            this.f15189try = (j5 * 5) + 944331445;
        }

        /* renamed from: goto, reason: not valid java name */
        private static long m16953goto(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        /* renamed from: this, reason: not valid java name */
        private static long m16954this(long j) {
            return Long.rotateLeft(j * f15185goto, 31) * f15186this;
        }

        @Override // com.google.common.hash.Ccase
        /* renamed from: do */
        public Cclass mo16884do() {
            long j = this.f15188new;
            int i = this.f15187case;
            long j2 = j ^ i;
            this.f15188new = j2;
            long j3 = this.f15189try ^ i;
            this.f15189try = j3;
            long j4 = j2 + j3;
            this.f15188new = j4;
            this.f15189try = j3 + j4;
            this.f15188new = m16953goto(j4);
            long jM16953goto = m16953goto(this.f15189try);
            this.f15189try = jM16953goto;
            long j5 = this.f15188new + jM16953goto;
            this.f15188new = j5;
            this.f15189try = jM16953goto + j5;
            return Cclass.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f15188new).putLong(this.f15189try).array());
        }

        @Override // com.google.common.hash.Ccase
        /* renamed from: new */
        public void mo16885new(ByteBuffer byteBuffer) {
            m16952else(byteBuffer.getLong(), byteBuffer.getLong());
            this.f15187case += 16;
        }

        @Override // com.google.common.hash.Ccase
        /* renamed from: try */
        public void mo16886try(ByteBuffer byteBuffer) {
            long jM17670throw;
            long jM17670throw2;
            long jM17670throw3;
            long jM17670throw4;
            long jM17670throw5;
            long jM17670throw6;
            long jM17670throw7;
            long jM17670throw8;
            long jM17670throw9;
            long jM17670throw10;
            long jM17670throw11;
            long jM17670throw12;
            long jM17670throw13;
            long jM17670throw14;
            this.f15187case += byteBuffer.remaining();
            long j = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    jM17670throw = 0;
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 2:
                    jM17670throw2 = 0;
                    jM17670throw = jM17670throw2 ^ (Csuper.m17670throw(byteBuffer.get(1)) << 8);
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 3:
                    jM17670throw3 = 0;
                    jM17670throw2 = jM17670throw3 ^ (Csuper.m17670throw(byteBuffer.get(2)) << 16);
                    jM17670throw = jM17670throw2 ^ (Csuper.m17670throw(byteBuffer.get(1)) << 8);
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 4:
                    jM17670throw4 = 0;
                    jM17670throw3 = jM17670throw4 ^ (Csuper.m17670throw(byteBuffer.get(3)) << 24);
                    jM17670throw2 = jM17670throw3 ^ (Csuper.m17670throw(byteBuffer.get(2)) << 16);
                    jM17670throw = jM17670throw2 ^ (Csuper.m17670throw(byteBuffer.get(1)) << 8);
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 5:
                    jM17670throw5 = 0;
                    jM17670throw4 = jM17670throw5 ^ (Csuper.m17670throw(byteBuffer.get(4)) << 32);
                    jM17670throw3 = jM17670throw4 ^ (Csuper.m17670throw(byteBuffer.get(3)) << 24);
                    jM17670throw2 = jM17670throw3 ^ (Csuper.m17670throw(byteBuffer.get(2)) << 16);
                    jM17670throw = jM17670throw2 ^ (Csuper.m17670throw(byteBuffer.get(1)) << 8);
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 6:
                    jM17670throw6 = 0;
                    jM17670throw5 = jM17670throw6 ^ (Csuper.m17670throw(byteBuffer.get(5)) << 40);
                    jM17670throw4 = jM17670throw5 ^ (Csuper.m17670throw(byteBuffer.get(4)) << 32);
                    jM17670throw3 = jM17670throw4 ^ (Csuper.m17670throw(byteBuffer.get(3)) << 24);
                    jM17670throw2 = jM17670throw3 ^ (Csuper.m17670throw(byteBuffer.get(2)) << 16);
                    jM17670throw = jM17670throw2 ^ (Csuper.m17670throw(byteBuffer.get(1)) << 8);
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 7:
                    jM17670throw6 = (Csuper.m17670throw(byteBuffer.get(6)) << 48) ^ 0;
                    jM17670throw5 = jM17670throw6 ^ (Csuper.m17670throw(byteBuffer.get(5)) << 40);
                    jM17670throw4 = jM17670throw5 ^ (Csuper.m17670throw(byteBuffer.get(4)) << 32);
                    jM17670throw3 = jM17670throw4 ^ (Csuper.m17670throw(byteBuffer.get(3)) << 24);
                    jM17670throw2 = jM17670throw3 ^ (Csuper.m17670throw(byteBuffer.get(2)) << 16);
                    jM17670throw = jM17670throw2 ^ (Csuper.m17670throw(byteBuffer.get(1)) << 8);
                    jM17670throw7 = Csuper.m17670throw(byteBuffer.get(0)) ^ jM17670throw;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 8:
                    jM17670throw8 = 0;
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 9:
                    jM17670throw9 = 0;
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 10:
                    jM17670throw10 = 0;
                    jM17670throw9 = jM17670throw10 ^ (Csuper.m17670throw(byteBuffer.get(9)) << 8);
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 11:
                    jM17670throw11 = 0;
                    jM17670throw10 = jM17670throw11 ^ (Csuper.m17670throw(byteBuffer.get(10)) << 16);
                    jM17670throw9 = jM17670throw10 ^ (Csuper.m17670throw(byteBuffer.get(9)) << 8);
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 12:
                    jM17670throw12 = 0;
                    jM17670throw11 = jM17670throw12 ^ (Csuper.m17670throw(byteBuffer.get(11)) << 24);
                    jM17670throw10 = jM17670throw11 ^ (Csuper.m17670throw(byteBuffer.get(10)) << 16);
                    jM17670throw9 = jM17670throw10 ^ (Csuper.m17670throw(byteBuffer.get(9)) << 8);
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 13:
                    jM17670throw13 = 0;
                    jM17670throw12 = jM17670throw13 ^ (Csuper.m17670throw(byteBuffer.get(12)) << 32);
                    jM17670throw11 = jM17670throw12 ^ (Csuper.m17670throw(byteBuffer.get(11)) << 24);
                    jM17670throw10 = jM17670throw11 ^ (Csuper.m17670throw(byteBuffer.get(10)) << 16);
                    jM17670throw9 = jM17670throw10 ^ (Csuper.m17670throw(byteBuffer.get(9)) << 8);
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 14:
                    jM17670throw14 = 0;
                    jM17670throw13 = jM17670throw14 ^ (Csuper.m17670throw(byteBuffer.get(13)) << 40);
                    jM17670throw12 = jM17670throw13 ^ (Csuper.m17670throw(byteBuffer.get(12)) << 32);
                    jM17670throw11 = jM17670throw12 ^ (Csuper.m17670throw(byteBuffer.get(11)) << 24);
                    jM17670throw10 = jM17670throw11 ^ (Csuper.m17670throw(byteBuffer.get(10)) << 16);
                    jM17670throw9 = jM17670throw10 ^ (Csuper.m17670throw(byteBuffer.get(9)) << 8);
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                case 15:
                    jM17670throw14 = (Csuper.m17670throw(byteBuffer.get(14)) << 48) ^ 0;
                    jM17670throw13 = jM17670throw14 ^ (Csuper.m17670throw(byteBuffer.get(13)) << 40);
                    jM17670throw12 = jM17670throw13 ^ (Csuper.m17670throw(byteBuffer.get(12)) << 32);
                    jM17670throw11 = jM17670throw12 ^ (Csuper.m17670throw(byteBuffer.get(11)) << 24);
                    jM17670throw10 = jM17670throw11 ^ (Csuper.m17670throw(byteBuffer.get(10)) << 16);
                    jM17670throw9 = jM17670throw10 ^ (Csuper.m17670throw(byteBuffer.get(9)) << 8);
                    jM17670throw8 = jM17670throw9 ^ Csuper.m17670throw(byteBuffer.get(8));
                    jM17670throw7 = byteBuffer.getLong() ^ 0;
                    j = jM17670throw8;
                    this.f15188new ^= m16954this(jM17670throw7);
                    this.f15189try ^= m16951break(j);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    public Cpublic(int i) {
        this.seed = i;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 128;
    }

    public boolean equals(@b51 Object obj) {
        return (obj instanceof Cpublic) && this.seed == ((Cpublic) obj).seed;
    }

    public int hashCode() {
        return Cpublic.class.hashCode() ^ this.seed;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new Cdo(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.seed + ")";
    }
}
