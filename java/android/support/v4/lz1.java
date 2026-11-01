package android.support.v4;

import java.util.concurrent.atomic.AtomicInteger;
import rx.Producer;

/* loaded from: classes4.dex */
public final class lz1<T> extends AtomicInteger implements Producer {
    public static final int HAS_REQUEST_HAS_VALUE = 3;
    public static final int HAS_REQUEST_NO_VALUE = 2;
    public static final int NO_REQUEST_HAS_VALUE = 1;
    public static final int NO_REQUEST_NO_VALUE = 0;
    private static final long serialVersionUID = -2873467947112093874L;
    public final y22<? super T> child;
    public T value;

    public lz1(y22<? super T> y22Var) {
        this.child = y22Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    private static <T> void m4812do(y22<? super T> y22Var, T t) {
        if (y22Var.isUnsubscribed()) {
            return;
        }
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

    @Override // rx.Producer
    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (j == 0) {
            return;
        }
        do {
            int i = get();
            if (i != 0) {
                if (i == 1 && compareAndSet(1, 3)) {
                    m4812do(this.child, this.value);
                    return;
                }
                return;
            }
        } while (!compareAndSet(0, 2));
    }

    public void setValue(T t) {
        do {
            int i = get();
            if (i != 0) {
                if (i == 2 && compareAndSet(2, 3)) {
                    m4812do(this.child, t);
                    return;
                }
                return;
            }
            this.value = t;
        } while (!compareAndSet(0, 1));
    }
}
