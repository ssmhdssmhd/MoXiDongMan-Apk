package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.y7;
import io.reactivex.Cnew;
import io.reactivex.Observer;

/* loaded from: classes3.dex */
public final class n0 extends Cnew<Integer> {

    /* renamed from: do, reason: not valid java name */
    private final int f26730do;

    /* renamed from: if, reason: not valid java name */
    private final long f26731if;

    /* renamed from: io.reactivex.internal.operators.observable.n0$do, reason: invalid class name */
    public static final class Cdo extends y7<Integer> {
        private static final long serialVersionUID = 396518478098735504L;
        public final Observer<? super Integer> downstream;
        public final long end;
        public boolean fused;
        public long index;

        public Cdo(Observer<? super Integer> observer, long j, long j2) {
            this.downstream = observer;
            this.index = j;
            this.end = j2;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.index = this.end;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.index == this.end;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.fused = true;
            return 1;
        }

        public void run() {
            if (this.fused) {
                return;
            }
            Observer<? super Integer> observer = this.downstream;
            long j = this.end;
            for (long j2 = this.index; j2 != j && get() == 0; j2++) {
                observer.onNext(Integer.valueOf((int) j2));
            }
            if (get() == 0) {
                lazySet(1);
                observer.onComplete();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public Integer poll() throws Exception {
            long j = this.index;
            if (j != this.end) {
                this.index = 1 + j;
                return Integer.valueOf((int) j);
            }
            lazySet(1);
            return null;
        }
    }

    public n0(int i, int i2) {
        this.f26730do = i;
        this.f26731if = i + i2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Integer> observer) {
        Cdo cdo = new Cdo(observer, this.f26730do, this.f26731if);
        observer.onSubscribe(cdo);
        cdo.run();
    }
}
