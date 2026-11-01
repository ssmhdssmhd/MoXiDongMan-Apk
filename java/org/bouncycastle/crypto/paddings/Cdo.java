package org.bouncycastle.crypto.paddings;

import android.support.v4.tn0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;

/* renamed from: org.bouncycastle.crypto.paddings.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements BlockCipherPadding {

    /* renamed from: do, reason: not valid java name */
    public SecureRandom f30198do;

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i) {
        byte length = (byte) (bArr.length - i);
        while (i < bArr.length - 1) {
            bArr[i] = (byte) this.f30198do.nextInt();
            i++;
        }
        bArr[i] = length;
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "ISO10126-2";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
        if (secureRandom == null) {
            secureRandom = Cfor.m33599case();
        }
        this.f30198do = secureRandom;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws tn0 {
        int i = bArr[bArr.length - 1] & 255;
        if (i <= bArr.length) {
            return i;
        }
        throw new tn0("pad block corrupted");
    }
}
