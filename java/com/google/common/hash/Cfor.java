package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.fm0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

@fm0
/* renamed from: com.google.common.hash.for, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cfor implements HashFunction {
    @Override // com.google.common.hash.HashFunction
    public Cclass hashBytes(byte[] bArr) {
        return hashBytes(bArr, 0, bArr.length);
    }

    @Override // com.google.common.hash.HashFunction
    public Cclass hashInt(int i) {
        return newHasher(4).putInt(i).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public Cclass hashLong(long j) {
        return newHasher(8).putLong(j).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public <T> Cclass hashObject(T t, Funnel<? super T> funnel) {
        return newHasher().putObject(t, funnel).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public Cclass hashString(CharSequence charSequence, Charset charset) {
        return newHasher().putString(charSequence, charset).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public Cclass hashUnencodedChars(CharSequence charSequence) {
        return newHasher(charSequence.length() * 2).putUnencodedChars(charSequence).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        af1.m202catch(i >= 0, "expectedInputSize must be >= 0 but was %s", i);
        return newHasher();
    }

    @Override // com.google.common.hash.HashFunction
    public Cclass hashBytes(byte[] bArr, int i, int i2) {
        af1.s(i, i + i2, bArr.length);
        return newHasher(i2).putBytes(bArr, i, i2).hash();
    }

    @Override // com.google.common.hash.HashFunction
    public Cclass hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).putBytes(byteBuffer).hash();
    }
}
