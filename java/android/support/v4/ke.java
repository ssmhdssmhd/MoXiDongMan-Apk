package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.Cdo;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;

/* loaded from: classes3.dex */
public class ke implements Mac {

    /* renamed from: case, reason: not valid java name */
    private int f3370case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f3371do;

    /* renamed from: for, reason: not valid java name */
    private int f3372for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f3373if;

    /* renamed from: new, reason: not valid java name */
    private BlockCipher f3374new;

    /* renamed from: try, reason: not valid java name */
    private BlockCipherPadding f3375try;

    public ke(BlockCipher blockCipher) {
        this(blockCipher, (blockCipher.getBlockSize() * 8) / 2, null);
    }

    public ke(BlockCipher blockCipher, int i) {
        this(blockCipher, i, null);
    }

    public ke(BlockCipher blockCipher, int i, BlockCipherPadding blockCipherPadding) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.f3374new = new Cdo(blockCipher);
        this.f3375try = blockCipherPadding;
        this.f3370case = i / 8;
        this.f3371do = new byte[blockCipher.getBlockSize()];
        this.f3373if = new byte[blockCipher.getBlockSize()];
        this.f3372for = 0;
    }

    public ke(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this(blockCipher, (blockCipher.getBlockSize() * 8) / 2, blockCipherPadding);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        int blockSize = this.f3374new.getBlockSize();
        if (this.f3375try == null) {
            while (true) {
                int i2 = this.f3372for;
                if (i2 >= blockSize) {
                    break;
                }
                this.f3373if[i2] = 0;
                this.f3372for = i2 + 1;
            }
        } else {
            if (this.f3372for == blockSize) {
                this.f3374new.processBlock(this.f3373if, 0, this.f3371do, 0);
                this.f3372for = 0;
            }
            this.f3375try.addPadding(this.f3373if, this.f3372for);
        }
        this.f3374new.processBlock(this.f3373if, 0, this.f3371do, 0);
        System.arraycopy(this.f3371do, 0, bArr, i, this.f3370case);
        reset();
        return this.f3370case;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f3374new.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f3370case;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.f3374new.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f3373if;
            if (i >= bArr.length) {
                this.f3372for = 0;
                this.f3374new.reset();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        int i = this.f3372for;
        byte[] bArr = this.f3373if;
        if (i == bArr.length) {
            this.f3374new.processBlock(bArr, 0, this.f3371do, 0);
            this.f3372for = 0;
        }
        byte[] bArr2 = this.f3373if;
        int i2 = this.f3372for;
        this.f3372for = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.f3374new.getBlockSize();
        int i3 = this.f3372for;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, this.f3373if, i3, i4);
            this.f3374new.processBlock(this.f3373if, 0, this.f3371do, 0);
            this.f3372for = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                this.f3374new.processBlock(bArr, i, this.f3371do, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, this.f3373if, this.f3372for, i2);
        this.f3372for += i2;
    }
}
