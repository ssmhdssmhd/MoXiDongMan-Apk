package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;

/* renamed from: rx.internal.operators.implements, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cimplements<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends T> f34930do;

    /* renamed from: rx.internal.operators.implements$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -8730475647105475802L;
        private final Iterator<? extends T> it;
        private final y22<? super T> o;

        public Cdo(y22<? super T> y22Var, Iterator<? extends T> it) {
            this.o = y22Var;
            this.it = it;
        }

        public void fastPath() {
            y22<? super T> y22Var = this.o;
            Iterator<? extends T> it = this.it;
            while (!y22Var.isUnsubscribed()) {
                try {
                    y22Var.onNext(it.next());
                    if (y22Var.isUnsubscribed()) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (y22Var.isUnsubscribed()) {
                                return;
                            }
                            y22Var.onCompleted();
                            return;
                        }
                    } catch (Throwable th) {
                        s80.m7297goto(th, y22Var);
                        return;
                    }
                } catch (Throwable th2) {
                    s80.m7297goto(th2, y22Var);
                    return;
                }
            }
        }

        @Override // rx.Producer
        public void request(long j) {
            if (get() == Long.MAX_VALUE) {
                return;
            }
            if (j == Long.MAX_VALUE && compareAndSet(0L, Long.MAX_VALUE)) {
                fastPath();
            } else {
                if (j <= 0 || u6.m8259if(this, j) != 0) {
                    return;
                }
                slowPath(j);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
        
            r9 = android.support.v4.u6.m8261this(r8, r4);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            y22<? super T> y22Var = this.o;
            Iterator<? extends T> it = this.it;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        j = get();
                        if (j2 == j) {
                            break;
                        }
                    } else {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        try {
                            y22Var.onNext(it.next());
                            if (y22Var.isUnsubscribed()) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (y22Var.isUnsubscribed()) {
                                        return;
                                    }
                                    y22Var.onCompleted();
                                    return;
                                }
                                j2++;
                            } catch (Throwable th) {
                                s80.m7297goto(th, y22Var);
                                return;
                            }
                        } catch (Throwable th2) {
                            s80.m7297goto(th2, y22Var);
                            return;
                        }
                    }
                }
            } while (j != 0);
        }
    }

    public Cimplements(Iterable<? extends T> iterable) {
        Objects.requireNonNull(iterable, "iterable must not be null");
        this.f34930do = iterable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        try {
            Iterator<? extends T> it = this.f34930do.iterator();
            boolean zHasNext = it.hasNext();
            if (y22Var.isUnsubscribed()) {
                return;
            }
            if (zHasNext) {
                y22Var.setProducer(new Cdo(y22Var, it));
            } else {
                y22Var.onCompleted();
            }
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
        }
    }
}
