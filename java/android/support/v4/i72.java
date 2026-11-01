package android.support.v4;

/* loaded from: classes4.dex */
public final class i72<T> {

    /* renamed from: do, reason: not valid java name */
    private final long f2642do;

    /* renamed from: if, reason: not valid java name */
    private final T f2643if;

    public i72(long j, T t) {
        this.f2643if = t;
        this.f2642do = j;
    }

    /* renamed from: do, reason: not valid java name */
    public long m3305do() {
        return this.f2642do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i72)) {
            return false;
        }
        i72 i72Var = (i72) obj;
        if (this.f2642do == i72Var.f2642do) {
            T t = this.f2643if;
            T t2 = i72Var.f2643if;
            if (t == t2) {
                return true;
            }
            if (t != null && t.equals(t2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.f2642do;
        int i = (((int) (j ^ (j >>> 32))) + 31) * 31;
        T t = this.f2643if;
        return i + (t == null ? 0 : t.hashCode());
    }

    /* renamed from: if, reason: not valid java name */
    public T m3306if() {
        return this.f2643if;
    }

    public String toString() {
        return String.format("Timestamped(timestampMillis = %d, value = %s)", Long.valueOf(this.f2642do), this.f2643if.toString());
    }
}
