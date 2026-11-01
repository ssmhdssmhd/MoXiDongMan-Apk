package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.observable.ObservablePublishClassic;
import io.reactivex.internal.util.Cfor;
import io.reactivex.schedulers.Cdo;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract class pq<T> extends Cnew<T> {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    private pq<T> m6168case() {
        return this instanceof ObservablePublishClassic ? jp1.d(new io.reactivex.internal.operators.observable.l0(((ObservablePublishClassic) this).publishSource())) : this;
    }

    @cs1(cs1.F5)
    @gl
    /* renamed from: break, reason: not valid java name */
    public final Cnew<T> m6169break(int i, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29470goto(i, "subscriberCount");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new io.reactivex.internal.operators.observable.s0(m6168case(), i, j, timeUnit, ctry));
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: catch, reason: not valid java name */
    public final Cnew<T> m6170catch(long j, TimeUnit timeUnit) {
        return m6169break(1, j, timeUnit, Cdo.m29767do());
    }

    @cs1(cs1.F5)
    @gl
    /* renamed from: class, reason: not valid java name */
    public final Cnew<T> m6171class(long j, TimeUnit timeUnit, Ctry ctry) {
        return m6169break(1, j, timeUnit, ctry);
    }

    @b41
    /* renamed from: do, reason: not valid java name */
    public Cnew<T> m6172do() {
        return m6176if(1);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: else, reason: not valid java name */
    public Cnew<T> m6173else() {
        return jp1.i(new io.reactivex.internal.operators.observable.s0(m6168case()));
    }

    @b41
    /* renamed from: for, reason: not valid java name */
    public Cnew<T> m6174for(int i, @b41 Consumer<? super Disposable> consumer) {
        if (i > 0) {
            return jp1.i(new x51(this, i, consumer));
        }
        mo6179try(consumer);
        return jp1.d(this);
    }

    @cs1("none")
    @gl
    /* renamed from: goto, reason: not valid java name */
    public final Cnew<T> m6175goto(int i) {
        return m6169break(i, 0L, TimeUnit.NANOSECONDS, Cdo.m29773this());
    }

    @b41
    /* renamed from: if, reason: not valid java name */
    public Cnew<T> m6176if(int i) {
        return m6174for(i, io.reactivex.internal.functions.Cdo.m29427goto());
    }

    /* renamed from: new, reason: not valid java name */
    public final Disposable m6177new() {
        Cfor cfor = new Cfor();
        mo6179try(cfor);
        return cfor.f27439do;
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: this, reason: not valid java name */
    public final Cnew<T> m6178this(int i, long j, TimeUnit timeUnit) {
        return m6169break(i, j, timeUnit, Cdo.m29767do());
    }

    /* renamed from: try, reason: not valid java name */
    public abstract void mo6179try(@b41 Consumer<? super Disposable> consumer);
}
