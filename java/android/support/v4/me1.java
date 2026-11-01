package android.support.v4;

/* loaded from: classes3.dex */
public class me1 extends rl {

    /* renamed from: for, reason: not valid java name */
    private static final byte f3893for = -4;

    /* renamed from: new, reason: not valid java name */
    private static final byte f3894new = 15;

    /* renamed from: for, reason: not valid java name */
    public static void m4911for(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        m4912new(bArr[3], (byte) 15);
        m4912new(bArr[7], (byte) 15);
        m4912new(bArr[11], (byte) 15);
        m4912new(bArr[15], (byte) 15);
        m4912new(bArr[4], f3893for);
        m4912new(bArr[8], f3893for);
        m4912new(bArr[12], f3893for);
    }

    /* renamed from: new, reason: not valid java name */
    private static void m4912new(byte b, byte b2) {
        if ((b & (b2 ^ (-1))) != 0) {
            throw new IllegalArgumentException("Invalid format for r portion of Poly1305 key.");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m4913try(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        bArr[3] = (byte) (bArr[3] & 15);
        bArr[7] = (byte) (bArr[7] & 15);
        bArr[11] = (byte) (bArr[11] & 15);
        bArr[15] = (byte) (bArr[15] & 15);
        bArr[4] = (byte) (bArr[4] & f3893for);
        bArr[8] = (byte) (bArr[8] & f3893for);
        bArr[12] = (byte) (bArr[12] & f3893for);
    }

    @Override // android.support.v4.rl
    /* renamed from: do, reason: not valid java name */
    public byte[] mo4914do() {
        byte[] bArrMo4914do = super.mo4914do();
        m4913try(bArrMo4914do);
        return bArrMo4914do;
    }

    @Override // android.support.v4.rl
    /* renamed from: if, reason: not valid java name */
    public void mo4915if(dr0 dr0Var) {
        super.mo4915if(new dr0(dr0Var.m1497do(), 256));
    }
}
