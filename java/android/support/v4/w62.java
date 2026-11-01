package android.support.v4;

/* loaded from: classes4.dex */
public class w62<T> {

    /* renamed from: do, reason: not valid java name */
    private final long f7401do;

    /* renamed from: if, reason: not valid java name */
    private final T f7402if;

    public w62(long j, T t) {
        this.f7402if = t;
        this.f7401do = j;
    }

    /* renamed from: do, reason: not valid java name */
    public long m9057do() {
        return this.f7401do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        w62 w62Var = (w62) obj;
        if (this.f7401do != w62Var.f7401do) {
            return false;
        }
        T t = this.f7402if;
        if (t == null) {
            if (w62Var.f7402if != null) {
                return false;
            }
        } else if (!t.equals(w62Var.f7402if)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.f7401do;
        int i = (((int) (j ^ (j >>> 32))) + 31) * 31;
        T t = this.f7402if;
        return i + (t == null ? 0 : t.hashCode());
    }

    /* renamed from: if, reason: not valid java name */
    public T m9058if() {
        return this.f7402if;
    }

    public String toString() {
        return "TimeInterval [intervalInMilliseconds=" + this.f7401do + ", value=" + this.f7402if + "]";
    }
}
