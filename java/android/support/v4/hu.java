package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public class hu implements DerivationParameters {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f2508do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f2509for;

    /* renamed from: if, reason: not valid java name */
    private int f2510if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f2511new;

    public hu(Ccatch ccatch, int i, byte[] bArr) {
        this(ccatch, i, bArr, null);
    }

    public hu(Ccatch ccatch, int i, byte[] bArr, byte[] bArr2) {
        this.f2508do = ccatch;
        this.f2510if = i;
        this.f2509for = bArr;
        this.f2511new = bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    public Ccatch m3123do() {
        return this.f2508do;
    }

    /* renamed from: for, reason: not valid java name */
    public int m3124for() {
        return this.f2510if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m3125if() {
        return this.f2511new;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m3126new() {
        return this.f2509for;
    }
}
