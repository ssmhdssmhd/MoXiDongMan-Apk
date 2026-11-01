package android.support.v4;

/* loaded from: classes2.dex */
public final class cc0 {

    /* renamed from: do, reason: not valid java name */
    private final int f727do;

    /* renamed from: for, reason: not valid java name */
    private final yn1[] f728for;

    /* renamed from: if, reason: not valid java name */
    private final int[] f729if;

    public cc0(int i, int[] iArr, int i2, int i3, int i4) {
        this.f727do = i;
        this.f729if = iArr;
        float f = i4;
        this.f728for = new yn1[]{new yn1(i2, f), new yn1(i3, f)};
    }

    /* renamed from: do, reason: not valid java name */
    public yn1[] m843do() {
        return this.f728for;
    }

    public boolean equals(Object obj) {
        return (obj instanceof cc0) && this.f727do == ((cc0) obj).f727do;
    }

    /* renamed from: for, reason: not valid java name */
    public int m844for() {
        return this.f727do;
    }

    public int hashCode() {
        return this.f727do;
    }

    /* renamed from: if, reason: not valid java name */
    public int[] m845if() {
        return this.f729if;
    }
}
