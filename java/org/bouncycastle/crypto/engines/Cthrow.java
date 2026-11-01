package org.bouncycastle.crypto.engines;

import android.support.v4.f91;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.engines.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow implements BlockCipher {

    /* renamed from: for, reason: not valid java name */
    public static final int f29772for = 1;

    /* renamed from: do, reason: not valid java name */
    private boolean f29773do;

    /* renamed from: if, reason: not valid java name */
    private final int f29774if;

    public Cthrow() {
        this(1);
    }

    public Cthrow(int i) {
        this.f29774if = i;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Null";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f29774if;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.f29773do = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        if (!this.f29773do) {
            throw new IllegalStateException("Null engine not initialised");
        }
        int i3 = this.f29774if;
        if (i + i3 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        int i4 = 0;
        while (true) {
            int i5 = this.f29774if;
            if (i4 >= i5) {
                return i5;
            }
            bArr2[i2 + i4] = bArr[i + i4];
            i4++;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
