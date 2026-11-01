package android.support.v4;

import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class lq implements DerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private Digest f3728do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f3729for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f3730if;

    /* renamed from: new, reason: not valid java name */
    private int f3731new;

    public lq(Digest digest) {
        this.f3728do = digest;
        this.f3731new = digest.getDigestSize();
    }

    /* renamed from: do, reason: not valid java name */
    private void m4732do(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        int i3;
        int i4;
        if (bArr.length - i2 < i) {
            throw new f91("output buffer too small");
        }
        byte[] bArr2 = new byte[this.f3731new];
        byte[] bArr3 = new byte[4];
        this.f3728do.reset();
        int i5 = 1;
        if (i2 > this.f3731new) {
            i3 = 0;
            while (true) {
                m4732do(i5, bArr3);
                this.f3728do.update(bArr3, 0, 4);
                Digest digest = this.f3728do;
                byte[] bArr4 = this.f3730if;
                digest.update(bArr4, 0, bArr4.length);
                Digest digest2 = this.f3728do;
                byte[] bArr5 = this.f3729for;
                digest2.update(bArr5, 0, bArr5.length);
                this.f3728do.doFinal(bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i + i3, this.f3731new);
                int i6 = this.f3731new;
                i3 += i6;
                i4 = i5 + 1;
                if (i5 >= i2 / i6) {
                    break;
                }
                i5 = i4;
            }
            i5 = i4;
        } else {
            i3 = 0;
        }
        if (i3 < i2) {
            m4732do(i5, bArr3);
            this.f3728do.update(bArr3, 0, 4);
            Digest digest3 = this.f3728do;
            byte[] bArr6 = this.f3730if;
            digest3.update(bArr6, 0, bArr6.length);
            Digest digest4 = this.f3728do;
            byte[] bArr7 = this.f3729for;
            digest4.update(bArr7, 0, bArr7.length);
            this.f3728do.doFinal(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i + i3, i2 - i3);
        }
        return i2;
    }

    public Digest getDigest() {
        return this.f3728do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof kq0)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        kq0 kq0Var = (kq0) derivationParameters;
        this.f3730if = kq0Var.m4472if();
        this.f3729for = kq0Var.m4471do();
    }
}
