package net.lingala.zip4j.crypto.PBKDF2;

import android.support.v4.mj2;
import android.support.v4.s91;
import java.util.Objects;

/* renamed from: net.lingala.zip4j.crypto.PBKDF2.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private s91 f28080do;

    /* renamed from: if, reason: not valid java name */
    private PRF f28081if;

    public Cfor(s91 s91Var) {
        this(s91Var, null);
    }

    /* renamed from: const, reason: not valid java name */
    private void m31419const(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m31420for(byte[] bArr, int i, PRF prf, byte[] bArr2, int i2, int i3) {
        int hLen = prf.getHLen();
        byte[] bArr3 = new byte[hLen];
        byte[] bArrDoFinal = new byte[bArr2.length + 4];
        System.arraycopy(bArr2, 0, bArrDoFinal, 0, bArr2.length);
        m31428do(bArrDoFinal, bArr2.length, i3);
        for (int i4 = 0; i4 < i2; i4++) {
            bArrDoFinal = prf.doFinal(bArrDoFinal);
            m31419const(bArr3, bArrDoFinal);
        }
        System.arraycopy(bArr3, 0, bArr, i, hLen);
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m31421if(PRF prf, byte[] bArr, int i, int i2) {
        byte[] bArr2 = bArr == null ? new byte[0] : bArr;
        int hLen = prf.getHLen();
        int iM31423try = m31423try(i2, hLen);
        int i3 = i2 - ((iM31423try - 1) * hLen);
        byte[] bArr3 = new byte[iM31423try * hLen];
        int i4 = 0;
        for (int i5 = 1; i5 <= iM31423try; i5++) {
            m31420for(bArr3, i4, prf, bArr2, i, i5);
            i4 += hLen;
        }
        if (i3 >= hLen) {
            return bArr3;
        }
        byte[] bArr4 = new byte[i2];
        System.arraycopy(bArr3, 0, bArr4, 0, i2);
        return bArr4;
    }

    /* renamed from: new, reason: not valid java name */
    private void m31422new(byte[] bArr) {
        if (this.f28081if == null) {
            this.f28081if = new Cif(this.f28080do.m7314if());
        }
        this.f28081if.init(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    private int m31423try(int i, int i2) {
        return (i / i2) + (i % i2 > 0 ? 1 : 0);
    }

    /* renamed from: break, reason: not valid java name */
    public void m31424break(s91 s91Var) {
        this.f28080do = s91Var;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m31425case(char[] cArr) {
        return m31429else(cArr, 0);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m31426catch(PRF prf) {
        this.f28081if = prf;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m31427class(char[] cArr) {
        byte[] bArrM31429else;
        byte[] bArrM7310do = m31430goto().m7310do();
        if (bArrM7310do == null || bArrM7310do.length == 0 || (bArrM31429else = m31429else(cArr, bArrM7310do.length)) == null || bArrM31429else.length != bArrM7310do.length) {
            return false;
        }
        for (int i = 0; i < bArrM31429else.length; i++) {
            if (bArrM31429else[i] != bArrM7310do[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public void m31428do(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 / 16777216);
        bArr[i + 1] = (byte) (i2 / 65536);
        bArr[i + 2] = (byte) (i2 / 256);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m31429else(char[] cArr, int i) {
        Objects.requireNonNull(cArr);
        m31422new(mj2.m4935do(cArr));
        if (i == 0) {
            i = this.f28081if.getHLen();
        }
        return m31421if(this.f28081if, this.f28080do.m7317try(), this.f28080do.m7315new(), i);
    }

    /* renamed from: goto, reason: not valid java name */
    public s91 m31430goto() {
        return this.f28080do;
    }

    /* renamed from: this, reason: not valid java name */
    public PRF m31431this() {
        return this.f28081if;
    }

    public Cfor(s91 s91Var, PRF prf) {
        this.f28080do = s91Var;
        this.f28081if = prf;
    }
}
