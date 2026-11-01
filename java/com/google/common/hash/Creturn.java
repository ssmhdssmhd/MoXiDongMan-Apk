package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bl;
import android.support.v4.fm0;
import android.support.v4.lf;
import com.google.common.primitives.Csuper;
import com.google.common.primitives.Cthis;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

@fm0
/* renamed from: com.google.common.hash.return, reason: invalid class name */
/* loaded from: classes2.dex */
final class Creturn extends Cfor implements Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final int f15190do = 4;

    /* renamed from: for, reason: not valid java name */
    private static final int f15191for = 461845907;

    /* renamed from: if, reason: not valid java name */
    private static final int f15192if = -862048943;
    private static final long serialVersionUID = 0;
    private final int seed;
    public static final HashFunction MURMUR3_32 = new Creturn(0);
    public static final HashFunction GOOD_FAST_HASH_32 = new Creturn(Cconst.f15154do);

    @lf
    /* renamed from: com.google.common.hash.return$do, reason: invalid class name */
    public static final class Cdo extends Cnew {

        /* renamed from: do, reason: not valid java name */
        private int f15193do;

        /* renamed from: for, reason: not valid java name */
        private int f15194for;

        /* renamed from: if, reason: not valid java name */
        private long f15195if;

        /* renamed from: new, reason: not valid java name */
        private int f15196new = 0;

        /* renamed from: try, reason: not valid java name */
        private boolean f15197try = false;

        public Cdo(int i) {
            this.f15193do = i;
        }

        /* renamed from: do, reason: not valid java name */
        private void m16962do(int i, long j) {
            long j2 = this.f15195if;
            int i2 = this.f15194for;
            long j3 = ((j & 4294967295L) << i2) | j2;
            this.f15195if = j3;
            int i3 = i2 + (i * 8);
            this.f15194for = i3;
            this.f15196new += i;
            if (i3 >= 32) {
                this.f15193do = Creturn.m16955case(this.f15193do, Creturn.m16957else((int) j3));
                this.f15195if >>>= 32;
                this.f15194for -= 32;
            }
        }

        @Override // com.google.common.hash.Hasher
        public Cclass hash() {
            af1.t(!this.f15197try);
            this.f15197try = true;
            int iM16957else = this.f15193do ^ Creturn.m16957else((int) this.f15195if);
            this.f15193do = iM16957else;
            return Creturn.m16960new(iM16957else, this.f15196new);
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            m16962do(1, b & 255);
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putChar(char c) {
            m16962do(2, c);
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putInt(int i) {
            m16962do(4, i);
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putLong(long j) {
            m16962do(4, (int) j);
            m16962do(4, j >>> 32);
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putString(CharSequence charSequence, Charset charset) {
            if (!bl.f470for.equals(charset)) {
                return super.putString(charSequence, charset);
            }
            int length = charSequence.length();
            int i = 0;
            while (true) {
                int i2 = i + 4;
                if (i2 > length) {
                    break;
                }
                char cCharAt = charSequence.charAt(i);
                char cCharAt2 = charSequence.charAt(i + 1);
                char cCharAt3 = charSequence.charAt(i + 2);
                char cCharAt4 = charSequence.charAt(i + 3);
                if (cCharAt >= 128 || cCharAt2 >= 128 || cCharAt3 >= 128 || cCharAt4 >= 128) {
                    break;
                }
                m16962do(4, (cCharAt2 << '\b') | cCharAt | (cCharAt3 << 16) | (cCharAt4 << 24));
                i = i2;
            }
            while (i < length) {
                char cCharAt5 = charSequence.charAt(i);
                if (cCharAt5 < 128) {
                    m16962do(1, cCharAt5);
                } else if (cCharAt5 < 2048) {
                    m16962do(2, Creturn.m16959if(cCharAt5));
                } else if (cCharAt5 < 55296 || cCharAt5 > 57343) {
                    m16962do(3, Creturn.m16956do(cCharAt5));
                } else {
                    int iCodePointAt = Character.codePointAt(charSequence, i);
                    if (iCodePointAt == cCharAt5) {
                        putBytes(charSequence.subSequence(i, length).toString().getBytes(charset));
                        return this;
                    }
                    i++;
                    m16962do(4, Creturn.m16958for(iCodePointAt));
                }
                i++;
            }
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            af1.s(i, i + i2, bArr.length);
            int i3 = 0;
            while (true) {
                int i4 = i3 + 4;
                if (i4 > i2) {
                    break;
                }
                m16962do(4, Creturn.m16961try(bArr, i3 + i));
                i3 = i4;
            }
            while (i3 < i2) {
                putByte(bArr[i + i3]);
                i3++;
            }
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            ByteOrder byteOrderOrder = byteBuffer.order();
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            while (byteBuffer.remaining() >= 4) {
                putInt(byteBuffer.getInt());
            }
            while (byteBuffer.hasRemaining()) {
                putByte(byteBuffer.get());
            }
            byteBuffer.order(byteOrderOrder);
            return this;
        }
    }

    public Creturn(int i) {
        this.seed = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static int m16955case(int i, int i2) {
        return (Integer.rotateLeft(i ^ i2, 13) * 5) - 430675100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static long m16956do(char c) {
        return (((c & '?') | 128) << 16) | (((c >>> '\f') | 480) & 255) | ((((c >>> 6) & 63) | 128) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static int m16957else(int i) {
        return Integer.rotateLeft(i * f15192if, 15) * f15191for;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static long m16958for(int i) {
        return (((i >>> 18) | 240) & 255) | ((((i >>> 12) & 63) | 128) << 8) | ((((i >>> 6) & 63) | 128) << 16) | (((i & 63) | 128) << 24);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static long m16959if(char c) {
        return (((c & '?') | 128) << 8) | (((c >>> 6) | 960) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static Cclass m16960new(int i, int i2) {
        int i3 = i ^ i2;
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return Cclass.fromInt(i5 ^ (i5 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static int m16961try(byte[] bArr, int i) {
        return Cthis.m17679catch(bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 32;
    }

    public boolean equals(@b51 Object obj) {
        return (obj instanceof Creturn) && this.seed == ((Creturn) obj).seed;
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashBytes(byte[] bArr, int i, int i2) {
        af1.s(i, i + i2, bArr.length);
        int iM16955case = this.seed;
        int iM17670throw = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3 + 4;
            if (i4 > i2) {
                break;
            }
            iM16955case = m16955case(iM16955case, m16957else(m16961try(bArr, i3 + i)));
            i3 = i4;
        }
        int i5 = i3;
        int i6 = 0;
        while (i5 < i2) {
            iM17670throw ^= Csuper.m17670throw(bArr[i + i5]) << i6;
            i5++;
            i6 += 8;
        }
        return m16960new(m16957else(iM17670throw) ^ iM16955case, i2);
    }

    public int hashCode() {
        return Creturn.class.hashCode() ^ this.seed;
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashInt(int i) {
        return m16960new(m16955case(this.seed, m16957else(i)), 4);
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashLong(long j) {
        int i = (int) (j >>> 32);
        return m16960new(m16955case(m16955case(this.seed, m16957else((int) j)), m16957else(i)), 8);
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashString(CharSequence charSequence, Charset charset) {
        if (!bl.f470for.equals(charset)) {
            return hashBytes(charSequence.toString().getBytes(charset));
        }
        int length = charSequence.length();
        int iM16955case = this.seed;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 4;
            if (i4 > length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            char cCharAt2 = charSequence.charAt(i2 + 1);
            char cCharAt3 = charSequence.charAt(i2 + 2);
            char cCharAt4 = charSequence.charAt(i2 + 3);
            if (cCharAt >= 128 || cCharAt2 >= 128 || cCharAt3 >= 128 || cCharAt4 >= 128) {
                break;
            }
            iM16955case = m16955case(iM16955case, m16957else((cCharAt2 << '\b') | cCharAt | (cCharAt3 << 16) | (cCharAt4 << 24)));
            i3 += 4;
            i2 = i4;
        }
        long jM16956do = 0;
        while (i2 < length) {
            char cCharAt5 = charSequence.charAt(i2);
            if (cCharAt5 < 128) {
                jM16956do |= cCharAt5 << i;
                i += 8;
                i3++;
            } else if (cCharAt5 < 2048) {
                jM16956do |= m16959if(cCharAt5) << i;
                i += 16;
                i3 += 2;
            } else if (cCharAt5 < 55296 || cCharAt5 > 57343) {
                jM16956do |= m16956do(cCharAt5) << i;
                i += 24;
                i3 += 3;
            } else {
                int iCodePointAt = Character.codePointAt(charSequence, i2);
                if (iCodePointAt == cCharAt5) {
                    return hashBytes(charSequence.toString().getBytes(charset));
                }
                i2++;
                jM16956do |= m16958for(iCodePointAt) << i;
                i3 += 4;
            }
            if (i >= 32) {
                iM16955case = m16955case(iM16955case, m16957else((int) jM16956do));
                jM16956do >>>= 32;
                i -= 32;
            }
            i2++;
        }
        return m16960new(m16957else((int) jM16956do) ^ iM16955case, i3);
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashUnencodedChars(CharSequence charSequence) {
        int iM16957else = this.seed;
        for (int i = 1; i < charSequence.length(); i += 2) {
            iM16957else = m16955case(iM16957else, m16957else(charSequence.charAt(i - 1) | (charSequence.charAt(i) << 16)));
        }
        if ((charSequence.length() & 1) == 1) {
            iM16957else ^= m16957else(charSequence.charAt(charSequence.length() - 1));
        }
        return m16960new(iM16957else, charSequence.length() * 2);
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new Cdo(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_32(" + this.seed + ")";
    }
}
