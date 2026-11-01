package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.Cdo;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;

/* loaded from: classes3.dex */
public class jl0 implements Mac {

    /* renamed from: case, reason: not valid java name */
    private int f3134case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f3135do;

    /* renamed from: else, reason: not valid java name */
    private gr0 f3136else;

    /* renamed from: for, reason: not valid java name */
    private int f3137for;

    /* renamed from: goto, reason: not valid java name */
    private gr0 f3138goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f3139if;

    /* renamed from: new, reason: not valid java name */
    private BlockCipher f3140new;

    /* renamed from: try, reason: not valid java name */
    private BlockCipherPadding f3141try;

    public jl0(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8, null);
    }

    public jl0(BlockCipher blockCipher, int i) {
        this(blockCipher, i, null);
    }

    public jl0(BlockCipher blockCipher, int i, BlockCipherPadding blockCipherPadding) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        if (!(blockCipher instanceof rt)) {
            throw new IllegalArgumentException("cipher must be instance of DESEngine");
        }
        this.f3140new = new Cdo(blockCipher);
        this.f3141try = blockCipherPadding;
        this.f3134case = i / 8;
        this.f3135do = new byte[blockCipher.getBlockSize()];
        this.f3139if = new byte[blockCipher.getBlockSize()];
        this.f3137for = 0;
    }

    public jl0(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this(blockCipher, blockCipher.getBlockSize() * 8, blockCipherPadding);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        int blockSize = this.f3140new.getBlockSize();
        if (this.f3141try == null) {
            while (true) {
                int i2 = this.f3137for;
                if (i2 >= blockSize) {
                    break;
                }
                this.f3139if[i2] = 0;
                this.f3137for = i2 + 1;
            }
        } else {
            if (this.f3137for == blockSize) {
                this.f3140new.processBlock(this.f3139if, 0, this.f3135do, 0);
                this.f3137for = 0;
            }
            this.f3141try.addPadding(this.f3139if, this.f3137for);
        }
        this.f3140new.processBlock(this.f3139if, 0, this.f3135do, 0);
        rt rtVar = new rt();
        rtVar.init(false, this.f3136else);
        byte[] bArr2 = this.f3135do;
        rtVar.processBlock(bArr2, 0, bArr2, 0);
        rtVar.init(true, this.f3138goto);
        byte[] bArr3 = this.f3135do;
        rtVar.processBlock(bArr3, 0, bArr3, 0);
        System.arraycopy(this.f3135do, 0, bArr, i, this.f3134case);
        reset();
        return this.f3134case;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "ISO9797Alg3";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f3134case;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        gr0 gr0Var;
        reset();
        boolean z = cipherParameters instanceof gr0;
        if (!z && !(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("params must be an instance of KeyParameter or ParametersWithIV");
        }
        byte[] bArrM2770do = (z ? (gr0) cipherParameters : (gr0) ((bc1) cipherParameters).m515if()).m2770do();
        if (bArrM2770do.length == 16) {
            gr0Var = new gr0(bArrM2770do, 0, 8);
            this.f3136else = new gr0(bArrM2770do, 8, 8);
            this.f3138goto = gr0Var;
        } else {
            if (bArrM2770do.length != 24) {
                throw new IllegalArgumentException("Key must be either 112 or 168 bit long");
            }
            gr0Var = new gr0(bArrM2770do, 0, 8);
            this.f3136else = new gr0(bArrM2770do, 8, 8);
            this.f3138goto = new gr0(bArrM2770do, 16, 8);
        }
        if (cipherParameters instanceof bc1) {
            this.f3140new.init(true, new bc1(gr0Var, ((bc1) cipherParameters).m514do()));
        } else {
            this.f3140new.init(true, gr0Var);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f3139if;
            if (i >= bArr.length) {
                this.f3137for = 0;
                this.f3140new.reset();
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        int i = this.f3137for;
        byte[] bArr = this.f3139if;
        if (i == bArr.length) {
            this.f3140new.processBlock(bArr, 0, this.f3135do, 0);
            this.f3137for = 0;
        }
        byte[] bArr2 = this.f3139if;
        int i2 = this.f3137for;
        this.f3137for = i2 + 1;
        bArr2[i2] = b;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.f3140new.getBlockSize();
        int i3 = this.f3137for;
        int i4 = blockSize - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, this.f3139if, i3, i4);
            this.f3140new.processBlock(this.f3139if, 0, this.f3135do, 0);
            this.f3137for = 0;
            i2 -= i4;
            i += i4;
            while (i2 > blockSize) {
                this.f3140new.processBlock(bArr, i, this.f3135do, 0);
                i2 -= blockSize;
                i += blockSize;
            }
        }
        System.arraycopy(bArr, i, this.f3139if, this.f3137for, i2);
        this.f3137for += i2;
    }
}
