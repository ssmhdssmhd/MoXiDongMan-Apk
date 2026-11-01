package android.support.v4;

/* loaded from: classes3.dex */
public class hd2 {

    /* renamed from: do, reason: not valid java name */
    public int[] f2382do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f2383if;

    public hd2(int[] iArr, byte[] bArr) {
        if (iArr == null || iArr.length < 1 || iArr.length >= 32768) {
            throw new IllegalArgumentException("'protectionProfiles' must have length from 1 to (2^15 - 1)");
        }
        if (bArr == null) {
            bArr = org.bouncycastle.crypto.tls.l0.f30675do;
        } else if (bArr.length > 255) {
            throw new IllegalArgumentException("'mki' cannot be longer than 255 bytes");
        }
        this.f2382do = iArr;
        this.f2383if = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m2993do() {
        return this.f2383if;
    }

    /* renamed from: if, reason: not valid java name */
    public int[] m2994if() {
        return this.f2382do;
    }
}
