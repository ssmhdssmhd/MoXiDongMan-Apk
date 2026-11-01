package org.bouncycastle.crypto;

import android.support.v4.tn0;

/* loaded from: classes3.dex */
public interface Wrapper {
    String getAlgorithmName();

    void init(boolean z, CipherParameters cipherParameters);

    byte[] unwrap(byte[] bArr, int i, int i2) throws tn0;

    byte[] wrap(byte[] bArr, int i, int i2);
}
