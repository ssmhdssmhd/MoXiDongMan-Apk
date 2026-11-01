package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.fm0;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

@fm0
/* renamed from: com.google.common.hash.import, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cimport extends Cfor {

    /* renamed from: do, reason: not valid java name */
    private final Mac f15174do;

    /* renamed from: for, reason: not valid java name */
    private final String f15175for;

    /* renamed from: if, reason: not valid java name */
    private final Key f15176if;

    /* renamed from: new, reason: not valid java name */
    private final int f15177new;

    /* renamed from: try, reason: not valid java name */
    private final boolean f15178try;

    /* renamed from: com.google.common.hash.import$if, reason: invalid class name */
    public static final class Cif extends com.google.common.hash.Cdo {

        /* renamed from: for, reason: not valid java name */
        private boolean f15179for;

        /* renamed from: if, reason: not valid java name */
        private final Mac f15180if;

        /* renamed from: case, reason: not valid java name */
        private void m16947case() {
            af1.u(!this.f15179for, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: for */
        public void mo16930for(ByteBuffer byteBuffer) {
            m16947case();
            af1.m205continue(byteBuffer);
            this.f15180if.update(byteBuffer);
        }

        @Override // com.google.common.hash.Hasher
        public Cclass hash() {
            m16947case();
            this.f15179for = true;
            return Cclass.fromBytesNoCopy(this.f15180if.doFinal());
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: if */
        public void mo16931if(byte b) throws IllegalStateException {
            m16947case();
            this.f15180if.update(b);
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: new */
        public void mo16932new(byte[] bArr) throws IllegalStateException {
            m16947case();
            this.f15180if.update(bArr);
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: try */
        public void mo16933try(byte[] bArr, int i, int i2) throws IllegalStateException {
            m16947case();
            this.f15180if.update(bArr, i, i2);
        }

        private Cif(Mac mac) {
            this.f15180if = mac;
        }
    }

    public Cimport(String str, Key key, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac macM16945do = m16945do(str, key);
        this.f15174do = macM16945do;
        this.f15176if = (Key) af1.m205continue(key);
        this.f15175for = (String) af1.m205continue(str2);
        this.f15177new = macM16945do.getMacLength() * 8;
        this.f15178try = m16946if(macM16945do);
    }

    /* renamed from: do, reason: not valid java name */
    private static Mac m16945do(String str, Key key) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(key);
            return mac;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m16946if(Mac mac) throws CloneNotSupportedException {
        try {
            mac.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.f15177new;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.f15178try) {
            try {
                return new Cif((Mac) this.f15174do.clone());
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new Cif(m16945do(this.f15174do.getAlgorithm(), this.f15176if));
    }

    public String toString() {
        return this.f15175for;
    }
}
