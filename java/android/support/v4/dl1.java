package android.support.v4;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class dl1 {
    /* renamed from: do, reason: not valid java name */
    public static int m1406do(SecureRandom secureRandom, int i) {
        int iNextInt;
        int i2;
        if (((-i) & i) == i) {
            return (int) ((i * (secureRandom.nextInt() >>> 1)) >> 31);
        }
        do {
            iNextInt = secureRandom.nextInt() >>> 1;
            i2 = iNextInt % i;
        } while ((iNextInt - i2) + (i - 1) < 0);
        return i2;
    }
}
