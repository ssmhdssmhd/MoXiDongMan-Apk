package org.bouncycastle.crypto;

import android.support.v4.f91;
import android.support.v4.tw;

/* renamed from: org.bouncycastle.crypto.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry implements BlockCipher, StreamCipher {

    /* renamed from: do, reason: not valid java name */
    private final BlockCipher f30860do;

    public Ctry(BlockCipher blockCipher) {
        this.f30860do = blockCipher;
    }

    /* renamed from: do */
    public abstract byte mo33707do(byte b);

    /* renamed from: if, reason: not valid java name */
    public BlockCipher m34452if() {
        return this.f30860do;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
        int i4 = i + i2;
        if (i4 > bArr.length) {
            throw new tw("input buffer too small");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        while (i < i4) {
            bArr2[i3] = mo33707do(bArr[i]);
            i3++;
            i++;
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public final byte returnByte(byte b) {
        return mo33707do(b);
    }
}
