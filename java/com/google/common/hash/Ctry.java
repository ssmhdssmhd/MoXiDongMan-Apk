package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.fm0;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

@fm0
/* renamed from: com.google.common.hash.try, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ctry extends Cfor {

    /* renamed from: com.google.common.hash.try$do, reason: invalid class name */
    public final class Cdo extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Cif f15232do;

        public Cdo(int i) {
            this.f15232do = new Cif(i);
        }

        @Override // com.google.common.hash.Hasher
        public Cclass hash() {
            return Ctry.this.hashBytes(this.f15232do.m16972do(), 0, this.f15232do.m16974if());
        }

        @Override // com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            this.f15232do.write(b);
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            this.f15232do.write(bArr, i, i2);
            return this;
        }

        @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            this.f15232do.m16973for(byteBuffer);
            return this;
        }
    }

    /* renamed from: com.google.common.hash.try$if, reason: invalid class name */
    public static final class Cif extends ByteArrayOutputStream {
        public Cif(int i) {
            super(i);
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m16972do() {
            return ((ByteArrayOutputStream) this).buf;
        }

        /* renamed from: for, reason: not valid java name */
        public void m16973for(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            int i = ((ByteArrayOutputStream) this).count;
            int i2 = i + iRemaining;
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            if (i2 > bArr.length) {
                ((ByteArrayOutputStream) this).buf = Arrays.copyOf(bArr, i + iRemaining);
            }
            byteBuffer.get(((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, iRemaining);
            ((ByteArrayOutputStream) this).count += iRemaining;
        }

        /* renamed from: if, reason: not valid java name */
        public int m16974if() {
            return ((ByteArrayOutputStream) this).count;
        }
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).putBytes(byteBuffer).hash();
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public abstract Cclass hashBytes(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashInt(int i) {
        return hashBytes(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i).array());
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashLong(long j) {
        return hashBytes(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashString(CharSequence charSequence, Charset charset) {
        return hashBytes(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Cclass hashUnencodedChars(CharSequence charSequence) {
        int length = charSequence.length();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < length; i++) {
            byteBufferOrder.putChar(charSequence.charAt(i));
        }
        return hashBytes(byteBufferOrder.array());
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return newHasher(32);
    }

    @Override // com.google.common.hash.Cfor, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        af1.m220new(i >= 0);
        return new Cdo(i);
    }
}
