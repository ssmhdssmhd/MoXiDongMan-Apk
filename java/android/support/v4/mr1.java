package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;

/* loaded from: classes3.dex */
public class mr1 implements Mac {

    /* renamed from: do, reason: not valid java name */
    private Digest f4017do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f4018for;

    /* renamed from: if, reason: not valid java name */
    private int f4019if;

    /* renamed from: new, reason: not valid java name */
    private static final byte f4015new = 54;

    /* renamed from: case, reason: not valid java name */
    public static final byte[] f4013case = m4989do(f4015new, 48);

    /* renamed from: try, reason: not valid java name */
    private static final byte f4016try = 92;

    /* renamed from: else, reason: not valid java name */
    public static final byte[] f4014else = m4989do(f4016try, 48);

    public mr1(Digest digest) {
        this.f4017do = digest;
        this.f4019if = digest.getDigestSize() == 20 ? 40 : 48;
    }

    /* renamed from: do, reason: not valid java name */
    private static byte[] m4989do(byte b, int i) {
        byte[] bArr = new byte[i];
        q3.c(bArr, b);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        int digestSize = this.f4017do.getDigestSize();
        byte[] bArr2 = new byte[digestSize];
        this.f4017do.doFinal(bArr2, 0);
        Digest digest = this.f4017do;
        byte[] bArr3 = this.f4018for;
        digest.update(bArr3, 0, bArr3.length);
        this.f4017do.update(f4014else, 0, this.f4019if);
        this.f4017do.update(bArr2, 0, digestSize);
        int iDoFinal = this.f4017do.doFinal(bArr, i);
        reset();
        return iDoFinal;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f4017do.getAlgorithmName() + "/SSL3MAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f4017do.getDigestSize();
    }

    /* renamed from: if, reason: not valid java name */
    public Digest m4990if() {
        return this.f4017do;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.f4018for = q3.m6371final(((gr0) cipherParameters).m2770do());
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f4017do.reset();
        Digest digest = this.f4017do;
        byte[] bArr = this.f4018for;
        digest.update(bArr, 0, bArr.length);
        this.f4017do.update(f4013case, 0, this.f4019if);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) {
        this.f4017do.update(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        this.f4017do.update(bArr, i, i2);
    }
}
