package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class v71 extends l91 {

    /* renamed from: new, reason: not valid java name */
    private Digest f7106new = u00.m8172do();

    /* renamed from: catch, reason: not valid java name */
    private byte[] m8766catch(int i) {
        int digestSize = this.f7106new.getDigestSize();
        byte[] bArr = new byte[digestSize];
        byte[] bArr2 = new byte[i];
        int i2 = 0;
        while (true) {
            Digest digest = this.f7106new;
            byte[] bArr3 = this.f3577do;
            digest.update(bArr3, 0, bArr3.length);
            Digest digest2 = this.f7106new;
            byte[] bArr4 = this.f3579if;
            digest2.update(bArr4, 0, bArr4.length);
            this.f7106new.doFinal(bArr, 0);
            int i3 = i > digestSize ? digestSize : i;
            System.arraycopy(bArr, 0, bArr2, i2, i3);
            i2 += i3;
            i -= i3;
            if (i == 0) {
                return bArr2;
            }
            this.f7106new.reset();
            this.f7106new.update(bArr, 0, digestSize);
        }
    }

    @Override // android.support.v4.l91
    /* renamed from: case */
    public CipherParameters mo2234case(int i, int i2) {
        int i3 = i / 8;
        int i4 = i2 / 8;
        byte[] bArrM8766catch = m8766catch(i3 + i4);
        return new bc1(new gr0(bArrM8766catch, 0, i3), bArrM8766catch, i3, i4);
    }

    /* renamed from: class, reason: not valid java name */
    public void m8767class(byte[] bArr, byte[] bArr2) {
        super.m4622break(bArr, bArr2, 1);
    }

    @Override // android.support.v4.l91
    /* renamed from: new */
    public CipherParameters mo2235new(int i) {
        return mo2236try(i);
    }

    @Override // android.support.v4.l91
    /* renamed from: try */
    public CipherParameters mo2236try(int i) {
        int i2 = i / 8;
        return new gr0(m8766catch(i2), 0, i2);
    }
}
