package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public abstract class l91 {

    /* renamed from: do, reason: not valid java name */
    public byte[] f3577do;

    /* renamed from: for, reason: not valid java name */
    public int f3578for;

    /* renamed from: if, reason: not valid java name */
    public byte[] f3579if;

    /* renamed from: do, reason: not valid java name */
    public static byte[] m4619do(char[] cArr) {
        if (cArr == null || cArr.length <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(cArr.length + 1) * 2];
        for (int i = 0; i != cArr.length; i++) {
            int i2 = i * 2;
            bArr[i2] = (byte) (cArr[i] >>> '\b');
            bArr[i2 + 1] = (byte) cArr[i];
        }
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m4620for(char[] cArr) {
        return cArr != null ? Cfor.m36353const(cArr) : new byte[0];
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m4621if(char[] cArr) {
        if (cArr == null) {
            return new byte[0];
        }
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }

    /* renamed from: break, reason: not valid java name */
    public void m4622break(byte[] bArr, byte[] bArr2, int i) {
        this.f3577do = bArr;
        this.f3579if = bArr2;
        this.f3578for = i;
    }

    /* renamed from: case */
    public abstract CipherParameters mo2234case(int i, int i2);

    /* renamed from: else, reason: not valid java name */
    public int m4623else() {
        return this.f3578for;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m4624goto() {
        return this.f3577do;
    }

    /* renamed from: new */
    public abstract CipherParameters mo2235new(int i);

    /* renamed from: this, reason: not valid java name */
    public byte[] m4625this() {
        return this.f3579if;
    }

    /* renamed from: try */
    public abstract CipherParameters mo2236try(int i);
}
