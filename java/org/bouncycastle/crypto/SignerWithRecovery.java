package org.bouncycastle.crypto;

import android.support.v4.tn0;

/* loaded from: classes3.dex */
public interface SignerWithRecovery extends Signer {
    byte[] getRecoveredMessage();

    boolean hasFullMessage();

    void updateWithRecoveredMessage(byte[] bArr) throws tn0;
}
