package android.support.v4;

/* loaded from: classes3.dex */
public class qj2 {

    /* renamed from: if, reason: not valid java name */
    private static final int[] f5442if = new int[256];

    /* renamed from: do, reason: not valid java name */
    private final int[] f5443do = new int[3];

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 & 1) == 1 ? (i2 >>> 1) ^ (-306674912) : i2 >>> 1;
            }
            f5442if[i] = i2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m6606do(int i, byte b) {
        return f5442if[(i ^ b) & 255] ^ (i >>> 8);
    }

    /* renamed from: for, reason: not valid java name */
    public void m6607for(char[] cArr) {
        int[] iArr = this.f5443do;
        iArr[0] = 305419896;
        iArr[1] = 591751049;
        iArr[2] = 878082192;
        for (char c : cArr) {
            m6609new((byte) (c & 255));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public byte m6608if() {
        int i = this.f5443do[2] | 2;
        return (byte) ((i * (i ^ 1)) >>> 8);
    }

    /* renamed from: new, reason: not valid java name */
    public void m6609new(byte b) {
        int[] iArr = this.f5443do;
        iArr[0] = m6606do(iArr[0], b);
        int[] iArr2 = this.f5443do;
        iArr2[1] = iArr2[1] + (iArr2[0] & 255);
        iArr2[1] = (iArr2[1] * 134775813) + 1;
        iArr2[2] = m6606do(iArr2[2], (byte) (iArr2[1] >> 24));
    }
}
