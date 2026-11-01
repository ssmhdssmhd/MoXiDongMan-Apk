package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;

/* loaded from: classes4.dex */
public final class f implements Observable.OnSubscribe<Integer> {

    /* renamed from: do, reason: not valid java name */
    private final int f34721do;

    /* renamed from: if, reason: not valid java name */
    private final int f34722if;

    /* renamed from: rx.internal.operators.f$do, reason: invalid class name */
    public static final class Cdo extends AtomicLong implements Producer {
        private static final long serialVersionUID = 4114392207069098388L;
        private final y22<? super Integer> childSubscriber;
        private long currentIndex;
        private final int endOfRange;

        public Cdo(y22<? super Integer> y22Var, int i, int i2) {
            this.childSubscriber = y22Var;
            this.currentIndex = i;
            this.endOfRange = i2;
        }

        public void fastPath() {
            long j = this.endOfRange + 1;
            y22<? super Integer> y22Var = this.childSubscriber;
            for (long j2 = this.currentIndex; j2 != j; j2++) {
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                y22Var.onNext(Integer.valueOf((int) j2));
            }
            if (y22Var.isUnsubscribed()) {
                return;
            }
            y22Var.onCompleted();
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

        /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
        
            r12.currentIndex = r4;
            r13 = addAndGet(-r9);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            long j2 = this.endOfRange + 1;
            long j3 = this.currentIndex;
            y22<? super Integer> y22Var = this.childSubscriber;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == j || j3 == j2) {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        if (j3 == j2) {
                            y22Var.onCompleted();
                            return;
                        } else {
                            j = get();
                            if (j == j4) {
                                break;
                            }
                        }
                    } else {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        y22Var.onNext(Integer.valueOf((int) j3));
                        j3++;
                        j4++;
                    }
                }
            } while (j != 0);
        }
    }

    public f(int i, int i2) {
        this.f34721do = i;
        this.f34722if = i2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super Integer> y22Var) {
        y22Var.setProducer(new Cdo(y22Var, this.f34721do, this.f34722if));
    }
}
