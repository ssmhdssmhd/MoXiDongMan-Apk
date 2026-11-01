package org.bouncycastle.crypto;

import android.support.v4.tw;
import android.support.v4.xs;

/* loaded from: classes3.dex */
public interface Signer {
    byte[] generateSignature() throws tw, xs;

    void init(boolean z, CipherParameters cipherParameters);

    void reset();

    void update(byte b);

    void update(byte[] bArr, int i, int i2);

    boolean verifySignature(byte[] bArr);
}
