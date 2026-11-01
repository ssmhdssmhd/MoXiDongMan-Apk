package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.functions.Cdo;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.flowable.FlowablePublishClassic;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class oq<T> extends Cfor<T> {
    /* JADX WARN: Multi-variable type inference failed */
    private oq<T> Q7() {
        if (!(this instanceof FlowablePublishClassic)) {
            return this;
        }
        FlowablePublishClassic flowablePublishClassic = (FlowablePublishClassic) this;
        return jp1.c(new io.reactivex.internal.operators.flowable.s0(flowablePublishClassic.publishSource(), flowablePublishClassic.publishBufferSize()));
    }

    @b41
    public Cfor<T> L7() {
        return M7(1);
    }

    @b41
    public Cfor<T> M7(int i) {
        return N7(i, Cdo.m29427goto());
    }

    @b41
    public Cfor<T> N7(int i, @b41 Consumer<? super Disposable> consumer) {
        if (i > 0) {
            return jp1.h(new tc0(this, i, consumer));
        }
        P7(consumer);
        return jp1.c(this);
    }

    public final Disposable O7() {
        io.reactivex.internal.util.Cfor cfor = new io.reactivex.internal.util.Cfor();
        P7(cfor);
        return cfor.f27439do;
    }

    public abstract void P7(@b41 Consumer<? super Disposable> consumer);

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public Cfor<T> R7() {
        return jp1.h(new io.reactivex.internal.operators.flowable.a1(Q7()));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> S7(int i) {
        return U7(i, 0L, TimeUnit.NANOSECONDS, io.reactivex.schedulers.Cdo.m29773this());
    }

    @cs1(cs1.G5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> T7(int i, long j, TimeUnit timeUnit) {
        return U7(i, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.F5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> U7(int i, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29470goto(i, "subscriberCount");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new io.reactivex.internal.operators.flowable.a1(Q7(), i, j, timeUnit, ctry));
    }

    @cs1(cs1.G5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> V7(long j, TimeUnit timeUnit) {
        return U7(1, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.F5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> W7(long j, TimeUnit timeUnit, Ctry ctry) {
        return U7(1, j, timeUnit, ctry);
    }
}
