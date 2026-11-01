package android.support.v4;

import com.uc.crashsdk.export.LogType;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.Cdo;
import org.bouncycastle.crypto.paddings.Cif;

/* loaded from: classes3.dex */
public class ue implements Mac {

    /* renamed from: case, reason: not valid java name */
    private BlockCipher f6846case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f6847do;

    /* renamed from: else, reason: not valid java name */
    private int f6848else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f6849for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f6850goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f6851if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f6852new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f6853this;

    /* renamed from: try, reason: not valid java name */
    private int f6854try;

    public ue(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public ue(BlockCipher blockCipher, int i) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        if (i > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("MAC size must be less or equal to " + (blockCipher.getBlockSize() * 8));
        }
        this.f6846case = new Cdo(blockCipher);
        this.f6848else = i / 8;
        this.f6847do = m8398if(blockCipher.getBlockSize());
        this.f6849for = new byte[blockCipher.getBlockSize()];
        this.f6852new = new byte[blockCipher.getBlockSize()];
        this.f6851if = new byte[blockCipher.getBlockSize()];
        this.f6854try = 0;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m8396do(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int i = (-m8397for(bArr, bArr2)) & 255;
        int length = bArr.length - 3;
        byte b = bArr2[length];
        byte[] bArr3 = this.f6847do;
        bArr2[length] = (byte) (b ^ (bArr3[1] & i));
        int length2 = bArr.length - 2;
        bArr2[length2] = (byte) ((bArr3[2] & i) ^ bArr2[length2]);
        int length3 = bArr.length - 1;
        bArr2[length3] = (byte) ((i & bArr3[3]) ^ bArr2[length3]);
        return bArr2;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m8397for(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            int i2 = bArr[length] & 255;
            bArr2[length] = (byte) (i | (i2 << 1));
            i = (i2 >>> 7) & 1;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static byte[] m8398if(int i) {
        int i2 = i * 8;
        int i3 = 135;
        switch (i2) {
            case 64:
            case 320:
                i3 = 27;
                break;
            case 128:
            case 192:
                break;
            case 160:
                i3 = 45;
                break;
            case 224:
                i3 = 777;
                break;
            case 256:
                i3 = 1061;
                break;
            case 384:
                i3 = 4109;
                break;
            case 448:
                i3 = 2129;
                break;
            case 512:
                i3 = 293;
                break;
            case LogType.UNEXP_OTHER /* 768 */:
                i3 = 655377;
                break;
            case 1024:
                i3 = 524355;
                break;
            case 2048:
                i3 = 548865;
                break;
            default:
                throw new IllegalArgumentException("Unknown block size for CMAC: " + i2);
        }
        return ib1.m3360goto(i3);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        byte[] bArr2;
        if (this.f6854try == this.f6846case.getBlockSize()) {
            bArr2 = this.f6850goto;
        } else {
            new Cif().addPadding(this.f6852new, this.f6854try);
            bArr2 = this.f6853this;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr3 = this.f6849for;
            if (i2 >= bArr3.length) {
                this.f6846case.processBlock(this.f6852new, 0, bArr3, 0);
                System.arraycopy(this.f6849for, 0, bArr, i, this.f6848else);
                reset();
                return this.f6848else;
            }
            byte[] bArr4 = this.f6852new;
            bArr4[i2] = (byte) (bArr4[i2] ^ bArr2[i2]);
            i2++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f6846case.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f6848else;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        mo8399new(cipherParameters);
        this.f6846case.init(true, cipherParameters);
        byte[] bArr = this.f6851if;
        byte[] bArr2 = new byte[bArr.length];
        this.f6846case.processBlock(bArr, 0, bArr2, 0);
        byte[] bArrM8396do = m8396do(bArr2);
        this.f6850goto = bArrM8396do;
        this.f6853this = m8396do(bArrM8396do);
        reset();
    }

    /* renamed from: new, reason: not valid java name */
    public void mo8399new(CipherParameters cipherParameters) {
        if (cipherParameters != null && !(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("CMac mode only permits key to be set.");
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f6852new;
            if (i >= bArr.length) {
                this.f6854try = 0;
                this.f6846case.reset();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        int i = this.f6854try;
        byte[] bArr = this.f6852new;
        if (i == bArr.length) {
            this.f6846case.processBlock(bArr, 0, this.f6849for, 0);
            this.f6854try = 0;
        }
        byte[] bArr2 = this.f6852new;
        int i2 = this.f6854try;
        this.f6854try = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.f6846case.getBlockSize();
        int i3 = this.f6854try;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, this.f6852new, i3, i4);
            this.f6846case.processBlock(this.f6852new, 0, this.f6849for, 0);
            this.f6854try = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                this.f6846case.processBlock(bArr, i, this.f6849for, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, this.f6852new, this.f6854try, i2);
        this.f6854try += i2;
    }
}
