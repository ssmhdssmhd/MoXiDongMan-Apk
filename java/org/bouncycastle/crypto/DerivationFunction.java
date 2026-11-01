package org.bouncycastle.crypto;

import android.support.v4.tw;

/* loaded from: classes3.dex */
public interface DerivationFunction {
    int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException;

    void init(DerivationParameters derivationParameters);
}
