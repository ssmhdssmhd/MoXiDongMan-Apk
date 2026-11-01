package android.support.v4;

import com.google.common.util.concurrent.Cthrows;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

@lf
@li0
/* loaded from: classes2.dex */
public abstract class xd0 extends Cthrows implements ListeningExecutorService {
    @Override // com.google.common.util.concurrent.Cthrows
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract ListeningExecutorService delegate();

    @Override // com.google.common.util.concurrent.Cthrows, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.ListeningExecutorService
    public /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override // com.google.common.util.concurrent.Cthrows, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.ListeningExecutorService
    public <T> ListenableFuture<T> submit(Callable<T> callable) {
        return delegate().submit((Callable) callable);
    }

    @Override // com.google.common.util.concurrent.Cthrows, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.ListeningExecutorService
    public ListenableFuture<?> submit(Runnable runnable) {
        return delegate().submit(runnable);
    }

    @Override // com.google.common.util.concurrent.Cthrows, java.util.concurrent.ExecutorService, com.google.common.util.concurrent.ListeningExecutorService
    public <T> ListenableFuture<T> submit(Runnable runnable, T t) {
        return delegate().submit(runnable, (Runnable) t);
    }
}
