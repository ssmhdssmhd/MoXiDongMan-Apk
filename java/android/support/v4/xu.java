package android.support.v4;

/* loaded from: classes3.dex */
public class xu {

    /* renamed from: do, reason: not valid java name */
    private byte[] f8023do;

    /* renamed from: if, reason: not valid java name */
    private int f8024if;

    public xu(byte[] bArr, int i) {
        this.f8023do = q3.m6371final(bArr);
        this.f8024if = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m9567do() {
        return this.f8024if;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof xu)) {
            return false;
        }
        xu xuVar = (xu) obj;
        if (xuVar.f8024if != this.f8024if) {
            return false;
        }
        return q3.m6362case(this.f8023do, xuVar.f8023do);
    }

    public int hashCode() {
        return this.f8024if ^ q3.n(this.f8023do);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m9568if() {
        return q3.m6371final(this.f8023do);
    }
}
