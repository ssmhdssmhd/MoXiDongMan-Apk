package android.support.v4;

/* loaded from: classes3.dex */
public final class pi1 extends a4 {

    /* renamed from: for, reason: not valid java name */
    private byte[] f4986for;

    /* renamed from: if, reason: not valid java name */
    private int f4987if;

    public pi1(int i, byte[] bArr) {
        super(true);
        if (bArr.length != ri1.m6995if(i)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.f4987if = i;
        this.f4986for = q3.m6371final(bArr);
    }

    /* renamed from: for, reason: not valid java name */
    public int m6080for() {
        return this.f4987if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m6081if() {
        return q3.m6371final(this.f4986for);
    }
}
