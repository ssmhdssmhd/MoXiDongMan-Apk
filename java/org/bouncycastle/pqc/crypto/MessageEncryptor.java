package org.bouncycastle.pqc.crypto;

import android.support.v4.tn0;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public interface MessageEncryptor {
    void init(boolean z, CipherParameters cipherParameters);

    byte[] messageDecrypt(byte[] bArr) throws tn0;

    byte[] messageEncrypt(byte[] bArr);
}
