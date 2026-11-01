package android.support.v4;

/* loaded from: classes2.dex */
public class pw {

    /* renamed from: do, reason: not valid java name */
    private final int f5204do;

    /* renamed from: if, reason: not valid java name */
    private final int f5205if;

    public pw(int i, int i2) {
        this.f5204do = i;
        this.f5205if = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m6229do() {
        return this.f5205if;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof pw)) {
            return false;
        }
        pw pwVar = (pw) obj;
        return this.f5204do == pwVar.f5204do && this.f5205if == pwVar.f5205if;
    }

    public final int hashCode() {
        return this.f5204do ^ this.f5205if;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m6230if() {
        return this.f5204do;
    }

    public final String toString() {
        return this.f5204do + "(" + this.f5205if + ')';
    }
}
