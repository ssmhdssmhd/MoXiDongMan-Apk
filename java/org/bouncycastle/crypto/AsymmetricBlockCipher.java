package org.bouncycastle.crypto;

import android.support.v4.tn0;

/* loaded from: classes3.dex */
public interface AsymmetricBlockCipher {
    int getInputBlockSize();

    int getOutputBlockSize();

    void init(boolean z, CipherParameters cipherParameters);

    byte[] processBlock(byte[] bArr, int i, int i2) throws tn0;
}
