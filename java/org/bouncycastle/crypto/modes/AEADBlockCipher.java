package org.bouncycastle.crypto.modes;

import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public interface AEADBlockCipher {
    int doFinal(byte[] bArr, int i) throws IllegalStateException, tn0;

    String getAlgorithmName();

    byte[] getMac();

    int getOutputSize(int i);

    BlockCipher getUnderlyingCipher();

    int getUpdateOutputSize(int i);

    void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    void processAADByte(byte b);

    void processAADBytes(byte[] bArr, int i, int i2);

    int processByte(byte b, byte[] bArr, int i) throws tw;

    int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw;

    void reset();
}
