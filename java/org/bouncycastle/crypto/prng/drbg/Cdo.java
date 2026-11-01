package org.bouncycastle.crypto.prng.drbg;

import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.crypto.prng.drbg.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements SP80090DRBG {

    /* renamed from: break, reason: not valid java name */
    private static final long f30262break = 2147483648L;

    /* renamed from: catch, reason: not valid java name */
    private static final long f30263catch = 140737488355328L;

    /* renamed from: class, reason: not valid java name */
    private static final int f30264class = 4096;

    /* renamed from: const, reason: not valid java name */
    private static final int f30265const = 262144;

    /* renamed from: final, reason: not valid java name */
    private static final byte[] f30266final = Cfor.m36332if("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");

    /* renamed from: case, reason: not valid java name */
    private byte[] f30267case;

    /* renamed from: do, reason: not valid java name */
    private EntropySource f30268do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30269else;

    /* renamed from: for, reason: not valid java name */
    private int f30270for;

    /* renamed from: goto, reason: not valid java name */
    private long f30271goto = 0;

    /* renamed from: if, reason: not valid java name */
    private BlockCipher f30272if;

    /* renamed from: new, reason: not valid java name */
    private int f30273new;

    /* renamed from: this, reason: not valid java name */
    private boolean f30274this;

    /* renamed from: try, reason: not valid java name */
    private int f30275try;

    public Cdo(BlockCipher blockCipher, int i, int i2, EntropySource entropySource, byte[] bArr, byte[] bArr2) throws IllegalStateException, tw, IllegalArgumentException {
        this.f30274this = false;
        this.f30268do = entropySource;
        this.f30272if = blockCipher;
        this.f30270for = i;
        this.f30275try = i2;
        this.f30273new = (blockCipher.getBlockSize() * 8) + i;
        this.f30274this = m33868class(blockCipher);
        if (i2 > 256) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (m33867catch(blockCipher, i) < i2) {
            throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
        }
        if (entropySource.entropySize() < i2) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        m33872for(m33865break(), bArr2, bArr);
    }

    /* renamed from: break, reason: not valid java name */
    private byte[] m33865break() {
        byte[] entropy = this.f30268do.getEntropy();
        if (entropy.length >= (this.f30275try + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    /* renamed from: case, reason: not valid java name */
    private void m33866case(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) (bArr2[i2] ^ bArr3[i2 + i]);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private int m33867catch(BlockCipher blockCipher, int i) {
        if (m33868class(blockCipher) && i == 168) {
            return 112;
        }
        if (blockCipher.getAlgorithmName().equals("AES")) {
            return i;
        }
        return -1;
    }

    /* renamed from: class, reason: not valid java name */
    private boolean m33868class(BlockCipher blockCipher) {
        return blockCipher.getAlgorithmName().equals("DESede") || blockCipher.getAlgorithmName().equals("TDEA");
    }

    /* renamed from: const, reason: not valid java name */
    private void m33869const(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i + 0;
        bArr2[i2 + 0] = (byte) (bArr[i3] & 254);
        int i4 = i + 1;
        bArr2[i2 + 1] = (byte) ((bArr[i3] << 7) | ((bArr[i4] & 252) >>> 1));
        int i5 = bArr[i4] << 6;
        int i6 = i + 2;
        bArr2[i2 + 2] = (byte) (i5 | ((bArr[i6] & 248) >>> 2));
        int i7 = bArr[i6] << 5;
        int i8 = i + 3;
        bArr2[i2 + 3] = (byte) (i7 | ((bArr[i8] & 240) >>> 3));
        int i9 = bArr[i8] << 4;
        int i10 = i + 4;
        bArr2[i2 + 4] = (byte) (i9 | ((bArr[i10] & 224) >>> 4));
        int i11 = bArr[i10] << 3;
        int i12 = i + 5;
        bArr2[i2 + 5] = (byte) (i11 | ((bArr[i12] & 192) >>> 5));
        int i13 = i + 6;
        bArr2[i2 + 6] = (byte) ((bArr[i12] << 2) | ((bArr[i13] & 128) >>> 6));
        int i14 = i2 + 7;
        bArr2[i14] = (byte) (bArr[i13] << 1);
        while (i2 <= i14) {
            byte b = bArr2[i2];
            bArr2[i2] = (byte) (((((b >> 7) ^ ((((((b >> 1) ^ (b >> 2)) ^ (b >> 3)) ^ (b >> 4)) ^ (b >> 5)) ^ (b >> 6))) ^ 1) & 1) | (b & 254));
            i2++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m33870do(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws IllegalStateException, tw, IllegalArgumentException {
        int blockSize = this.f30272if.getBlockSize();
        byte[] bArr5 = new byte[blockSize];
        int length = bArr4.length / blockSize;
        byte[] bArr6 = new byte[blockSize];
        this.f30272if.init(true, new gr0(m33877this(bArr2)));
        this.f30272if.processBlock(bArr3, 0, bArr5, 0);
        for (int i = 0; i < length; i++) {
            m33866case(bArr6, bArr5, bArr4, i * blockSize);
            this.f30272if.processBlock(bArr6, 0, bArr5, 0);
        }
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
    }

    /* renamed from: else, reason: not valid java name */
    private void m33871else(byte[] bArr) {
        int i = 1;
        for (int i2 = 1; i2 <= bArr.length; i2++) {
            int i3 = (bArr[bArr.length - i2] & 255) + i;
            i = i3 > 255 ? 1 : 0;
            bArr[bArr.length - i2] = (byte) i3;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m33872for(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArrM33874if = m33874if(q3.m6370extends(bArr, bArr2, bArr3), this.f30273new);
        int blockSize = this.f30272if.getBlockSize();
        byte[] bArr4 = new byte[(this.f30270for + 7) / 8];
        this.f30267case = bArr4;
        byte[] bArr5 = new byte[blockSize];
        this.f30269else = bArr5;
        m33876try(bArrM33874if, bArr4, bArr5);
        this.f30271goto = 1L;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m33873goto(byte[] bArr, int i, int i2) {
        bArr[i2 + 0] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m33874if(byte[] bArr, int i) throws IllegalStateException, tw, IllegalArgumentException {
        int blockSize = this.f30272if.getBlockSize();
        int length = bArr.length;
        int i2 = i / 8;
        int i3 = length + 8;
        byte[] bArr2 = new byte[((((i3 + 1) + blockSize) - 1) / blockSize) * blockSize];
        m33873goto(bArr2, length, 0);
        m33873goto(bArr2, i2, 4);
        System.arraycopy(bArr, 0, bArr2, 8, length);
        bArr2[i3] = Byte.MIN_VALUE;
        int i4 = this.f30270for;
        int i5 = (i4 / 8) + blockSize;
        byte[] bArr3 = new byte[i5];
        byte[] bArr4 = new byte[blockSize];
        byte[] bArr5 = new byte[blockSize];
        int i6 = i4 / 8;
        byte[] bArr6 = new byte[i6];
        System.arraycopy(f30266final, 0, bArr6, 0, i6);
        int i7 = 0;
        while (true) {
            int i8 = i7 * blockSize;
            if (i8 * 8 >= this.f30270for + (blockSize * 8)) {
                break;
            }
            m33873goto(bArr5, i7, 0);
            m33870do(bArr4, bArr6, bArr5, bArr2);
            int i9 = i5 - i8;
            if (i9 > blockSize) {
                i9 = blockSize;
            }
            System.arraycopy(bArr4, 0, bArr3, i8, i9);
            i7++;
        }
        byte[] bArr7 = new byte[blockSize];
        System.arraycopy(bArr3, 0, bArr6, 0, i6);
        System.arraycopy(bArr3, i6, bArr7, 0, blockSize);
        byte[] bArr8 = new byte[i2];
        this.f30272if.init(true, new gr0(m33877this(bArr6)));
        int i10 = 0;
        while (true) {
            int i11 = i10 * blockSize;
            if (i11 >= i2) {
                return bArr8;
            }
            this.f30272if.processBlock(bArr7, 0, bArr7, 0);
            int i12 = i2 - i11;
            if (i12 > blockSize) {
                i12 = blockSize;
            }
            System.arraycopy(bArr7, 0, bArr8, i11, i12);
            i10++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m33875new(byte[] bArr) throws IllegalStateException, tw, IllegalArgumentException {
        m33876try(m33874if(q3.m6367default(m33865break(), bArr), this.f30273new), this.f30267case, this.f30269else);
        this.f30271goto = 1L;
    }

    /* renamed from: try, reason: not valid java name */
    private void m33876try(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, tw, IllegalArgumentException {
        int length = bArr.length;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[this.f30272if.getBlockSize()];
        int blockSize = this.f30272if.getBlockSize();
        this.f30272if.init(true, new gr0(m33877this(bArr2)));
        int i = 0;
        while (true) {
            int i2 = i * blockSize;
            if (i2 >= bArr.length) {
                m33866case(bArr4, bArr, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr4, bArr2.length, bArr3, 0, bArr3.length);
                return;
            } else {
                m33871else(bArr3);
                this.f30272if.processBlock(bArr3, 0, bArr5, 0);
                int i3 = length - i2;
                if (i3 > blockSize) {
                    i3 = blockSize;
                }
                System.arraycopy(bArr5, 0, bArr4, i2, i3);
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArrM33874if;
        boolean z2 = this.f30274this;
        long j = this.f30271goto;
        if (z2) {
            if (j > f30262break) {
                return -1;
            }
            if (Ctry.m33893new(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else {
            if (j > f30263catch) {
                return -1;
            }
            if (Ctry.m33893new(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z) {
            m33875new(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            bArrM33874if = m33874if(bArr2, this.f30273new);
            m33876try(bArrM33874if, this.f30267case, this.f30269else);
        } else {
            bArrM33874if = new byte[this.f30273new / 8];
        }
        int length = this.f30269else.length;
        byte[] bArr3 = new byte[length];
        this.f30272if.init(true, new gr0(m33877this(this.f30267case)));
        for (int i = 0; i <= bArr.length / length; i++) {
            int i2 = i * length;
            int length2 = bArr.length - i2 > length ? length : bArr.length - (this.f30269else.length * i);
            if (length2 != 0) {
                m33871else(this.f30269else);
                this.f30272if.processBlock(this.f30269else, 0, bArr3, 0);
                System.arraycopy(bArr3, 0, bArr, i2, length2);
            }
        }
        m33876try(bArrM33874if, this.f30267case, this.f30269else);
        this.f30271goto++;
        return bArr.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this.f30269else.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) throws IllegalStateException, tw, IllegalArgumentException {
        m33875new(bArr);
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m33877this(byte[] bArr) {
        if (!this.f30274this) {
            return bArr;
        }
        byte[] bArr2 = new byte[24];
        m33869const(bArr, 0, bArr2, 0);
        m33869const(bArr, 7, bArr2, 8);
        m33869const(bArr, 14, bArr2, 16);
        return bArr2;
    }
}
