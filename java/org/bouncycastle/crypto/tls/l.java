package org.bouncycastle.crypto.tls;

import android.support.v4.bc1;
import android.support.v4.gr0;
import android.support.v4.n72;
import android.support.v4.p72;
import android.support.v4.q3;
import android.support.v4.tw;
import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class l implements TlsCipher {

    /* renamed from: case, reason: not valid java name */
    public BlockCipher f30666case;

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30667do;

    /* renamed from: else, reason: not valid java name */
    public p72 f30668else;

    /* renamed from: for, reason: not valid java name */
    public boolean f30669for;

    /* renamed from: goto, reason: not valid java name */
    public p72 f30670goto;

    /* renamed from: if, reason: not valid java name */
    public byte[] f30671if = new byte[256];

    /* renamed from: new, reason: not valid java name */
    public boolean f30672new;

    /* renamed from: try, reason: not valid java name */
    public BlockCipher f30673try;

    public l(TlsContext tlsContext, BlockCipher blockCipher, BlockCipher blockCipher2, Digest digest, Digest digest2, int i) throws IOException, IllegalArgumentException {
        byte[] bArrM6378instanceof;
        byte[] bArrM6378instanceof2;
        bc1 bc1Var;
        bc1 bc1Var2;
        this.f30667do = tlsContext;
        tlsContext.getNonceRandomGenerator().nextBytes(this.f30671if);
        this.f30669for = l0.u(tlsContext);
        this.f30672new = tlsContext.getSecurityParameters().f4055final;
        int digestSize = (i * 2) + digest.getDigestSize() + digest2.getDigestSize();
        int blockSize = this.f30669for ? digestSize : digestSize + blockCipher.getBlockSize() + blockCipher2.getBlockSize();
        byte[] bArrM34216try = l0.m34216try(tlsContext, blockSize);
        p72 p72Var = new p72(tlsContext, digest, bArrM34216try, 0, digest.getDigestSize());
        int digestSize2 = digest.getDigestSize() + 0;
        p72 p72Var2 = new p72(tlsContext, digest2, bArrM34216try, digestSize2, digest2.getDigestSize());
        int digestSize3 = digestSize2 + digest2.getDigestSize();
        gr0 gr0Var = new gr0(bArrM34216try, digestSize3, i);
        int i2 = digestSize3 + i;
        gr0 gr0Var2 = new gr0(bArrM34216try, i2, i);
        int blockSize2 = i2 + i;
        if (this.f30669for) {
            bArrM6378instanceof = new byte[blockCipher.getBlockSize()];
            bArrM6378instanceof2 = new byte[blockCipher2.getBlockSize()];
        } else {
            bArrM6378instanceof = q3.m6378instanceof(bArrM34216try, blockSize2, blockCipher.getBlockSize() + blockSize2);
            int blockSize3 = blockSize2 + blockCipher.getBlockSize();
            bArrM6378instanceof2 = q3.m6378instanceof(bArrM34216try, blockSize3, blockCipher2.getBlockSize() + blockSize3);
            blockSize2 = blockSize3 + blockCipher2.getBlockSize();
        }
        if (blockSize2 != blockSize) {
            throw new n72((short) 80);
        }
        if (tlsContext.isServer()) {
            this.f30668else = p72Var2;
            this.f30670goto = p72Var;
            this.f30673try = blockCipher2;
            this.f30666case = blockCipher;
            bc1Var = new bc1(gr0Var2, bArrM6378instanceof2);
            bc1Var2 = new bc1(gr0Var, bArrM6378instanceof);
        } else {
            this.f30668else = p72Var;
            this.f30670goto = p72Var2;
            this.f30673try = blockCipher;
            this.f30666case = blockCipher2;
            bc1Var = new bc1(gr0Var, bArrM6378instanceof);
            bc1Var2 = new bc1(gr0Var2, bArrM6378instanceof2);
        }
        this.f30673try.init(true, bc1Var);
        this.f30666case.init(false, bc1Var2);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IllegalStateException, tw, IOException, IllegalArgumentException {
        int i3;
        byte[] bArr2;
        int i4 = i;
        int blockSize = this.f30666case.getBlockSize();
        int iM5912try = this.f30670goto.m5912try();
        int iMax = this.f30672new ? blockSize + iM5912try : Math.max(blockSize, iM5912try + 1);
        if (this.f30669for) {
            iMax += blockSize;
        }
        if (i2 < iMax) {
            throw new n72((short) 50);
        }
        boolean z = this.f30672new;
        int i5 = z ? i2 - iM5912try : i2;
        if (i5 % blockSize != 0) {
            throw new n72((short) 21);
        }
        if (z) {
            int i6 = i4 + i2;
            if (!q3.m6360abstract(this.f30670goto.m5908do(j, s, bArr, i, i2 - iM5912try), q3.m6378instanceof(bArr, i6 - iM5912try, i6))) {
                throw new n72((short) 20);
            }
        }
        if (this.f30669for) {
            this.f30666case.init(false, new bc1(null, bArr, i4, blockSize));
            i4 += blockSize;
            i5 -= blockSize;
        }
        int i7 = i4;
        int i8 = i5;
        for (int i9 = 0; i9 < i8; i9 += blockSize) {
            int i10 = i7 + i9;
            this.f30666case.processBlock(bArr, i10, bArr, i10);
        }
        int iM34175do = m34175do(bArr, i7, i8, blockSize, this.f30672new ? 0 : iM5912try);
        boolean z2 = iM34175do == 0;
        int i11 = i8 - iM34175do;
        if (this.f30672new) {
            i3 = i7;
            bArr2 = bArr;
        } else {
            i11 -= iM5912try;
            int i12 = i7 + i11;
            i3 = i7;
            bArr2 = bArr;
            z2 |= !q3.m6360abstract(this.f30670goto.m5910if(j, s, bArr, i7, i11, i8 - iM5912try, this.f30671if), q3.m6378instanceof(bArr, i12, i12 + iM5912try));
        }
        if (z2) {
            throw new n72((short) 20);
        }
        return q3.m6378instanceof(bArr2, i3, i3 + i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[LOOP:0: B:16:0x002d->B:18:0x0031, LOOP_END] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m34175do(byte[] bArr, int i, int i2, int i3, int i4) {
        byte b;
        int i5;
        int i6 = i + i2;
        byte b2 = bArr[i6 - 1];
        int i7 = (b2 & 255) + 1;
        if ((!l0.q(this.f30667do) || i7 <= i3) && i4 + i7 <= i2) {
            int i8 = i6 - i7;
            b = 0;
            while (true) {
                int i9 = i8 + 1;
                b = (byte) ((bArr[i8] ^ b2) | b);
                if (i9 >= i6) {
                    break;
                }
                i8 = i9;
            }
            i5 = i7;
            if (b != 0) {
            }
            byte[] bArr2 = this.f30671if;
            while (i5 < 256) {
                b = (byte) ((bArr2[i5] ^ b2) | b);
                i5++;
            }
            bArr2[0] = (byte) (bArr2[0] ^ b);
            return i7;
        }
        i5 = 0;
        b = 0;
        i7 = 0;
        byte[] bArr22 = this.f30671if;
        while (i5 < 256) {
        }
        bArr22[0] = (byte) (bArr22[0] ^ b);
        return i7;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArr2;
        int i3;
        int i4;
        int blockSize = this.f30673try.getBlockSize();
        int iM5912try = this.f30668else.m5912try();
        a serverVersion = this.f30667do.getServerVersion();
        boolean z = this.f30672new;
        int iM34177if = (blockSize - 1) - ((!z ? i2 + iM5912try : i2) % blockSize);
        if ((z || !this.f30667do.getSecurityParameters().f4052const) && !serverVersion.m33941goto() && !serverVersion.m33937catch()) {
            iM34177if += m34177if(this.f30667do.getSecureRandom(), (255 - iM34177if) / blockSize) * blockSize;
        }
        int i5 = iM34177if;
        int i6 = iM5912try + i2 + i5 + 1;
        boolean z2 = this.f30669for;
        if (z2) {
            i6 += blockSize;
        }
        byte[] bArr3 = new byte[i6];
        if (z2) {
            byte[] bArr4 = new byte[blockSize];
            this.f30667do.getNonceRandomGenerator().nextBytes(bArr4);
            this.f30673try.init(true, new bc1(null, bArr4));
            System.arraycopy(bArr4, 0, bArr3, 0, blockSize);
            bArr2 = bArr;
            i3 = i;
            i4 = blockSize + 0;
        } else {
            bArr2 = bArr;
            i3 = i;
            i4 = 0;
        }
        System.arraycopy(bArr2, i3, bArr3, i4, i2);
        int length = i4 + i2;
        if (!this.f30672new) {
            byte[] bArrM5908do = this.f30668else.m5908do(j, s, bArr, i, i2);
            System.arraycopy(bArrM5908do, 0, bArr3, length, bArrM5908do.length);
            length += bArrM5908do.length;
        }
        int i7 = length;
        int i8 = 0;
        while (i8 <= i5) {
            bArr3[i7] = (byte) i5;
            i8++;
            i7++;
        }
        while (i4 < i7) {
            this.f30673try.processBlock(bArr3, i4, bArr3, i4);
            i4 += blockSize;
        }
        if (!this.f30672new) {
            return bArr3;
        }
        byte[] bArrM5908do2 = this.f30668else.m5908do(j, s, bArr3, 0, i7);
        System.arraycopy(bArrM5908do2, 0, bArr3, i7, bArrM5908do2.length);
        return bArr3;
    }

    /* renamed from: for, reason: not valid java name */
    public p72 m34176for() {
        return this.f30670goto;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        int i2;
        int blockSize = this.f30673try.getBlockSize();
        int iM5912try = this.f30668else.m5912try();
        if (this.f30669for) {
            i -= blockSize;
        }
        if (this.f30672new) {
            int i3 = i - iM5912try;
            i2 = i3 - (i3 % blockSize);
        } else {
            i2 = (i - (i % blockSize)) - iM5912try;
        }
        return i2 - 1;
    }

    /* renamed from: if, reason: not valid java name */
    public int m34177if(SecureRandom secureRandom, int i) {
        return Math.min(m34179try(secureRandom.nextInt()), i);
    }

    /* renamed from: new, reason: not valid java name */
    public p72 m34178new() {
        return this.f30668else;
    }

    /* renamed from: try, reason: not valid java name */
    public int m34179try(int i) {
        if (i == 0) {
            return 32;
        }
        int i2 = 0;
        while ((i & 1) == 0) {
            i2++;
            i >>= 1;
        }
        return i2;
    }
}
