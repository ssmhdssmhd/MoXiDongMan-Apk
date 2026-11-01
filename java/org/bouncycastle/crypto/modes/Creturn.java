package org.bouncycastle.crypto.modes;

import android.support.v4.f91;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.modes.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private int f30126case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f30127do;

    /* renamed from: else, reason: not valid java name */
    private boolean f30128else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30129for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30130if;

    /* renamed from: new, reason: not valid java name */
    private BlockCipher f30131new;

    /* renamed from: try, reason: not valid java name */
    private int f30132try;

    public Creturn(BlockCipher blockCipher) {
        this.f30131new = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f30126case = blockSize;
        this.f30127do = new byte[blockSize];
        this.f30130if = new byte[blockSize];
        this.f30129for = new byte[blockSize];
    }

    /* renamed from: do, reason: not valid java name */
    private int m33770do(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3;
        int i4;
        int i5;
        int i6 = this.f30126case;
        if (i + i6 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + i6 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        int i7 = this.f30132try;
        int i8 = 2;
        int i9 = 0;
        if (i7 > i6) {
            byte b = bArr[i];
            this.f30130if[i6 - 2] = b;
            bArr2[i2] = m33771for(b, i6 - 2);
            byte b2 = bArr[i + 1];
            byte[] bArr3 = this.f30130if;
            int i10 = this.f30126case;
            bArr3[i10 - 1] = b2;
            bArr2[i2 + 1] = m33771for(b2, i10 - 1);
            this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
            while (i8 < this.f30126case) {
                byte b3 = bArr[i + i8];
                int i11 = i8 - 2;
                this.f30130if[i11] = b3;
                bArr2[i2 + i8] = m33771for(b3, i11);
                i8++;
            }
        } else {
            if (i7 == 0) {
                this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
                while (true) {
                    i5 = this.f30126case;
                    if (i9 >= i5) {
                        break;
                    }
                    int i12 = i + i9;
                    this.f30130if[i9] = bArr[i12];
                    bArr2[i9] = m33771for(bArr[i12], i9);
                    i9++;
                }
                i4 = this.f30132try + i5;
            } else if (i7 == i6) {
                this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
                byte b4 = bArr[i];
                byte b5 = bArr[i + 1];
                bArr2[i2] = m33771for(b4, 0);
                bArr2[i2 + 1] = m33771for(b5, 1);
                byte[] bArr4 = this.f30130if;
                System.arraycopy(bArr4, 2, bArr4, 0, this.f30126case - 2);
                byte[] bArr5 = this.f30130if;
                int i13 = this.f30126case;
                bArr5[i13 - 2] = b4;
                bArr5[i13 - 1] = b5;
                this.f30131new.processBlock(bArr5, 0, this.f30129for, 0);
                while (true) {
                    i3 = this.f30126case;
                    if (i8 >= i3) {
                        break;
                    }
                    byte b6 = bArr[i + i8];
                    int i14 = i8 - 2;
                    this.f30130if[i14] = b6;
                    bArr2[i2 + i8] = m33771for(b6, i14);
                    i8++;
                }
                i4 = this.f30132try + i3;
            }
            this.f30132try = i4;
        }
        return this.f30126case;
    }

    /* renamed from: for, reason: not valid java name */
    private byte m33771for(byte b, int i) {
        return (byte) (b ^ this.f30129for[i]);
    }

    /* renamed from: if, reason: not valid java name */
    private int m33772if(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3;
        int i4 = this.f30126case;
        if (i + i4 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i2 + i4 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        int i5 = this.f30132try;
        int i6 = 2;
        int i7 = 0;
        if (i5 > i4) {
            byte[] bArr3 = this.f30130if;
            int i8 = i4 - 2;
            byte bM33771for = m33771for(bArr[i], i4 - 2);
            bArr2[i2] = bM33771for;
            bArr3[i8] = bM33771for;
            byte[] bArr4 = this.f30130if;
            int i9 = this.f30126case;
            int i10 = i9 - 1;
            byte bM33771for2 = m33771for(bArr[i + 1], i9 - 1);
            bArr2[i2 + 1] = bM33771for2;
            bArr4[i10] = bM33771for2;
            this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
            while (i6 < this.f30126case) {
                byte[] bArr5 = this.f30130if;
                int i11 = i6 - 2;
                byte bM33771for3 = m33771for(bArr[i + i6], i11);
                bArr2[i2 + i6] = bM33771for3;
                bArr5[i11] = bM33771for3;
                i6++;
            }
        } else {
            if (i5 != 0) {
                if (i5 == i4) {
                    this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
                    bArr2[i2] = m33771for(bArr[i], 0);
                    bArr2[i2 + 1] = m33771for(bArr[i + 1], 1);
                    byte[] bArr6 = this.f30130if;
                    System.arraycopy(bArr6, 2, bArr6, 0, this.f30126case - 2);
                    System.arraycopy(bArr2, i2, this.f30130if, this.f30126case - 2, 2);
                    this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
                    while (true) {
                        i3 = this.f30126case;
                        if (i6 >= i3) {
                            break;
                        }
                        byte[] bArr7 = this.f30130if;
                        int i12 = i6 - 2;
                        byte bM33771for4 = m33771for(bArr[i + i6], i12);
                        bArr2[i2 + i6] = bM33771for4;
                        bArr7[i12] = bM33771for4;
                        i6++;
                    }
                }
            } else {
                this.f30131new.processBlock(this.f30130if, 0, this.f30129for, 0);
                while (true) {
                    i3 = this.f30126case;
                    if (i7 >= i3) {
                        break;
                    }
                    byte[] bArr8 = this.f30130if;
                    byte bM33771for5 = m33771for(bArr[i + i7], i7);
                    bArr2[i2 + i7] = bM33771for5;
                    bArr8[i7] = bM33771for5;
                    i7++;
                }
            }
            this.f30132try += i3;
        }
        return this.f30126case;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.f30131new.getAlgorithmName() + "/OpenPGPCFB";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f30131new.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.f30128else = z;
        reset();
        this.f30131new.init(true, cipherParameters);
    }

    /* renamed from: new, reason: not valid java name */
    public BlockCipher m33773new() {
        return this.f30131new;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        return this.f30128else ? m33772if(bArr, i, bArr2, i2) : m33770do(bArr, i, bArr2, i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.f30132try = 0;
        byte[] bArr = this.f30127do;
        byte[] bArr2 = this.f30130if;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f30131new.reset();
    }
}
