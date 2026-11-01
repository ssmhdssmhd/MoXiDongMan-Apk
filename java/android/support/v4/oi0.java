package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public class oi0 implements DerivationParameters {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f4629do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f4630for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f4631if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f4632new;

    private oi0(byte[] bArr, boolean z, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            throw new IllegalArgumentException("IKM (input keying material) should not be null");
        }
        this.f4629do = q3.m6371final(bArr);
        this.f4631if = z;
        if (bArr2 == null || bArr2.length == 0) {
            this.f4630for = null;
        } else {
            this.f4630for = q3.m6371final(bArr2);
        }
        if (bArr3 == null) {
            this.f4632new = new byte[0];
        } else {
            this.f4632new = q3.m6371final(bArr3);
        }
    }

    public oi0(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this(bArr, false, bArr2, bArr3);
    }

    /* renamed from: case, reason: not valid java name */
    public static oi0 m5657case(byte[] bArr, byte[] bArr2) {
        return new oi0(bArr, true, null, bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public static oi0 m5658do(byte[] bArr) {
        return new oi0(bArr, false, null, null);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m5659for() {
        return q3.m6371final(this.f4632new);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m5660if() {
        return q3.m6371final(this.f4629do);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5661new() {
        return q3.m6371final(this.f4630for);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m5662try() {
        return this.f4631if;
    }
}
