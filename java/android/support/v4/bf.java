package android.support.v4;

/* loaded from: classes3.dex */
public class bf extends dq1 {

    /* renamed from: this, reason: not valid java name */
    private static final byte[] f420this = new byte[100];

    /* renamed from: goto, reason: not valid java name */
    private final byte[] f421goto;

    public bf(int i, byte[] bArr, byte[] bArr2) {
        super(i);
        if ((bArr == null || bArr.length == 0) && (bArr2 == null || bArr2.length == 0)) {
            this.f421goto = null;
        } else {
            this.f421goto = q3.m6370extends(m526super(this.f6638for / 8), m525final(bArr), m525final(bArr2));
            m524const();
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m524const() {
        int i = this.f6638for / 8;
        byte[] bArr = this.f421goto;
        m8054new(bArr, 0, bArr.length);
        int length = this.f421goto.length % i;
        while (true) {
            i -= length;
            byte[] bArr2 = f420this;
            if (i <= bArr2.length) {
                m8054new(bArr2, 0, i);
                return;
            } else {
                m8054new(bArr2, 0, bArr2.length);
                length = bArr2.length;
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private byte[] m525final(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? m526super(0L) : q3.m6367default(m526super(bArr.length * 8), bArr);
    }

    /* renamed from: super, reason: not valid java name */
    private static byte[] m526super(long j) {
        byte b = 1;
        long j2 = j;
        while (true) {
            j2 >>= 8;
            if (j2 == 0) {
                break;
            }
            b = (byte) (b + 1);
        }
        byte[] bArr = new byte[b + 1];
        bArr[0] = b;
        for (int i = 1; i <= b; i++) {
            bArr[i] = (byte) (j >> ((b - i) * 8));
        }
        return bArr;
    }

    @Override // android.support.v4.dq1, org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int i, int i2) {
        if (this.f421goto == null) {
            return super.doOutput(bArr, i, i2);
        }
        if (!this.f6636case) {
            m8055try(0, 2);
        }
        m8053break(bArr, i, i2 * 8);
        return i2;
    }

    @Override // android.support.v4.tq0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        if (this.f421goto != null) {
            m524const();
        }
    }
}
