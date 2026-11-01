package io.reactivex.internal.operators.single;

import android.support.v4.a51;
import android.support.v4.t80;
import android.support.v4.y7;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;

/* renamed from: io.reactivex.internal.operators.single.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27156do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends Iterable<? extends R>> f27157if;

    /* renamed from: io.reactivex.internal.operators.single.default$do, reason: invalid class name */
    public static final class Cdo<T, R> extends y7<R> implements SingleObserver<T> {
        private static final long serialVersionUID = -8938804753851907758L;
        public volatile boolean cancelled;
        public final Observer<? super R> downstream;
        public volatile Iterator<? extends R> it;
        public final Function<? super T, ? extends Iterable<? extends R>> mapper;
        public boolean outputFused;
        public Disposable upstream;

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.downstream = observer;
            this.mapper = function;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.it = null;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.cancelled = true;
            this.upstream.dispose();
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.it == null;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.downstream.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            Observer<? super R> observer = this.downstream;
            try {
                Iterator<? extends R> it = this.mapper.apply(t).iterator();
                if (!it.hasNext()) {
                    observer.onComplete();
                    return;
                }
                if (this.outputFused) {
                    this.it = it;
                    observer.onNext(null);
                    observer.onComplete();
                    return;
                }
                while (!this.cancelled) {
                    try {
                        observer.onNext(it.next());
                        if (this.cancelled) {
                            return;
                        }
                        try {
                            if (!it.hasNext()) {
                                observer.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            observer.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        observer.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                t80.m7781if(th3);
                this.downstream.onError(th3);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public R poll() throws Exception {
            Iterator<? extends R> it = this.it;
            if (it == null) {
                return null;
            }
            R r = (R) Cif.m29468else(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.it = null;
            }
            return r;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    public Cdefault(SingleSource<T> singleSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        this.f27156do = singleSource;
        this.f27157if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        this.f27156do.subscribe(new Cdo(observer, this.f27157if));
    }
}
