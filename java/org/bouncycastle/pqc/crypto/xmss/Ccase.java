package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase {

    /* renamed from: do, reason: not valid java name */
    private final Digest f32393do;

    /* renamed from: if, reason: not valid java name */
    private final int f32394if;

    public Ccase(Digest digest, int i) {
        Objects.requireNonNull(digest, "digest == null");
        this.f32393do = digest;
        this.f32394if = i;
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m35836try(int i, byte[] bArr, byte[] bArr2) {
        byte[] bArrM36078public = Cvolatile.m36078public(i, this.f32394if);
        this.f32393do.update(bArrM36078public, 0, bArrM36078public.length);
        this.f32393do.update(bArr, 0, bArr.length);
        this.f32393do.update(bArr2, 0, bArr2.length);
        int i2 = this.f32394if;
        byte[] bArr3 = new byte[i2];
        Digest digest = this.f32393do;
        if (digest instanceof Xof) {
            ((Xof) digest).doFinal(bArr3, 0, i2);
        } else {
            digest.doFinal(bArr3, 0);
        }
        return bArr3;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m35837do(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.f32394if;
        if (length != i) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i) {
            return m35836try(0, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m35838for(byte[] bArr, byte[] bArr2) {
        if (bArr.length == this.f32394if * 3) {
            return m35836try(2, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong key length");
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m35839if(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.f32394if;
        if (length != i) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i * 2) {
            return m35836try(1, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m35840new(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.f32394if) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == 32) {
            return m35836try(3, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong address length");
    }
}
