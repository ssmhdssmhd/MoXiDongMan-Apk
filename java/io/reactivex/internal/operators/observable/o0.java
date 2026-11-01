package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.y7;
import io.reactivex.Cnew;
import io.reactivex.Observer;

/* loaded from: classes3.dex */
public final class o0 extends Cnew<Long> {

    /* renamed from: do, reason: not valid java name */
    private final long f26767do;

    /* renamed from: if, reason: not valid java name */
    private final long f26768if;

    /* renamed from: io.reactivex.internal.operators.observable.o0$do, reason: invalid class name */
    public static final class Cdo extends y7<Long> {
        private static final long serialVersionUID = 396518478098735504L;
        public final Observer<? super Long> downstream;
        public final long end;
        public boolean fused;
        public long index;

        public Cdo(Observer<? super Long> observer, long j, long j2) {
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
            Observer<? super Long> observer = this.downstream;
            long j = this.end;
            for (long j2 = this.index; j2 != j && get() == 0; j2++) {
                observer.onNext(Long.valueOf(j2));
            }
            if (get() == 0) {
                lazySet(1);
                observer.onComplete();
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public Long poll() throws Exception {
            long j = this.index;
            if (j != this.end) {
                this.index = 1 + j;
                return Long.valueOf(j);
            }
            lazySet(1);
            return null;
        }
    }

    public o0(long j, long j2) {
        this.f26767do = j;
        this.f26768if = j2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Long> observer) {
        long j = this.f26767do;
        Cdo cdo = new Cdo(observer, j, j + this.f26768if);
        observer.onSubscribe(cdo);
        cdo.run();
    }
}
