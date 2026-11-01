package android.support.v4;

import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.util.Cbreak;

/* loaded from: classes3.dex */
public final class t41<T> {

    /* renamed from: if, reason: not valid java name */
    public static final t41<Object> f6417if = new t41<>(null);

    /* renamed from: do, reason: not valid java name */
    public final Object f6418do;

    private t41(Object obj) {
        this.f6418do = obj;
    }

    @b41
    /* renamed from: do, reason: not valid java name */
    public static <T> t41<T> m7720do() {
        return (t41<T>) f6417if;
    }

    @b41
    /* renamed from: for, reason: not valid java name */
    public static <T> t41<T> m7721for(@b41 T t) {
        Cif.m29468else(t, "value is null");
        return new t41<>(t);
    }

    @b41
    /* renamed from: if, reason: not valid java name */
    public static <T> t41<T> m7722if(@b41 Throwable th) {
        Cif.m29468else(th, "error is null");
        return new t41<>(Cbreak.error(th));
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m7723case() {
        return this.f6418do == null;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m7724else() {
        return Cbreak.isError(this.f6418do);
    }

    public boolean equals(Object obj) {
        if (obj instanceof t41) {
            return Cif.m29469for(this.f6418do, ((t41) obj).f6418do);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m7725goto() {
        Object obj = this.f6418do;
        return (obj == null || Cbreak.isError(obj)) ? false : true;
    }

    public int hashCode() {
        Object obj = this.f6418do;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    @a51
    /* renamed from: new, reason: not valid java name */
    public Throwable m7726new() {
        Object obj = this.f6418do;
        if (Cbreak.isError(obj)) {
            return Cbreak.getError(obj);
        }
        return null;
    }

    public String toString() {
        Object obj = this.f6418do;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (Cbreak.isError(obj)) {
            return "OnErrorNotification[" + Cbreak.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f6418do + "]";
    }

    @a51
    /* renamed from: try, reason: not valid java name */
    public T m7727try() {
        Object obj = this.f6418do;
        if (obj == null || Cbreak.isError(obj)) {
            return null;
        }
        return (T) this.f6418do;
    }
}
