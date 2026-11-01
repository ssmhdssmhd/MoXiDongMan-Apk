package android.support.v4;

/* loaded from: classes3.dex */
public class v0 {
    /* renamed from: do, reason: not valid java name */
    public static void m8706do(byte[] bArr, int i) {
        bArr[0] = (byte) i;
        bArr[1] = (byte) (i >> 8);
        bArr[2] = (byte) (i >> 16);
        bArr[3] = (byte) (i >> 24);
        for (int i2 = 4; i2 <= 15; i2++) {
            bArr[i2] = 0;
        }
    }
}
