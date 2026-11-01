package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.lf;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@lf
/* renamed from: com.google.common.hash.do, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cdo extends Cnew {

    /* renamed from: do, reason: not valid java name */
    private final ByteBuffer f15162do = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    /* renamed from: do, reason: not valid java name */
    private Hasher m16929do(int i) {
        try {
            mo16933try(this.f15162do.array(), 0, i);
            return this;
        } finally {
            this.f15162do.clear();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void mo16930for(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            mo16933try(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.limit());
        } else {
            for (int iRemaining = byteBuffer.remaining(); iRemaining > 0; iRemaining--) {
                mo16931if(byteBuffer.get());
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void mo16931if(byte b);

    /* renamed from: new, reason: not valid java name */
    public void mo16932new(byte[] bArr) {
        mo16933try(bArr, 0, bArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    public void mo16933try(byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            mo16931if(bArr[i3]);
        }
    }

    @Override // com.google.common.hash.PrimitiveSink
    public Hasher putByte(byte b) {
        mo16931if(b);
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putChar(char c) {
        this.f15162do.putChar(c);
        return m16929do(2);
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putInt(int i) {
        this.f15162do.putInt(i);
        return m16929do(4);
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putLong(long j) {
        this.f15162do.putLong(j);
        return m16929do(8);
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putShort(short s) {
        this.f15162do.putShort(s);
        return m16929do(2);
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr) {
        af1.m205continue(bArr);
        mo16932new(bArr);
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(byte[] bArr, int i, int i2) {
        af1.s(i, i + i2, bArr.length);
        mo16933try(bArr, i, i2);
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public Hasher putBytes(ByteBuffer byteBuffer) {
        mo16930for(byteBuffer);
        return this;
    }
}
