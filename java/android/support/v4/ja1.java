package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes3.dex */
public class ja1 extends l91 {

    /* renamed from: new, reason: not valid java name */
    private Mac f3037new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f3038try;

    public ja1() {
        this(u00.m8176if());
    }

    public ja1(Digest digest) {
        pi0 pi0Var = new pi0(digest);
        this.f3037new = pi0Var;
        this.f3038try = new byte[pi0Var.getMacSize()];
    }

    /* renamed from: catch, reason: not valid java name */
    private void m3756catch(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, int i2) throws IllegalStateException, tw {
        if (i == 0) {
            throw new IllegalArgumentException("iteration count must be at least 1.");
        }
        if (bArr != null) {
            this.f3037new.update(bArr, 0, bArr.length);
        }
        this.f3037new.update(bArr2, 0, bArr2.length);
        this.f3037new.doFinal(this.f3038try, 0);
        byte[] bArr4 = this.f3038try;
        System.arraycopy(bArr4, 0, bArr3, i2, bArr4.length);
        for (int i3 = 1; i3 < i; i3++) {
            Mac mac = this.f3037new;
            byte[] bArr5 = this.f3038try;
            mac.update(bArr5, 0, bArr5.length);
            this.f3037new.doFinal(this.f3038try, 0);
            int i4 = 0;
            while (true) {
                byte[] bArr6 = this.f3038try;
                if (i4 != bArr6.length) {
                    int i5 = i2 + i4;
                    bArr3[i5] = (byte) (bArr6[i4] ^ bArr3[i5]);
                    i4++;
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private byte[] m3757class(int i) throws IllegalStateException, tw, IllegalArgumentException {
        int i2;
        int macSize = this.f3037new.getMacSize();
        int i3 = ((i + macSize) - 1) / macSize;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[i3 * macSize];
        this.f3037new.init(new gr0(this.f3577do));
        int i4 = 0;
        for (int i5 = 1; i5 <= i3; i5++) {
            while (true) {
                byte b = (byte) (bArr[i2] + 1);
                bArr[i2] = b;
                i2 = b == 0 ? i2 - 1 : 3;
            }
            m3756catch(this.f3579if, this.f3578for, bArr, bArr2, i4);
            i4 += macSize;
        }
        return bArr2;
    }

    @Override // android.support.v4.l91
    /* renamed from: case */
    public CipherParameters mo2234case(int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        int i3 = i / 8;
        int i4 = i2 / 8;
        byte[] bArrM3757class = m3757class(i3 + i4);
        return new bc1(new gr0(bArrM3757class, 0, i3), bArrM3757class, i3, i4);
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
        return new gr0(q3.m6378instanceof(m3757class(i2), 0, i2), 0, i2);
    }
}
