package android.support.v4;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Producer;
import rx.internal.util.atomic.Ctry;
import rx.internal.util.unsafe.Cabstract;
import rx.internal.util.unsafe.Cimplements;

/* loaded from: classes4.dex */
public final class vi1<T> extends AtomicLong implements Producer {
    public static final Object NULL_SENTINEL = new Object();
    private static final long serialVersionUID = 7277121710709137047L;
    public final y22<? super T> child;
    public final Queue<Object> queue;
    public final AtomicInteger wip;

    public vi1(y22<? super T> y22Var) {
        this(y22Var, Cimplements.m38984case() ? new Cabstract() : new Ctry());
    }

    /* renamed from: do, reason: not valid java name */
    private void m8870do() {
        Object objPoll;
        if (this.wip.getAndIncrement() == 0) {
            y22<? super T> y22Var = this.child;
            Queue<Object> queue = this.queue;
            while (!y22Var.isUnsubscribed()) {
                this.wip.lazySet(1);
                long j = get();
                long j2 = 0;
                while (j != 0 && (objPoll = queue.poll()) != null) {
                    try {
                        if (objPoll == NULL_SENTINEL) {
                            y22Var.onNext(null);
                        } else {
                            y22Var.onNext(objPoll);
                        }
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        j--;
                        j2++;
                    } catch (Throwable th) {
                        if (objPoll == NULL_SENTINEL) {
                            objPoll = null;
                        }
                        s80.m7300this(th, y22Var, objPoll);
                        return;
                    }
                }
                if (j2 != 0 && get() != Long.MAX_VALUE) {
                    addAndGet(-j2);
                }
                if (this.wip.decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    public boolean offer(T t) {
        if (t == null) {
            if (!this.queue.offer(NULL_SENTINEL)) {
                return false;
            }
        } else if (!this.queue.offer(t)) {
            return false;
        }
        m8870do();
        return true;
    }

    @Override // rx.Producer
    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (j > 0) {
            u6.m8259if(this, j);
            m8870do();
        }
    }

    public vi1(y22<? super T> y22Var, Queue<Object> queue) {
        this.child = y22Var;
        this.queue = queue;
        this.wip = new AtomicInteger();
    }
}
