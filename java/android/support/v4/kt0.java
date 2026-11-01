package android.support.v4;

import com.google.common.util.concurrent.Cwhile;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

@li0
/* loaded from: classes2.dex */
public class kt0<V> extends FutureTask<V> implements ListenableFuture<V> {

    /* renamed from: do, reason: not valid java name */
    private final Cwhile f3482do;

    public kt0(Callable<V> callable) {
        super(callable);
        this.f3482do = new Cwhile();
    }

    /* renamed from: do, reason: not valid java name */
    public static <V> kt0<V> m4510do(Runnable runnable, @b51 V v) {
        return new kt0<>(runnable, v);
    }

    /* renamed from: if, reason: not valid java name */
    public static <V> kt0<V> m4511if(Callable<V> callable) {
        return new kt0<>(callable);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.f3482do.m18389do(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        this.f3482do.m18390if();
    }

    public kt0(Runnable runnable, @b51 V v) {
        super(runnable, v);
        this.f3482do = new Cwhile();
    }
}
