package android.support.v4;

/* loaded from: classes3.dex */
public class yt extends ut {

    /* renamed from: try, reason: not valid java name */
    public static final int f8325try = 24;

    public yt(byte[] bArr) {
        super(bArr);
        if (m9937else(bArr, 0, bArr.length)) {
            throw new IllegalArgumentException("attempt to create weak DESede key");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m9936case(byte[] bArr, int i) {
        return bArr.length == 16 ? m9939new(bArr, i) : m9940try(bArr, i);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m9937else(byte[] bArr, int i, int i2) {
        while (i < i2) {
            if (ut.m8638if(bArr, i)) {
                return true;
            }
            i += 8;
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m9938if(byte[] bArr, int i) {
        return m9937else(bArr, i, bArr.length - i);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m9939new(byte[] bArr, int i) {
        boolean z = false;
        for (int i2 = i; i2 != i + 8; i2++) {
            if (bArr[i2] != bArr[i2 + 8]) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m9940try(byte[] bArr, int i) {
        int i2 = i;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            boolean z4 = true;
            if (i2 == i + 8) {
                break;
            }
            int i3 = i2 + 8;
            z |= bArr[i2] != bArr[i3];
            int i4 = i2 + 16;
            z2 |= bArr[i2] != bArr[i4];
            if (bArr[i3] == bArr[i4]) {
                z4 = false;
            }
            z3 |= z4;
            i2++;
        }
        return z && z2 && z3;
    }
}
