package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.fm0;
import java.io.Serializable;
import java.util.zip.Checksum;

@fm0
/* renamed from: com.google.common.hash.goto, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cgoto extends Cfor implements Serializable {
    private static final long serialVersionUID = 0;
    private final int bits;
    private final ImmutableSupplier<? extends Checksum> checksumSupplier;
    private final String toString;

    /* renamed from: com.google.common.hash.goto$if, reason: invalid class name */
    public final class Cif extends com.google.common.hash.Cdo {

        /* renamed from: if, reason: not valid java name */
        private final Checksum f15169if;

        @Override // com.google.common.hash.Hasher
        public Cclass hash() {
            long value = this.f15169if.getValue();
            return Cgoto.this.bits == 32 ? Cclass.fromInt((int) value) : Cclass.fromLong(value);
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: if */
        public void mo16931if(byte b) {
            this.f15169if.update(b);
        }

        @Override // com.google.common.hash.Cdo
        /* renamed from: try */
        public void mo16933try(byte[] bArr, int i, int i2) {
            this.f15169if.update(bArr, i, i2);
        }

        private Cif(Checksum checksum) {
            this.f15169if = (Checksum) af1.m205continue(checksum);
        }
    }

    public Cgoto(ImmutableSupplier<? extends Checksum> immutableSupplier, int i, String str) {
        this.checksumSupplier = (ImmutableSupplier) af1.m205continue(immutableSupplier);
        af1.m202catch(i == 32 || i == 64, "bits (%s) must be either 32 or 64", i);
        this.bits = i;
        this.toString = (String) af1.m205continue(str);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bits;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new Cif(this.checksumSupplier.get());
    }

    public String toString() {
        return this.toString;
    }
}
