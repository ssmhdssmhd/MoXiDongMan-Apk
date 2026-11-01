package android.support.v4;

import io.reactivex.internal.functions.Cif;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class e72<T> {

    /* renamed from: do, reason: not valid java name */
    public final T f1279do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f1280for;

    /* renamed from: if, reason: not valid java name */
    public final long f1281if;

    public e72(@b41 T t, long j, @b41 TimeUnit timeUnit) {
        this.f1279do = t;
        this.f1281if = j;
        this.f1280for = (TimeUnit) Cif.m29468else(timeUnit, "unit is null");
    }

    /* renamed from: do, reason: not valid java name */
    public long m1676do() {
        return this.f1281if;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e72)) {
            return false;
        }
        e72 e72Var = (e72) obj;
        return Cif.m29469for(this.f1279do, e72Var.f1279do) && this.f1281if == e72Var.f1281if && Cif.m29469for(this.f1280for, e72Var.f1280for);
    }

    @b41
    /* renamed from: for, reason: not valid java name */
    public TimeUnit m1677for() {
        return this.f1280for;
    }

    public int hashCode() {
        T t = this.f1279do;
        int iHashCode = t != null ? t.hashCode() : 0;
        long j = this.f1281if;
        return (((iHashCode * 31) + ((int) (j ^ (j >>> 31)))) * 31) + this.f1280for.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public long m1678if(@b41 TimeUnit timeUnit) {
        return timeUnit.convert(this.f1281if, this.f1280for);
    }

    @b41
    /* renamed from: new, reason: not valid java name */
    public T m1679new() {
        return this.f1279do;
    }

    public String toString() {
        return "Timed[time=" + this.f1281if + ", unit=" + this.f1280for + ", value=" + this.f1279do + "]";
    }
}
