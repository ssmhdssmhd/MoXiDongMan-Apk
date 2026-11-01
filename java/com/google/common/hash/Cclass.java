package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.primitives.Cthis;
import com.google.common.primitives.Cthrow;
import java.io.Serializable;

@o8
/* renamed from: com.google.common.hash.class, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cclass {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f15153do = "0123456789abcdef".toCharArray();

    /* renamed from: com.google.common.hash.class$do, reason: invalid class name */
    public static final class Cdo extends Cclass implements Serializable {
        private static final long serialVersionUID = 0;
        public final byte[] bytes;

        public Cdo(byte[] bArr) {
            this.bytes = (byte[]) af1.m205continue(bArr);
        }

        @Override // com.google.common.hash.Cclass
        public byte[] asBytes() {
            return (byte[]) this.bytes.clone();
        }

        @Override // com.google.common.hash.Cclass
        public int asInt() {
            byte[] bArr = this.bytes;
            af1.A(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.bytes;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override // com.google.common.hash.Cclass
        public long asLong() {
            byte[] bArr = this.bytes;
            af1.A(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return padToLong();
        }

        @Override // com.google.common.hash.Cclass
        public int bits() {
            return this.bytes.length * 8;
        }

        @Override // com.google.common.hash.Cclass
        public boolean equalsSameBits(Cclass cclass) {
            if (this.bytes.length != cclass.getBytesInternal().length) {
                return false;
            }
            int i = 0;
            boolean z = true;
            while (true) {
                byte[] bArr = this.bytes;
                if (i >= bArr.length) {
                    return z;
                }
                z &= bArr[i] == cclass.getBytesInternal()[i];
                i++;
            }
        }

        @Override // com.google.common.hash.Cclass
        public byte[] getBytesInternal() {
            return this.bytes;
        }

        @Override // com.google.common.hash.Cclass
        public long padToLong() {
            long j = this.bytes[0] & 255;
            for (int i = 1; i < Math.min(this.bytes.length, 8); i++) {
                j |= (this.bytes[i] & 255) << (i * 8);
            }
            return j;
        }

        @Override // com.google.common.hash.Cclass
        public void writeBytesToImpl(byte[] bArr, int i, int i2) {
            System.arraycopy(this.bytes, 0, bArr, i, i2);
        }
    }

    /* renamed from: com.google.common.hash.class$for, reason: invalid class name */
    public static final class Cfor extends Cclass implements Serializable {
        private static final long serialVersionUID = 0;
        public final long hash;

        public Cfor(long j) {
            this.hash = j;
        }

        @Override // com.google.common.hash.Cclass
        public byte[] asBytes() {
            return new byte[]{(byte) this.hash, (byte) (r2 >> 8), (byte) (r2 >> 16), (byte) (r2 >> 24), (byte) (r2 >> 32), (byte) (r2 >> 40), (byte) (r2 >> 48), (byte) (r2 >> 56)};
        }

        @Override // com.google.common.hash.Cclass
        public int asInt() {
            return (int) this.hash;
        }

        @Override // com.google.common.hash.Cclass
        public long asLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.Cclass
        public int bits() {
            return 64;
        }

        @Override // com.google.common.hash.Cclass
        public boolean equalsSameBits(Cclass cclass) {
            return this.hash == cclass.asLong();
        }

        @Override // com.google.common.hash.Cclass
        public long padToLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.Cclass
        public void writeBytesToImpl(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.hash >> (i3 * 8));
            }
        }
    }

    /* renamed from: com.google.common.hash.class$if, reason: invalid class name */
    public static final class Cif extends Cclass implements Serializable {
        private static final long serialVersionUID = 0;
        public final int hash;

        public Cif(int i) {
            this.hash = i;
        }

        @Override // com.google.common.hash.Cclass
        public byte[] asBytes() {
            int i = this.hash;
            return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
        }

        @Override // com.google.common.hash.Cclass
        public int asInt() {
            return this.hash;
        }

        @Override // com.google.common.hash.Cclass
        public long asLong() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.Cclass
        public int bits() {
            return 32;
        }

        @Override // com.google.common.hash.Cclass
        public boolean equalsSameBits(Cclass cclass) {
            return this.hash == cclass.asInt();
        }

        @Override // com.google.common.hash.Cclass
        public long padToLong() {
            return Cthrow.m17718import(this.hash);
        }

        @Override // com.google.common.hash.Cclass
        public void writeBytesToImpl(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.hash >> (i3 * 8));
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static int m16894do(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 'a') + 10;
        }
        throw new IllegalArgumentException("Illegal hexadecimal character: " + c);
    }

    public static Cclass fromBytes(byte[] bArr) {
        af1.m235try(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return fromBytesNoCopy((byte[]) bArr.clone());
    }

    public static Cclass fromBytesNoCopy(byte[] bArr) {
        return new Cdo(bArr);
    }

    public static Cclass fromInt(int i) {
        return new Cif(i);
    }

    public static Cclass fromLong(long j) {
        return new Cfor(j);
    }

    public static Cclass fromString(String str) {
        af1.m225return(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        af1.m225return(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((m16894do(str.charAt(i)) << 4) + m16894do(str.charAt(i + 1)));
        }
        return fromBytesNoCopy(bArr);
    }

    public abstract byte[] asBytes();

    public abstract int asInt();

    public abstract long asLong();

    public abstract int bits();

    public final boolean equals(@b51 Object obj) {
        if (!(obj instanceof Cclass)) {
            return false;
        }
        Cclass cclass = (Cclass) obj;
        return bits() == cclass.bits() && equalsSameBits(cclass);
    }

    public abstract boolean equalsSameBits(Cclass cclass);

    public byte[] getBytesInternal() {
        return asBytes();
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bytesInternal = getBytesInternal();
        int i = bytesInternal[0] & 255;
        for (int i2 = 1; i2 < bytesInternal.length; i2++) {
            i |= (bytesInternal[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public abstract long padToLong();

    public final String toString() {
        byte[] bytesInternal = getBytesInternal();
        StringBuilder sb = new StringBuilder(bytesInternal.length * 2);
        for (byte b : bytesInternal) {
            char[] cArr = f15153do;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }

    @lf
    public int writeBytesTo(byte[] bArr, int i, int i2) {
        int iM17698return = Cthis.m17698return(i2, bits() / 8);
        af1.s(i, i + iM17698return, bArr.length);
        writeBytesToImpl(bArr, i, iM17698return);
        return iM17698return;
    }

    public abstract void writeBytesToImpl(byte[] bArr, int i, int i2);
}
