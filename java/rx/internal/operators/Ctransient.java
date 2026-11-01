package rx.internal.operators;

import android.R;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;

/* renamed from: rx.internal.operators.transient, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ctransient<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final T[] f35440do;

    /* renamed from: rx.internal.operators.transient$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = 3534218984725836979L;
        public final T[] array;
        public final y22<? super T> child;
        public int index;

        public Cdo(y22<? super T> y22Var, T[] tArr) {
            this.child = y22Var;
            this.array = tArr;
        }

        public void fastPath() {
            y22<? super T> y22Var = this.child;
            for (R.bool boolVar : this.array) {
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                y22Var.onNext(boolVar);
            }
            if (y22Var.isUnsubscribed()) {
                return;
            }
            y22Var.onCompleted();
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            if (j == Long.MAX_VALUE) {
                if (u6.m8259if(this, j) == 0) {
                    fastPath();
                }
            } else {
                if (j == 0 || u6.m8259if(this, j) != 0) {
                    return;
                }
                slowPath(j);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        
            r10.index = r3;
            r11 = addAndGet(r6);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            y22<? super T> y22Var = this.child;
            T[] tArr = this.array;
            int length = tArr.length;
            int i = this.index;
            do {
                long j2 = 0;
                while (true) {
                    if (j == 0 || i == length) {
                        j = get() + j2;
                        if (j == 0) {
                            break;
                        }
                    } else {
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        y22Var.onNext(tArr[i]);
                        i++;
                        if (i == length) {
                            if (y22Var.isUnsubscribed()) {
                                return;
                            }
                            y22Var.onCompleted();
                            return;
                        }
                        j--;
                        j2--;
                    }
                }
            } while (j != 0);
        }
    }

    public Ctransient(T[] tArr) {
        this.f35440do = tArr;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        y22Var.setProducer(new Cdo(y22Var, this.f35440do));
    }
}
