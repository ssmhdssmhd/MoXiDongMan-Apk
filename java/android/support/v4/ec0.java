package android.support.v4;

/* loaded from: classes3.dex */
public class ec0 {

    /* renamed from: if, reason: not valid java name */
    private static char[] f1385if = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: do, reason: not valid java name */
    private final byte[] f1386do;

    public ec0(byte[] bArr) {
        this(bArr, 160);
    }

    public ec0(byte[] bArr, int i) {
        this.f1386do = m1784if(bArr, i);
    }

    public ec0(byte[] bArr, boolean z) {
        if (z) {
            this.f1386do = m1783for(bArr);
        } else {
            this.f1386do = m1782do(bArr);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m1782do(byte[] bArr) {
        return m1784if(bArr, 160);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m1783for(byte[] bArr) {
        cq1 cq1Var = new cq1(160);
        cq1Var.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[cq1Var.getDigestSize()];
        cq1Var.doFinal(bArr2, 0);
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m1784if(byte[] bArr, int i) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("bitLength must be a multiple of 8");
        }
        dq1 dq1Var = new dq1(256);
        dq1Var.update(bArr, 0, bArr.length);
        int i2 = i / 8;
        byte[] bArr2 = new byte[i2];
        dq1Var.doFinal(bArr2, 0, i2);
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ec0) {
            return q3.m6362case(((ec0) obj).f1386do, this.f1386do);
        }
        return false;
    }

    public int hashCode() {
        return q3.n(this.f1386do);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m1785new() {
        return q3.m6371final(this.f1386do);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i != this.f1386do.length; i++) {
            if (i > 0) {
                stringBuffer.append(":");
            }
            stringBuffer.append(f1385if[(this.f1386do[i] >>> 4) & 15]);
            stringBuffer.append(f1385if[this.f1386do[i] & 15]);
        }
        return stringBuffer.toString();
    }
}
