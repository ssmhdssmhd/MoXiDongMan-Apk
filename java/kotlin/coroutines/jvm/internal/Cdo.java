package kotlin.coroutines.jvm.internal;

import android.support.v4.bq;
import android.support.v4.e7;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.z41;
import com.umeng.analytics.pro.d;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b!\u0018\u00002\u00020\u0001B#\u0012\u0010\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000f\u0010\u0010B\u001b\b\u0016\u0012\u0010\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\u0011J\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0014R \u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0007R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lkotlin/coroutines/jvm/internal/do;", "Landroid/support/v4/e7;", "Lkotlin/coroutines/Continuation;", "", "intercepted", "Landroid/support/v4/ub2;", "releaseIntercepted", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/CoroutineContext;", "_context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", d.R, "completion", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V", "(Lkotlin/coroutines/Continuation;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.jvm.internal.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends e7 {
    private final CoroutineContext _context;
    private transient Continuation<Object> intercepted;

    public Cdo(@z41 Continuation<Object> continuation, @z41 CoroutineContext coroutineContext) {
        super(continuation);
        this._context = coroutineContext;
    }

    @Override // kotlin.coroutines.Continuation
    @m41
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        Csuper.m30672const(coroutineContext);
        return coroutineContext;
    }

    @m41
    public final Continuation<Object> intercepted() {
        Continuation<Object> continuationInterceptContinuation = this.intercepted;
        if (continuationInterceptContinuation == null) {
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) getContext().get(ContinuationInterceptor.Key);
            if (continuationInterceptor == null || (continuationInterceptContinuation = continuationInterceptor.interceptContinuation(this)) == null) {
                continuationInterceptContinuation = this;
            }
            this.intercepted = continuationInterceptContinuation;
        }
        return continuationInterceptContinuation;
    }

    @Override // android.support.v4.e7
    public void releaseIntercepted() {
        Continuation<?> continuation = this.intercepted;
        if (continuation != null && continuation != this) {
            CoroutineContext.Element element = getContext().get(ContinuationInterceptor.Key);
            Csuper.m30672const(element);
            ((ContinuationInterceptor) element).releaseInterceptedContinuation(continuation);
        }
        this.intercepted = bq.f506do;
    }

    public Cdo(@z41 Continuation<Object> continuation) {
        this(continuation, continuation != null ? continuation.getContext() : null);
    }
}
