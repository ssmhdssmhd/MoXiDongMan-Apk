package android.support.v4;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Producer;

/* loaded from: classes4.dex */
public final class yz1<T> extends AtomicBoolean implements Producer {
    private static final long serialVersionUID = -3353584923995471404L;
    public final y22<? super T> child;
    public final T value;

    public yz1(y22<? super T> y22Var, T t) {
        this.child = y22Var;
        this.value = t;
    }

    @Override // rx.Producer
    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (j != 0 && compareAndSet(false, true)) {
            y22<? super T> y22Var = this.child;
            if (y22Var.isUnsubscribed()) {
                return;
            }
            T t = this.value;
            try {
                y22Var.onNext(t);
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                y22Var.onCompleted();
            } catch (Throwable th) {
                s80.m7300this(th, y22Var, t);
            }
        }
    }
}
