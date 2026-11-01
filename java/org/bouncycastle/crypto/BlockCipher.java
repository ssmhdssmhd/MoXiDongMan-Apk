package org.bouncycastle.crypto;

import android.support.v4.tw;

/* loaded from: classes3.dex */
public interface BlockCipher {
    String getAlgorithmName();

    int getBlockSize();

    void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw;

    void reset();
}
