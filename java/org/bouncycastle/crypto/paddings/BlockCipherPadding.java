package org.bouncycastle.crypto.paddings;

import android.support.v4.tn0;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public interface BlockCipherPadding {
    int addPadding(byte[] bArr, int i);

    String getPaddingName();

    void init(SecureRandom secureRandom) throws IllegalArgumentException;

    int padCount(byte[] bArr) throws tn0;
}
