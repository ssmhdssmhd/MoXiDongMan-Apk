package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public final class iq0 implements DerivationParameters {

    /* renamed from: try, reason: not valid java name */
    private static final int f2821try = 32;

    /* renamed from: do, reason: not valid java name */
    private final byte[] f2822do;

    /* renamed from: for, reason: not valid java name */
    private final int f2823for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f2824if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f2825new;

    private iq0(byte[] bArr, byte[] bArr2, int i, boolean z) {
        if (bArr == null) {
            throw new IllegalArgumentException("A KDF requires Ki (a seed) as input");
        }
        this.f2822do = q3.m6371final(bArr);
        if (bArr2 == null) {
            this.f2825new = new byte[0];
        } else {
            this.f2825new = q3.m6371final(bArr2);
        }
        if (i != 8 && i != 16 && i != 24 && i != 32) {
            throw new IllegalArgumentException("Length of counter should be 8, 16, 24 or 32");
        }
        this.f2823for = i;
        this.f2824if = z;
    }

    /* renamed from: do, reason: not valid java name */
    public static iq0 m3541do(byte[] bArr, byte[] bArr2, int i) {
        return new iq0(bArr, bArr2, i, true);
    }

    /* renamed from: if, reason: not valid java name */
    public static iq0 m3542if(byte[] bArr, byte[] bArr2) {
        return new iq0(bArr, bArr2, 32, false);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m3543case() {
        return this.f2824if;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m3544for() {
        return q3.m6371final(this.f2825new);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m3545new() {
        return this.f2822do;
    }

    /* renamed from: try, reason: not valid java name */
    public int m3546try() {
        return this.f2823for;
    }
}
