package io.reactivex.internal.operators.maybe;

import android.support.v4.a51;
import android.support.v4.f8;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;

/* renamed from: io.reactivex.internal.operators.maybe.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26112do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends Iterable<? extends R>> f26113if;

    /* renamed from: io.reactivex.internal.operators.maybe.default$do, reason: invalid class name */
    public static final class Cdo<T, R> extends f8<R> implements MaybeObserver<T> {

        /* renamed from: case, reason: not valid java name */
        public boolean f26114case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super R> f26115do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26116for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends Iterable<? extends R>> f26117if;

        /* renamed from: new, reason: not valid java name */
        public volatile Iterator<? extends R> f26118new;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f26119try;

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f26115do = observer;
            this.f26117if = function;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f26118new = null;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26119try = true;
            this.f26116for.dispose();
            this.f26116for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26119try;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f26118new == null;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26115do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26116for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26115do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26116for, disposable)) {
                this.f26116for = disposable;
                this.f26115do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            Observer<? super R> observer = this.f26115do;
            try {
                Iterator<? extends R> it = this.f26117if.apply(t).iterator();
                if (!it.hasNext()) {
                    observer.onComplete();
                    return;
                }
                this.f26118new = it;
                if (this.f26114case) {
                    observer.onNext(null);
                    observer.onComplete();
                    return;
                }
                while (!this.f26119try) {
                    try {
                        observer.onNext(it.next());
                        if (this.f26119try) {
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
                observer.onError(th3);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f26118new;
            if (it == null) {
                return null;
            }
            R r = (R) Cif.m29468else(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f26118new = null;
            }
            return r;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.f26114case = true;
            return 2;
        }
    }

    public Cdefault(MaybeSource<T> maybeSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        this.f26112do = maybeSource;
        this.f26113if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        this.f26112do.subscribe(new Cdo(observer, this.f26113if));
    }
}
