package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class sq0 extends Cif {

    /* renamed from: class, reason: not valid java name */
    private static final long f6224class = 135;

    /* renamed from: const, reason: not valid java name */
    private static final long f6225const = 1061;

    /* renamed from: final, reason: not valid java name */
    private static final long f6226final = 293;

    /* renamed from: break, reason: not valid java name */
    private final long[] f6227break;

    /* renamed from: catch, reason: not valid java name */
    private int f6228catch;

    /* renamed from: else, reason: not valid java name */
    private final int f6229else;

    /* renamed from: goto, reason: not valid java name */
    private final long f6230goto;

    /* renamed from: this, reason: not valid java name */
    private final long[] f6231this;

    public sq0(BlockCipher blockCipher) {
        this.f29894new = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.f6229else = blockSize;
        this.f6230goto = m7548catch(blockSize);
        this.f6231this = new long[blockSize >>> 3];
        this.f6227break = new long[blockSize >>> 3];
        this.f6228catch = -1;
    }

    /* renamed from: break, reason: not valid java name */
    private static void m7547break(long j, long[] jArr) {
        long j2 = 0;
        int i = 0;
        while (i < jArr.length) {
            long j3 = jArr[i];
            jArr[i] = j2 ^ (j3 << 1);
            i++;
            j2 = j3 >>> 63;
        }
        jArr[0] = (j & (-j2)) ^ jArr[0];
    }

    /* renamed from: catch, reason: not valid java name */
    public static long m7548catch(int i) {
        if (i == 16) {
            return f6224class;
        }
        if (i == 32) {
            return f6225const;
        }
        if (i == 64) {
            return f6226final;
        }
        throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
    }

    /* renamed from: class, reason: not valid java name */
    private void m7549class(byte[] bArr, int i, byte[] bArr2, int i2) throws IllegalStateException, tw {
        int i3 = this.f6228catch;
        if (i3 == -1) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.f6228catch = i3 + 1;
        m7547break(this.f6230goto, this.f6227break);
        byte[] bArr3 = new byte[this.f6229else];
        ib1.m3365package(this.f6227break, bArr3, 0);
        int i4 = this.f6229else;
        byte[] bArr4 = new byte[i4];
        System.arraycopy(bArr3, 0, bArr4, 0, i4);
        for (int i5 = 0; i5 < this.f6229else; i5++) {
            bArr4[i5] = (byte) (bArr4[i5] ^ bArr[i + i5]);
        }
        this.f29894new.processBlock(bArr4, 0, bArr4, 0);
        for (int i6 = 0; i6 < this.f6229else; i6++) {
            bArr2[i2 + i6] = (byte) (bArr4[i6] ^ bArr3[i6]);
        }
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: case, reason: not valid java name */
    public void mo7550case(boolean z, CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("Invalid parameters passed");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        CipherParameters cipherParametersM515if = bc1Var.m515if();
        byte[] bArrM514do = bc1Var.m514do();
        int length = bArrM514do.length;
        int i = this.f6229else;
        if (length != i) {
            throw new IllegalArgumentException("Currently only support IVs of exactly one block");
        }
        byte[] bArr = new byte[i];
        System.arraycopy(bArrM514do, 0, bArr, 0, i);
        this.f29894new.init(true, cipherParametersM515if);
        this.f29894new.processBlock(bArr, 0, bArr, 0);
        this.f29894new.init(z, cipherParametersM515if);
        ib1.m3363native(bArr, 0, this.f6231this);
        long[] jArr = this.f6231this;
        System.arraycopy(jArr, 0, this.f6227break, 0, jArr.length);
        this.f6228catch = 0;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: do, reason: not valid java name */
    public int mo7551do(byte[] bArr, int i) {
        mo7555this();
        return 0;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: else, reason: not valid java name */
    public int mo7552else(byte b, byte[] bArr, int i) {
        throw new IllegalStateException("unsupported operation");
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: for, reason: not valid java name */
    public int mo7553for(int i) {
        return i;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: goto, reason: not valid java name */
    public int mo7554goto(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, tw {
        if (bArr.length - i < i2) {
            throw new tw("Input buffer too short");
        }
        if (bArr2.length - i < i2) {
            throw new f91("Output buffer too short");
        }
        if (i2 % this.f6229else != 0) {
            throw new IllegalArgumentException("Partial blocks not supported");
        }
        int i4 = 0;
        while (i4 < i2) {
            m7549class(bArr, i + i4, bArr2, i3 + i4);
            i4 += this.f6229else;
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: this, reason: not valid java name */
    public void mo7555this() {
        this.f29894new.reset();
        long[] jArr = this.f6231this;
        System.arraycopy(jArr, 0, this.f6227break, 0, jArr.length);
        this.f6228catch = 0;
    }

    @Override // org.bouncycastle.crypto.Cif
    /* renamed from: try, reason: not valid java name */
    public int mo7556try(int i) {
        return i;
    }
}
