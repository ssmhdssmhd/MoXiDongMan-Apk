package rx;

/* renamed from: rx.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo<T> {

    /* renamed from: new, reason: not valid java name */
    private static final Cdo<Void> f34353new = new Cdo<>(EnumC0503do.OnCompleted, null, null);

    /* renamed from: do, reason: not valid java name */
    private final EnumC0503do f34354do;

    /* renamed from: for, reason: not valid java name */
    private final T f34355for;

    /* renamed from: if, reason: not valid java name */
    private final Throwable f34356if;

    /* renamed from: rx.do$do, reason: invalid class name and collision with other inner class name */
    public enum EnumC0503do {
        OnNext,
        OnError,
        OnCompleted
    }

    private Cdo(EnumC0503do enumC0503do, T t, Throwable th) {
        this.f34355for = t;
        this.f34356if = th;
        this.f34354do = enumC0503do;
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public static <T> Cdo<T> m38309for(Class<T> cls) {
        return (Cdo<T>) f34353new;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Cdo<T> m38310if() {
        return (Cdo<T>) f34353new;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Cdo<T> m38311new(Throwable th) {
        return new Cdo<>(EnumC0503do.OnError, null, th);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Cdo<T> m38312try(T t) {
        return new Cdo<>(EnumC0503do.OnNext, t, null);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m38313break() {
        return m38317const() && this.f34355for != null;
    }

    /* renamed from: case, reason: not valid java name */
    public EnumC0503do m38314case() {
        return this.f34354do;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m38315catch() {
        return m38314case() == EnumC0503do.OnCompleted;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m38316class() {
        return m38314case() == EnumC0503do.OnError;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m38317const() {
        return m38314case() == EnumC0503do.OnNext;
    }

    /* renamed from: do, reason: not valid java name */
    public void m38318do(Observer<? super T> observer) {
        EnumC0503do enumC0503do = this.f34354do;
        if (enumC0503do == EnumC0503do.OnNext) {
            observer.onNext(m38320goto());
        } else if (enumC0503do == EnumC0503do.OnCompleted) {
            observer.onCompleted();
        } else {
            observer.onError(m38319else());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public Throwable m38319else() {
        return this.f34356if;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj.getClass() != Cdo.class) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        if (cdo.m38314case() != m38314case()) {
            return false;
        }
        T t = this.f34355for;
        T t2 = cdo.f34355for;
        if (t != t2 && (t == null || !t.equals(t2))) {
            return false;
        }
        Throwable th = this.f34356if;
        Throwable th2 = cdo.f34356if;
        return th == th2 || (th != null && th.equals(th2));
    }

    /* renamed from: goto, reason: not valid java name */
    public T m38320goto() {
        return this.f34355for;
    }

    public int hashCode() {
        int iHashCode = m38314case().hashCode();
        if (m38313break()) {
            iHashCode = (iHashCode * 31) + m38320goto().hashCode();
        }
        return m38321this() ? (iHashCode * 31) + m38319else().hashCode() : iHashCode;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m38321this() {
        return m38316class() && this.f34356if != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append('[');
        sb.append(super.toString());
        sb.append(' ');
        sb.append(m38314case());
        if (m38313break()) {
            sb.append(' ');
            sb.append(m38320goto());
        }
        if (m38321this()) {
            sb.append(' ');
            sb.append(m38319else().getMessage());
        }
        sb.append(']');
        return sb.toString();
    }
}
