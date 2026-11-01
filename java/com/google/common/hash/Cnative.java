package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.fm0;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@fm0
/* renamed from: com.google.common.hash.native, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnative extends com.google.common.hash.Cfor implements Serializable {
    private final int bytes;
    private final MessageDigest prototype;
    private final boolean supportsClone;
    private final String toString;

    /* renamed from: com.google.common.hash.native$for, reason: invalid class name */
    public static final class Cfor implements Serializable {
        private static final long serialVersionUID = 0;
        private final String algorithmName;
        private final int bytes;
        private final String toString;

        private Object readResolve() {
            return new Cnative(this.algorithmName, this.bytes, this.toString);
        }

        private Cfor(String str, int i, String str2) {
            this.algorithmName = str;
            this.bytes = i;
            this.toString = str2;
        }
    }

    /* renamed from: com.google.common.hash.native$if, reason: invalid class name */
    public static final class Cif extends com.google.common.hash.Cdo {

        /* renamed from: for, reason: not valid java name */
        private final int f15181for;

        /* renamed from: if, reason: not valid java name */
        private final MessageDigest f15182if;

        /* renamed from: new, reason: not valid java name */
        private boolean f15183new;

        /* renamed from: case, reason: not valid java name */
        private void m16950case() {
            af1.u(!this.f15183new, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: for */
        public void mo16930for(ByteBuffer byteBuffer) {
            m16950case();
            this.f15182if.update(byteBuffer);
        }

        @Override // com.google.common.hash.Hasher
        public Cclass hash() {
            m16950case();
            this.f15183new = true;
            return this.f15181for == this.f15182if.getDigestLength() ? Cclass.fromBytesNoCopy(this.f15182if.digest()) : Cclass.fromBytesNoCopy(Arrays.copyOf(this.f15182if.digest(), this.f15181for));
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: if */
        public void mo16931if(byte b) {
            m16950case();
            this.f15182if.update(b);
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: try */
        public void mo16933try(byte[] bArr, int i, int i2) {
            m16950case();
            this.f15182if.update(bArr, i, i2);
        }

        private Cif(MessageDigest messageDigest, int i) {
            this.f15182if = messageDigest;
            this.f15181for = i;
        }
    }

    public Cnative(String str, String str2) {
        MessageDigest messageDigestM16948do = m16948do(str);
        this.prototype = messageDigestM16948do;
        this.bytes = messageDigestM16948do.getDigestLength();
        this.toString = (String) af1.m205continue(str2);
        this.supportsClone = m16949if(messageDigestM16948do);
    }

    /* renamed from: do, reason: not valid java name */
    private static MessageDigest m16948do(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m16949if(MessageDigest messageDigest) throws CloneNotSupportedException {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bytes * 8;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.supportsClone) {
            try {
                return new Cif((MessageDigest) this.prototype.clone(), this.bytes);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new Cif(m16948do(this.prototype.getAlgorithm()), this.bytes);
    }

    public String toString() {
        return this.toString;
    }

    public Object writeReplace() {
        return new Cfor(this.prototype.getAlgorithm(), this.bytes, this.toString);
    }

    public Cnative(String str, int i, String str2) {
        this.toString = (String) af1.m205continue(str2);
        MessageDigest messageDigestM16948do = m16948do(str);
        this.prototype = messageDigestM16948do;
        int digestLength = messageDigestM16948do.getDigestLength();
        af1.m204const(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", i, digestLength);
        this.bytes = i;
        this.supportsClone = m16949if(messageDigestM16948do);
    }
}
