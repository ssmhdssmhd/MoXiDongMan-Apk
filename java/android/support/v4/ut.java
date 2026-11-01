package android.support.v4;

/* loaded from: classes3.dex */
public class ut extends gr0 {

    /* renamed from: for, reason: not valid java name */
    private static final int f6978for = 16;

    /* renamed from: if, reason: not valid java name */
    public static final int f6979if = 8;

    /* renamed from: new, reason: not valid java name */
    private static byte[] f6980new = {1, 1, 1, 1, 1, 1, 1, 1, t3.f6399protected, t3.f6399protected, t3.f6399protected, t3.f6399protected, 14, 14, 14, 14, -32, -32, -32, -32, -15, -15, -15, -15, -2, -2, -2, -2, -2, -2, -2, -2, 1, -2, 1, -2, 1, -2, 1, -2, t3.f6399protected, -32, t3.f6399protected, -32, 14, -15, 14, -15, 1, -32, 1, -32, 1, -15, 1, -15, t3.f6399protected, -2, t3.f6399protected, -2, 14, -2, 14, -2, 1, t3.f6399protected, 1, t3.f6399protected, 1, 14, 1, 14, -32, -2, -32, -2, -15, -2, -15, -2, -2, 1, -2, 1, -2, 1, -2, 1, -32, t3.f6399protected, -32, t3.f6399protected, -15, 14, -15, 14, -32, 1, -32, 1, -15, 1, -15, 1, -2, t3.f6399protected, -2, t3.f6399protected, -2, 14, -2, 14, t3.f6399protected, 1, t3.f6399protected, 1, 14, 1, 14, 1, -2, -32, -2, -32, -2, -15, -2, -15};

    public ut(byte[] bArr) {
        super(bArr);
        if (m8638if(bArr, 0)) {
            throw new IllegalArgumentException("attempt to create weak DES key");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8637for(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            bArr[i] = (byte) (((((b >> 7) ^ ((((((b >> 1) ^ (b >> 2)) ^ (b >> 3)) ^ (b >> 4)) ^ (b >> 5)) ^ (b >> 6))) ^ 1) & 1) | (b & 254));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        r2 = r2 + 1;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m8638if(byte[] bArr, int i) {
        if (bArr.length - i < 8) {
            throw new IllegalArgumentException("key material too short.");
        }
        int i2 = 0;
        while (i2 < 16) {
            for (int i3 = 0; i3 < 8; i3++) {
                if (bArr[i3 + i] != f6980new[(i2 * 8) + i3]) {
                    break;
                }
            }
            return true;
        }
        return false;
    }
}
