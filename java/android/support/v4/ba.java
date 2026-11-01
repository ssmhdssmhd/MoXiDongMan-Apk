package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.Cdo;

/* loaded from: classes3.dex */
public class ba implements Mac {

    /* renamed from: do, reason: not valid java name */
    private byte[] f388do;

    /* renamed from: for, reason: not valid java name */
    private int f389for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f390if;

    /* renamed from: new, reason: not valid java name */
    private BlockCipher f391new;

    /* renamed from: try, reason: not valid java name */
    private int f392try;

    public ba(BlockCipher blockCipher) {
        this(blockCipher, (blockCipher.getBlockSize() * 8) / 2);
    }

    public ba(BlockCipher blockCipher, int i) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.f391new = new Cdo(blockCipher);
        this.f392try = i / 8;
        this.f388do = new byte[blockCipher.getBlockSize()];
        this.f390if = new byte[blockCipher.getBlockSize()];
        this.f389for = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        int blockSize = this.f391new.getBlockSize();
        while (true) {
            int i2 = this.f389for;
            if (i2 >= blockSize) {
                this.f391new.processBlock(this.f390if, 0, this.f388do, 0);
                System.arraycopy(this.f388do, 0, bArr, i, this.f392try);
                reset();
                return this.f392try;
            }
            this.f390if[i2] = 0;
            this.f389for = i2 + 1;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f391new.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f392try;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.f391new.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f390if;
            if (i >= bArr.length) {
                this.f389for = 0;
                this.f391new.reset();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        int i = this.f389for;
        byte[] bArr = this.f390if;
        if (i == bArr.length) {
            this.f391new.processBlock(bArr, 0, this.f388do, 0);
            this.f389for = 0;
        }
        byte[] bArr2 = this.f390if;
        int i2 = this.f389for;
        this.f389for = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.f391new.getBlockSize();
        int i3 = this.f389for;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, this.f390if, i3, i4);
            this.f391new.processBlock(this.f390if, 0, this.f388do, 0);
            this.f389for = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                this.f391new.processBlock(bArr, i, this.f388do, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, this.f390if, this.f389for, i2);
        this.f389for += i2;
    }
}
