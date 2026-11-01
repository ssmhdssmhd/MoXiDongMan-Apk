package android.support.v4;

/* loaded from: classes3.dex */
public class ij1 extends gr0 {

    /* renamed from: if, reason: not valid java name */
    private int f2792if;

    public ij1(byte[] bArr) {
        this(bArr, bArr.length > 128 ? 1024 : bArr.length * 8);
    }

    public ij1(byte[] bArr, int i) {
        super(bArr);
        this.f2792if = i;
    }

    /* renamed from: if, reason: not valid java name */
    public int m3472if() {
        return this.f2792if;
    }
}
