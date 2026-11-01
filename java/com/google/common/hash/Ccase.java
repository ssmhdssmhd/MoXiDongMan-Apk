package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.lf;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@lf
/* renamed from: com.google.common.hash.case, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ccase extends Cnew {

    /* renamed from: do, reason: not valid java name */
    private final ByteBuffer f15145do;

    /* renamed from: for, reason: not valid java name */
    private final int f15146for;

    /* renamed from: if, reason: not valid java name */
    private final int f15147if;

    public Ccase(int i) {
        this(i, i);
    }

    /* renamed from: case, reason: not valid java name */
    private Hasher m16881case(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f15145do.remaining()) {
            this.f15145do.put(byteBuffer);
            m16882for();
            return this;
        }
        int iPosition = this.f15147if - this.f15145do.position();
        for (int i = 0; i < iPosition; i++) {
            this.f15145do.put(byteBuffer.get());
        }
        m16883if();
        while (byteBuffer.remaining() >= this.f15146for) {
            mo16885new(byteBuffer);
        }
        this.f15145do.put(byteBuffer);
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    private void m16882for() {
        if (this.f15145do.remaining() < 8) {
            m16883if();
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m16883if() {
        this.f15145do.flip();
        while (this.f15145do.remaining() >= this.f15146for) {
            mo16885new(this.f15145do);
        }
        this.f15145do.compact();
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Cclass mo16884do();

    @Override // com.google.common.hash.Hasher
    public final Cclass hash() {
        m16883if();
        this.f15145do.flip();
        if (this.f15145do.remaining() > 0) {
            mo16886try(this.f15145do);
            ByteBuffer byteBuffer = this.f15145do;
            byteBuffer.position(byteBuffer.limit());
        }
        return mo16884do();
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void mo16885new(ByteBuffer byteBuffer);

    /* renamed from: try, reason: not valid java name */
    public void mo16886try(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.limit());
        byteBuffer.limit(this.f15146for + 7);
        while (true) {
            int iPosition = byteBuffer.position();
            int i = this.f15146for;
            if (iPosition >= i) {
                byteBuffer.limit(i);
                byteBuffer.flip();
                mo16885new(byteBuffer);
                return;
            }
            byteBuffer.putLong(0L);
        }
    }

    public Ccase(int i, int i2) {
        af1.m220new(i2 % i == 0);
        this.f15145do = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f15147if = i2;
        this.f15146for = i;
    }

    @Override // com.google.common.hash.PrimitiveSink
    public final Hasher putByte(byte b) {
        this.f15145do.put(b);
        m16882for();
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public final Hasher putChar(char c) {
        this.f15145do.putChar(c);
        m16882for();
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public final Hasher putInt(int i) {
        this.f15145do.putInt(i);
        m16882for();
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public final Hasher putLong(long j) {
        this.f15145do.putLong(j);
        m16882for();
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public final Hasher putShort(short s) {
        this.f15145do.putShort(s);
        m16882for();
        return this;
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public final Hasher putBytes(byte[] bArr, int i, int i2) {
        return m16881case(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override // com.google.common.hash.Cnew, com.google.common.hash.PrimitiveSink
    public final Hasher putBytes(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return m16881case(byteBuffer);
        } finally {
            byteBuffer.order(byteOrderOrder);
        }
    }
}
