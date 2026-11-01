package android.support.v4;

/* loaded from: classes3.dex */
public final class qi1 extends a4 {

    /* renamed from: for, reason: not valid java name */
    private byte[] f5432for;

    /* renamed from: if, reason: not valid java name */
    private int f5433if;

    public qi1(int i, byte[] bArr) {
        super(false);
        if (bArr.length != ri1.m6994for(i)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.f5433if = i;
        this.f5432for = q3.m6371final(bArr);
    }

    /* renamed from: for, reason: not valid java name */
    public int m6603for() {
        return this.f5433if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m6604if() {
        return q3.m6371final(this.f5432for);
    }
}
