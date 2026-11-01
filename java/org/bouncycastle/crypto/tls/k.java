package org.bouncycastle.crypto.tls;

import android.support.v4.Cnew;
import android.support.v4.gr0;
import android.support.v4.n72;
import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.crypto.modes.AEADBlockCipher;

/* loaded from: classes3.dex */
public class k implements TlsCipher {

    /* renamed from: break, reason: not valid java name */
    public static final int f30650break = 2;

    /* renamed from: this, reason: not valid java name */
    public static final int f30651this = 1;

    /* renamed from: case, reason: not valid java name */
    public byte[] f30652case;

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30653do;

    /* renamed from: else, reason: not valid java name */
    public byte[] f30654else;

    /* renamed from: for, reason: not valid java name */
    public int f30655for;

    /* renamed from: goto, reason: not valid java name */
    public int f30656goto;

    /* renamed from: if, reason: not valid java name */
    public int f30657if;

    /* renamed from: new, reason: not valid java name */
    public AEADBlockCipher f30658new;

    /* renamed from: try, reason: not valid java name */
    public AEADBlockCipher f30659try;

    public k(TlsContext tlsContext, AEADBlockCipher aEADBlockCipher, AEADBlockCipher aEADBlockCipher2, int i, int i2) throws IOException {
        this(tlsContext, aEADBlockCipher, aEADBlockCipher2, i, i2, 1);
    }

    public k(TlsContext tlsContext, AEADBlockCipher aEADBlockCipher, AEADBlockCipher aEADBlockCipher2, int i, int i2, int i3) throws IOException, IllegalArgumentException {
        int i4;
        if (!l0.w(tlsContext)) {
            throw new n72((short) 80);
        }
        this.f30656goto = i3;
        if (i3 == 1) {
            i4 = 4;
            this.f30655for = 8;
        } else {
            if (i3 != 2) {
                throw new n72((short) 80);
            }
            i4 = 12;
            this.f30655for = 0;
        }
        this.f30653do = tlsContext;
        this.f30657if = i2;
        int i5 = (i * 2) + (i4 * 2);
        byte[] bArrM34216try = l0.m34216try(tlsContext, i5);
        gr0 gr0Var = new gr0(bArrM34216try, 0, i);
        int i6 = i + 0;
        gr0 gr0Var2 = new gr0(bArrM34216try, i6, i);
        int i7 = i6 + i;
        int i8 = i7 + i4;
        byte[] bArrM6378instanceof = q3.m6378instanceof(bArrM34216try, i7, i8);
        int i9 = i8 + i4;
        byte[] bArrM6378instanceof2 = q3.m6378instanceof(bArrM34216try, i8, i9);
        if (i9 != i5) {
            throw new n72((short) 80);
        }
        if (tlsContext.isServer()) {
            this.f30658new = aEADBlockCipher2;
            this.f30659try = aEADBlockCipher;
            this.f30652case = bArrM6378instanceof2;
            this.f30654else = bArrM6378instanceof;
            gr0Var2 = gr0Var;
            gr0Var = gr0Var2;
        } else {
            this.f30658new = aEADBlockCipher;
            this.f30659try = aEADBlockCipher2;
            this.f30652case = bArrM6378instanceof;
            this.f30654else = bArrM6378instanceof2;
        }
        byte[] bArr = new byte[i4 + this.f30655for];
        int i10 = i2 * 8;
        this.f30658new.init(true, new Cnew(gr0Var, i10, bArr));
        this.f30659try.init(false, new Cnew(gr0Var2, i10, bArr));
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (getPlaintextLimit(i2) < 0) {
            throw new n72((short) 50);
        }
        byte[] bArr2 = this.f30654else;
        int length = bArr2.length + this.f30655for;
        byte[] bArr3 = new byte[length];
        int i3 = this.f30656goto;
        if (i3 == 1) {
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            int i4 = this.f30655for;
            System.arraycopy(bArr, i, bArr3, length - i4, i4);
        } else {
            if (i3 != 2) {
                throw new n72((short) 80);
            }
            l0.E0(j, bArr3, length - 8);
            int i5 = 0;
            while (true) {
                byte[] bArr4 = this.f30654else;
                if (i5 >= bArr4.length) {
                    break;
                }
                bArr3[i5] = (byte) (bArr4[i5] ^ bArr3[i5]);
                i5++;
            }
        }
        int i6 = this.f30655for;
        int i7 = i + i6;
        int i8 = i2 - i6;
        int outputSize = this.f30659try.getOutputSize(i8);
        byte[] bArr5 = new byte[outputSize];
        try {
            this.f30659try.init(false, new Cnew(null, this.f30657if * 8, bArr3, m34172do(j, s, outputSize)));
            int iProcessBytes = this.f30659try.processBytes(bArr, i7, i8, bArr5, 0) + 0;
            if (iProcessBytes + this.f30659try.doFinal(bArr5, iProcessBytes) == outputSize) {
                return bArr5;
            }
            throw new n72((short) 80);
        } catch (Exception e) {
            throw new n72((short) 20, e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m34172do(long j, short s, int i) throws IOException {
        byte[] bArr = new byte[13];
        l0.E0(j, bArr, 0);
        l0.I0(s, bArr, 8);
        l0.O0(this.f30653do.getServerVersion(), bArr, 9);
        l0.s0(i, bArr, 11);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = this.f30652case;
        int length = bArr2.length + this.f30655for;
        byte[] bArr3 = new byte[length];
        int i3 = this.f30656goto;
        if (i3 == 1) {
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            l0.E0(j, bArr3, this.f30652case.length);
        } else {
            if (i3 != 2) {
                throw new n72((short) 80);
            }
            l0.E0(j, bArr3, length - 8);
            int i4 = 0;
            while (true) {
                byte[] bArr4 = this.f30652case;
                if (i4 >= bArr4.length) {
                    break;
                }
                bArr3[i4] = (byte) (bArr4[i4] ^ bArr3[i4]);
                i4++;
            }
        }
        int outputSize = this.f30658new.getOutputSize(i2);
        int i5 = this.f30655for;
        int i6 = i5 + outputSize;
        byte[] bArr5 = new byte[i6];
        if (i5 != 0) {
            System.arraycopy(bArr3, length - i5, bArr5, 0, i5);
        }
        int i7 = this.f30655for;
        try {
            this.f30658new.init(true, new Cnew(null, this.f30657if * 8, bArr3, m34172do(j, s, i2)));
            int iProcessBytes = i7 + this.f30658new.processBytes(bArr, i, i2, bArr5, i7);
            if (iProcessBytes + this.f30658new.doFinal(bArr5, iProcessBytes) == i6) {
                return bArr5;
            }
            throw new n72((short) 80);
        } catch (Exception e) {
            throw new n72((short) 80, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        return (i - this.f30657if) - this.f30655for;
    }
}
