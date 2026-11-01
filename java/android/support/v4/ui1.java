package android.support.v4;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observer;
import rx.Producer;
import rx.internal.util.atomic.Ctry;
import rx.internal.util.unsafe.Cabstract;
import rx.internal.util.unsafe.Cimplements;

/* loaded from: classes4.dex */
public final class ui1<T> extends AtomicLong implements Producer, Observer<T> {
    public static final Object NULL_SENTINEL = new Object();
    private static final long serialVersionUID = 7277121710709137047L;
    public final y22<? super T> child;
    public volatile boolean done;
    public Throwable error;
    public final Queue<Object> queue;
    public final AtomicInteger wip;

    public ui1(y22<? super T> y22Var) {
        this(y22Var, Cimplements.m38984case() ? new Cabstract() : new Ctry());
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m8459do(boolean z, boolean z2) {
        if (this.child.isUnsubscribed()) {
            return true;
        }
        if (!z) {
            return false;
        }
        Throwable th = this.error;
        if (th != null) {
            this.queue.clear();
            this.child.onError(th);
            return true;
        }
        if (!z2) {
            return false;
        }
        this.child.onCompleted();
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private void m8460if() {
        if (this.wip.getAndIncrement() == 0) {
            y22<? super T> y22Var = this.child;
            Queue<Object> queue = this.queue;
            while (!m8459do(this.done, queue.isEmpty())) {
                this.wip.lazySet(1);
                long j = get();
                long j2 = 0;
                while (j != 0) {
                    boolean z = this.done;
                    Object objPoll = queue.poll();
                    if (m8459do(z, objPoll == null)) {
                        return;
                    }
                    if (objPoll == null) {
                        break;
                    }
                    try {
                        if (objPoll == NULL_SENTINEL) {
                            y22Var.onNext(null);
                        } else {
                            y22Var.onNext(objPoll);
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
        m8460if();
        return true;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.done = true;
        m8460if();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        m8460if();
    }

    @Override // rx.Observer
    public void onNext(T t) {
        if (offer(t)) {
            return;
        }
        onError(new zz0());
    }

    @Override // rx.Producer
    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (j > 0) {
            u6.m8259if(this, j);
            m8460if();
        }
    }

    public ui1(y22<? super T> y22Var, Queue<Object> queue) {
        this.child = y22Var;
        this.queue = queue;
        this.wip = new AtomicInteger();
    }
}
