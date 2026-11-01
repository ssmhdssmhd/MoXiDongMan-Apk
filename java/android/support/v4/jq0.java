package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public final class jq0 implements DerivationParameters {

    /* renamed from: case, reason: not valid java name */
    private static final int f3196case = -1;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f3197do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f3198for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f3199if;

    /* renamed from: new, reason: not valid java name */
    private final int f3200new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f3201try;

    private jq0(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, boolean z) {
        if (bArr == null) {
            throw new IllegalArgumentException("A KDF requires Ki (a seed) as input");
        }
        this.f3197do = q3.m6371final(bArr);
        if (bArr3 == null) {
            this.f3201try = new byte[0];
        } else {
            this.f3201try = q3.m6371final(bArr3);
        }
        this.f3200new = i;
        if (bArr2 == null) {
            this.f3199if = new byte[0];
        } else {
            this.f3199if = q3.m6371final(bArr2);
        }
        this.f3198for = z;
    }

    /* renamed from: do, reason: not valid java name */
    public static jq0 m4063do(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        if (i == 8 || i == 16 || i == 24 || i == 32) {
            return new jq0(bArr, bArr2, bArr3, i, true);
        }
        throw new IllegalArgumentException("Length of counter should be 8, 16, 24 or 32");
    }

    /* renamed from: if, reason: not valid java name */
    public static jq0 m4064if(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return new jq0(bArr, bArr2, bArr3, -1, false);
    }

    /* renamed from: case, reason: not valid java name */
    public int m4065case() {
        return this.f3200new;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m4066else() {
        return this.f3198for;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m4067for() {
        return q3.m6371final(this.f3201try);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m4068new() {
        return this.f3199if;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m4069try() {
        return this.f3197do;
    }
}
