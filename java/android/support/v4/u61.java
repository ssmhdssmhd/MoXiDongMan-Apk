package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes3.dex */
public class u61 implements Mac {

    /* renamed from: case, reason: not valid java name */
    private static final byte f6775case = 54;

    /* renamed from: else, reason: not valid java name */
    private static final byte f6776else = 92;

    /* renamed from: try, reason: not valid java name */
    private static final int f6777try = 64;

    /* renamed from: do, reason: not valid java name */
    private Digest f6778do;

    /* renamed from: if, reason: not valid java name */
    private int f6780if;

    /* renamed from: for, reason: not valid java name */
    private byte[] f6779for = new byte[64];

    /* renamed from: new, reason: not valid java name */
    private byte[] f6781new = new byte[64];

    public u61(Digest digest) {
        this.f6778do = digest;
        this.f6780if = digest.getDigestSize();
    }

    /* renamed from: do, reason: not valid java name */
    public Digest m8263do() {
        return this.f6778do;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        int i2 = this.f6780if;
        byte[] bArr2 = new byte[i2];
        this.f6778do.doFinal(bArr2, 0);
        Digest digest = this.f6778do;
        byte[] bArr3 = this.f6781new;
        digest.update(bArr3, 0, bArr3.length);
        this.f6778do.update(bArr2, 0, i2);
        int iDoFinal = this.f6778do.doFinal(bArr, i);
        reset();
        return iDoFinal;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f6778do.getAlgorithmName() + "/HMAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f6780if;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.f6778do.reset();
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        if (bArrM2770do.length <= 64) {
            System.arraycopy(bArrM2770do, 0, this.f6779for, 0, bArrM2770do.length);
            int length = bArrM2770do.length;
            while (true) {
                byte[] bArr = this.f6779for;
                if (length >= bArr.length) {
                    break;
                }
                bArr[length] = 0;
                length++;
            }
        } else {
            this.f6778do.update(bArrM2770do, 0, bArrM2770do.length);
            this.f6778do.doFinal(this.f6779for, 0);
            int i = this.f6780if;
            while (true) {
                byte[] bArr2 = this.f6779for;
                if (i >= bArr2.length) {
                    break;
                }
                bArr2[i] = 0;
                i++;
            }
        }
        byte[] bArr3 = this.f6779for;
        byte[] bArr4 = new byte[bArr3.length];
        this.f6781new = bArr4;
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        int i2 = 0;
        while (true) {
            byte[] bArr5 = this.f6779for;
            if (i2 >= bArr5.length) {
                break;
            }
            bArr5[i2] = (byte) (bArr5[i2] ^ f6775case);
            i2++;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr6 = this.f6781new;
            if (i3 >= bArr6.length) {
                Digest digest = this.f6778do;
                byte[] bArr7 = this.f6779for;
                digest.update(bArr7, 0, bArr7.length);
                return;
            }
            bArr6[i3] = (byte) (bArr6[i3] ^ f6776else);
            i3++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f6778do.reset();
        Digest digest = this.f6778do;
        byte[] bArr = this.f6779for;
        digest.update(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) {
        this.f6778do.update(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        this.f6778do.update(bArr, i, i2);
    }
}
