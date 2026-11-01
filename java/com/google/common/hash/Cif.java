package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.fm0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@fm0
/* renamed from: com.google.common.hash.if, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cif extends Cfor {

    /* renamed from: if, reason: not valid java name */
    private static final long f15170if = 0;

    /* renamed from: do, reason: not valid java name */
    public final HashFunction[] f15171do;

    /* renamed from: com.google.common.hash.if$do, reason: invalid class name */
    public class Cdo implements Hasher {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Hasher[] f15172do;

        public Cdo(Hasher[] hasherArr) {
            this.f15172do = hasherArr;
        }

        @Override // com.google.common.hash.Hasher
        public Cclass hash() {
            return Cif.this.mo16927if(this.f15172do);
        }

        @Override // com.google.common.hash.Hasher
        public <T> Hasher putObject(T t, Funnel<? super T> funnel) {
            for (Hasher hasher : this.f15172do) {
                hasher.putObject(t, funnel);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putBoolean(boolean z) {
            for (Hasher hasher : this.f15172do) {
                hasher.putBoolean(z);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            for (Hasher hasher : this.f15172do) {
                hasher.putByte(b);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putChar(char c) {
            for (Hasher hasher : this.f15172do) {
                hasher.putChar(c);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putDouble(double d) {
            for (Hasher hasher : this.f15172do) {
                hasher.putDouble(d);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putFloat(float f) {
            for (Hasher hasher : this.f15172do) {
                hasher.putFloat(f);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putInt(int i) {
            for (Hasher hasher : this.f15172do) {
                hasher.putInt(i);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putLong(long j) {
            for (Hasher hasher : this.f15172do) {
                hasher.putLong(j);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putShort(short s) {
            for (Hasher hasher : this.f15172do) {
                hasher.putShort(s);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putString(CharSequence charSequence, Charset charset) {
            for (Hasher hasher : this.f15172do) {
                hasher.putString(charSequence, charset);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putUnencodedChars(CharSequence charSequence) {
            for (Hasher hasher : this.f15172do) {
                hasher.putUnencodedChars(charSequence);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr) {
            for (Hasher hasher : this.f15172do) {
                hasher.putBytes(bArr);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            for (Hasher hasher : this.f15172do) {
                hasher.putBytes(bArr, i, i2);
            }
            return this;
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            int iPosition = byteBuffer.position();
            for (Hasher hasher : this.f15172do) {
                byteBuffer.position(iPosition);
                hasher.putBytes(byteBuffer);
            }
            return this;
        }
    }

    public Cif(HashFunction... hashFunctionArr) {
        for (HashFunction hashFunction : hashFunctionArr) {
            af1.m205continue(hashFunction);
        }
        this.f15171do = hashFunctionArr;
    }

    /* renamed from: do, reason: not valid java name */
    private Hasher m16944do(Hasher[] hasherArr) {
        return new Cdo(hasherArr);
    }

    /* renamed from: if */
    public abstract Cclass mo16927if(Hasher[] hasherArr);

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        int length = this.f15171do.length;
        Hasher[] hasherArr = new Hasher[length];
        for (int i = 0; i < length; i++) {
            hasherArr[i] = this.f15171do[i].newHasher();
        }
        return m16944do(hasherArr);
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        af1.m220new(i >= 0);
        int length = this.f15171do.length;
        Hasher[] hasherArr = new Hasher[length];
        for (int i2 = 0; i2 < length; i2++) {
            hasherArr[i2] = this.f15171do[i2].newHasher(i);
        }
        return m16944do(hasherArr);
    }
}
