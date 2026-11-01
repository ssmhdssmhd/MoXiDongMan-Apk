package org.bouncycastle.crypto.prng;

import android.support.v4.q3;
import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.prng.drbg.Cnew;
import org.bouncycastle.crypto.prng.drbg.SP80090DRBG;

/* renamed from: org.bouncycastle.crypto.prng.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final SecureRandom f30325do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30326for;

    /* renamed from: if, reason: not valid java name */
    private final EntropySourceProvider f30327if;

    /* renamed from: new, reason: not valid java name */
    private int f30328new;

    /* renamed from: try, reason: not valid java name */
    private int f30329try;

    /* renamed from: org.bouncycastle.crypto.prng.for$do, reason: invalid class name */
    public static class Cdo implements DRBGProvider {

        /* renamed from: do, reason: not valid java name */
        private final BlockCipher f30330do;

        /* renamed from: for, reason: not valid java name */
        private final byte[] f30331for;

        /* renamed from: if, reason: not valid java name */
        private final int f30332if;

        /* renamed from: new, reason: not valid java name */
        private final byte[] f30333new;

        /* renamed from: try, reason: not valid java name */
        private final int f30334try;

        public Cdo(BlockCipher blockCipher, int i, byte[] bArr, byte[] bArr2, int i2) {
            this.f30330do = blockCipher;
            this.f30332if = i;
            this.f30331for = bArr;
            this.f30333new = bArr2;
            this.f30334try = i2;
        }

        @Override // org.bouncycastle.crypto.prng.DRBGProvider
        public SP80090DRBG get(EntropySource entropySource) {
            return new org.bouncycastle.crypto.prng.drbg.Cdo(this.f30330do, this.f30332if, this.f30334try, entropySource, this.f30333new, this.f30331for);
        }
    }

    /* renamed from: org.bouncycastle.crypto.prng.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0408for implements DRBGProvider {

        /* renamed from: do, reason: not valid java name */
        private final Digest f30335do;

        /* renamed from: for, reason: not valid java name */
        private final byte[] f30336for;

        /* renamed from: if, reason: not valid java name */
        private final byte[] f30337if;

        /* renamed from: new, reason: not valid java name */
        private final int f30338new;

        public C0408for(Digest digest, byte[] bArr, byte[] bArr2, int i) {
            this.f30335do = digest;
            this.f30337if = bArr;
            this.f30336for = bArr2;
            this.f30338new = i;
        }

        @Override // org.bouncycastle.crypto.prng.DRBGProvider
        public SP80090DRBG get(EntropySource entropySource) {
            return new Cnew(this.f30335do, this.f30338new, entropySource, this.f30336for, this.f30337if);
        }
    }

    /* renamed from: org.bouncycastle.crypto.prng.for$if, reason: invalid class name */
    public static class Cif implements DRBGProvider {

        /* renamed from: do, reason: not valid java name */
        private final Mac f30339do;

        /* renamed from: for, reason: not valid java name */
        private final byte[] f30340for;

        /* renamed from: if, reason: not valid java name */
        private final byte[] f30341if;

        /* renamed from: new, reason: not valid java name */
        private final int f30342new;

        public Cif(Mac mac, byte[] bArr, byte[] bArr2, int i) {
            this.f30339do = mac;
            this.f30341if = bArr;
            this.f30340for = bArr2;
            this.f30342new = i;
        }

        @Override // org.bouncycastle.crypto.prng.DRBGProvider
        public SP80090DRBG get(EntropySource entropySource) {
            return new org.bouncycastle.crypto.prng.drbg.Cfor(this.f30339do, this.f30342new, entropySource, this.f30340for, this.f30341if);
        }
    }

    public Cfor() {
        this(org.bouncycastle.crypto.Cfor.m33599case(), false);
    }

    public Cfor(SecureRandom secureRandom, boolean z) {
        this.f30328new = 256;
        this.f30329try = 256;
        this.f30325do = secureRandom;
        this.f30327if = new org.bouncycastle.crypto.prng.Cdo(secureRandom, z);
    }

    public Cfor(EntropySourceProvider entropySourceProvider) {
        this.f30328new = 256;
        this.f30329try = 256;
        this.f30325do = null;
        this.f30327if = entropySourceProvider;
    }

    /* renamed from: case, reason: not valid java name */
    public Cfor m33894case(int i) {
        this.f30328new = i;
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public org.bouncycastle.crypto.prng.Cif m33895do(BlockCipher blockCipher, int i, byte[] bArr, boolean z) {
        return new org.bouncycastle.crypto.prng.Cif(this.f30325do, this.f30327if.get(this.f30329try), new Cdo(blockCipher, i, bArr, this.f30326for, this.f30328new), z);
    }

    /* renamed from: for, reason: not valid java name */
    public org.bouncycastle.crypto.prng.Cif m33896for(Digest digest, byte[] bArr, boolean z) {
        return new org.bouncycastle.crypto.prng.Cif(this.f30325do, this.f30327if.get(this.f30329try), new C0408for(digest, bArr, this.f30326for, this.f30328new), z);
    }

    /* renamed from: if, reason: not valid java name */
    public org.bouncycastle.crypto.prng.Cif m33897if(Mac mac, byte[] bArr, boolean z) {
        return new org.bouncycastle.crypto.prng.Cif(this.f30325do, this.f30327if.get(this.f30329try), new Cif(mac, bArr, this.f30326for, this.f30328new), z);
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m33898new(int i) {
        this.f30329try = i;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Cfor m33899try(byte[] bArr) {
        this.f30326for = q3.m6371final(bArr);
        return this;
    }
}
