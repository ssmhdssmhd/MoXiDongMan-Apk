package org.bouncycastle.crypto.prng.drbg;

import android.support.v4.hn0;
import android.support.v4.on0;
import android.support.v4.qy0;
import android.support.v4.zq1;
import java.util.Hashtable;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.prng.drbg.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final Hashtable f30324do;

    static {
        Hashtable hashtable = new Hashtable();
        f30324do = hashtable;
        hashtable.put(qy0.f5539case, hn0.m3072for(128));
        hashtable.put(qy0.f5542else, hn0.m3072for(192));
        hashtable.put("SHA-256", hn0.m3072for(256));
        hashtable.put(qy0.f5544this, hn0.m3072for(256));
        hashtable.put("SHA-512", hn0.m3072for(256));
        hashtable.put("SHA-512/224", hn0.m3072for(192));
        hashtable.put(zq1.f8632for, hn0.m3072for(256));
    }

    /* renamed from: do, reason: not valid java name */
    public static int m33890do(Digest digest) {
        return ((Integer) f30324do.get(digest.getAlgorithmName())).intValue();
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m33891for(Digest digest, byte[] bArr, int i) {
        int i2 = (i + 7) / 8;
        byte[] bArr2 = new byte[i2];
        int digestSize = i2 / digest.getDigestSize();
        int digestSize2 = digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        int i3 = 1;
        int i4 = 0;
        for (int i5 = 0; i5 <= digestSize; i5++) {
            digest.update((byte) i3);
            digest.update((byte) (i >> 24));
            digest.update((byte) (i >> 16));
            digest.update((byte) (i >> 8));
            digest.update((byte) i);
            digest.update(bArr, 0, bArr.length);
            digest.doFinal(bArr3, 0);
            int i6 = i5 * digestSize2;
            int i7 = i2 - i6;
            if (i7 > digestSize2) {
                i7 = digestSize2;
            }
            System.arraycopy(bArr3, 0, bArr2, i6, i7);
            i3++;
        }
        int i8 = i % 8;
        if (i8 != 0) {
            int i9 = 8 - i8;
            int i10 = 0;
            while (i4 != i2) {
                int i11 = bArr2[i4] & 255;
                bArr2[i4] = (byte) ((i10 << (8 - i9)) | (i11 >>> i9));
                i4++;
                i10 = i11;
            }
        }
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m33892if(Mac mac) {
        String algorithmName = mac.getAlgorithmName();
        return ((Integer) f30324do.get(algorithmName.substring(0, algorithmName.indexOf(on0.f4694final)))).intValue();
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m33893new(byte[] bArr, int i) {
        return bArr != null && bArr.length > i;
    }
}
