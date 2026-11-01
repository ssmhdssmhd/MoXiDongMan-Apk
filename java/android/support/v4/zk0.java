package android.support.v4;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class zk0 implements AlgorithmParameterSpec {

    /* renamed from: case, reason: not valid java name */
    private boolean f8584case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f8585do;

    /* renamed from: for, reason: not valid java name */
    private int f8586for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f8587if;

    /* renamed from: new, reason: not valid java name */
    private int f8588new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f8589try;

    public zk0(byte[] bArr, byte[] bArr2, int i) {
        this(bArr, bArr2, i, -1, null, false);
    }

    public zk0(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        this(bArr, bArr2, i, i2, bArr3, false);
    }

    public zk0(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3, boolean z) {
        if (bArr != null) {
            byte[] bArr4 = new byte[bArr.length];
            this.f8585do = bArr4;
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        } else {
            this.f8585do = null;
        }
        if (bArr2 != null) {
            byte[] bArr5 = new byte[bArr2.length];
            this.f8587if = bArr5;
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
        } else {
            this.f8587if = null;
        }
        this.f8586for = i;
        this.f8588new = i2;
        this.f8589try = q3.m6371final(bArr3);
        this.f8584case = z;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10227case() {
        return this.f8584case;
    }

    /* renamed from: do, reason: not valid java name */
    public int m10228do() {
        return this.f8588new;
    }

    /* renamed from: else, reason: not valid java name */
    public void m10229else(boolean z) {
        this.f8584case = z;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m10230for() {
        return q3.m6371final(this.f8587if);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m10231if() {
        return q3.m6371final(this.f8585do);
    }

    /* renamed from: new, reason: not valid java name */
    public int m10232new() {
        return this.f8586for;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m10233try() {
        return q3.m6371final(this.f8589try);
    }
}
