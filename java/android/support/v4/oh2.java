package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.prng.EntropySource;

/* loaded from: classes3.dex */
public class oh2 {

    /* renamed from: break, reason: not valid java name */
    private static final int f4617break = 4096;

    /* renamed from: catch, reason: not valid java name */
    private static final int f4618catch = 262144;

    /* renamed from: goto, reason: not valid java name */
    private static final long f4619goto = 32768;

    /* renamed from: this, reason: not valid java name */
    private static final long f4620this = 8388608;

    /* renamed from: case, reason: not valid java name */
    private byte[] f4621case;

    /* renamed from: do, reason: not valid java name */
    private final BlockCipher f4622do;

    /* renamed from: else, reason: not valid java name */
    private long f4623else = 1;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f4624for;

    /* renamed from: if, reason: not valid java name */
    private final EntropySource f4625if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f4626new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f4627try;

    public oh2(BlockCipher blockCipher, byte[] bArr, EntropySource entropySource) {
        this.f4622do = blockCipher;
        this.f4625if = entropySource;
        byte[] bArr2 = new byte[blockCipher.getBlockSize()];
        this.f4624for = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f4626new = new byte[blockCipher.getBlockSize()];
        this.f4627try = new byte[blockCipher.getBlockSize()];
    }

    /* renamed from: for, reason: not valid java name */
    private void m5651for(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b = (byte) (bArr[length] + 1);
            bArr[length] = b;
            if (b != 0) {
                return;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m5652new(byte[] bArr, int i) {
        return bArr != null && bArr.length > i;
    }

    /* renamed from: try, reason: not valid java name */
    private void m5653try(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, tw {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) (bArr2[i] ^ bArr3[i]);
        }
        this.f4622do.processBlock(bArr, 0, bArr, 0);
    }

    /* renamed from: case, reason: not valid java name */
    public void m5654case() {
        byte[] entropy = this.f4625if.getEntropy();
        this.f4621case = entropy;
        if (entropy.length != this.f4622do.getBlockSize()) {
            throw new IllegalStateException("Insufficient entropy returned");
        }
        this.f4623else = 1L;
    }

    /* renamed from: do, reason: not valid java name */
    public int m5655do(byte[] bArr, boolean z) throws IllegalStateException, tw {
        if (this.f4627try.length == 8) {
            if (this.f4623else > 32768) {
                return -1;
            }
            if (m5652new(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else {
            if (this.f4623else > f4620this) {
                return -1;
            }
            if (m5652new(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z || this.f4621case == null) {
            byte[] entropy = this.f4625if.getEntropy();
            this.f4621case = entropy;
            if (entropy.length != this.f4622do.getBlockSize()) {
                throw new IllegalStateException("Insufficient entropy returned");
            }
        }
        int length = bArr.length / this.f4627try.length;
        for (int i = 0; i < length; i++) {
            this.f4622do.processBlock(this.f4624for, 0, this.f4626new, 0);
            m5653try(this.f4627try, this.f4626new, this.f4621case);
            m5653try(this.f4621case, this.f4627try, this.f4626new);
            byte[] bArr2 = this.f4627try;
            System.arraycopy(bArr2, 0, bArr, bArr2.length * i, bArr2.length);
            m5651for(this.f4624for);
        }
        int length2 = bArr.length - (this.f4627try.length * length);
        if (length2 > 0) {
            this.f4622do.processBlock(this.f4624for, 0, this.f4626new, 0);
            m5653try(this.f4627try, this.f4626new, this.f4621case);
            m5653try(this.f4621case, this.f4627try, this.f4626new);
            byte[] bArr3 = this.f4627try;
            System.arraycopy(bArr3, 0, bArr, length * bArr3.length, length2);
            m5651for(this.f4624for);
        }
        this.f4623else++;
        return bArr.length;
    }

    /* renamed from: if, reason: not valid java name */
    public EntropySource m5656if() {
        return this.f4625if;
    }
}
