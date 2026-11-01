package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo {

    /* renamed from: new, reason: not valid java name */
    private static final byte[] f32337new = Cfor.m36358goto("expand 32-byte to 64-byte state!");

    /* renamed from: do, reason: not valid java name */
    private final Digest f32338do;

    /* renamed from: for, reason: not valid java name */
    private final Cfor f32339for;

    /* renamed from: if, reason: not valid java name */
    private final Digest f32340if;

    public Cdo(Digest digest) {
        this(digest, null);
    }

    public Cdo(Digest digest, Digest digest2) {
        this.f32339for = new Cfor();
        this.f32338do = digest;
        this.f32340if = digest2;
    }

    /* renamed from: case, reason: not valid java name */
    public int m35780case(byte[] bArr, int i, byte[] bArr2, int i2) {
        this.f32338do.update(bArr2, 0, i2);
        this.f32338do.doFinal(bArr, i);
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public Digest m35781do() {
        return this.f32340if;
    }

    /* renamed from: for, reason: not valid java name */
    public int m35782for(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        byte[] bArr4 = new byte[64];
        for (int i4 = 0; i4 < 64; i4++) {
            bArr4[i4] = (byte) (bArr2[i2 + i4] ^ bArr3[i3 + i4]);
        }
        return m35783if(bArr, i, bArr4, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public int m35783if(byte[] bArr, int i, byte[] bArr2, int i2) {
        byte[] bArr3 = new byte[64];
        for (int i3 = 0; i3 < 32; i3++) {
            bArr3[i3] = bArr2[i2 + i3];
            bArr3[i3 + 32] = f32337new[i3];
        }
        this.f32339for.m35790do(bArr3, bArr3);
        for (int i4 = 0; i4 < 32; i4++) {
            bArr3[i4] = (byte) (bArr3[i4] ^ bArr2[(i2 + i4) + 32]);
        }
        this.f32339for.m35790do(bArr3, bArr3);
        for (int i5 = 0; i5 < 32; i5++) {
            bArr[i + i5] = bArr3[i5];
        }
        return 0;
    }

    /* renamed from: new, reason: not valid java name */
    public int m35784new(byte[] bArr, int i, byte[] bArr2, int i2) {
        byte[] bArr3 = new byte[64];
        for (int i3 = 0; i3 < 32; i3++) {
            bArr3[i3] = bArr2[i2 + i3];
            bArr3[i3 + 32] = f32337new[i3];
        }
        this.f32339for.m35790do(bArr3, bArr3);
        for (int i4 = 0; i4 < 32; i4++) {
            bArr[i + i4] = bArr3[i4];
        }
        return 0;
    }

    /* renamed from: try, reason: not valid java name */
    public int m35785try(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        byte[] bArr4 = new byte[32];
        for (int i4 = 0; i4 < 32; i4++) {
            bArr4[i4] = (byte) (bArr2[i2 + i4] ^ bArr3[i3 + i4]);
        }
        return m35784new(bArr, i, bArr4, 0);
    }
}
