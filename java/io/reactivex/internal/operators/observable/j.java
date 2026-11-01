package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class j<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends Iterable<? extends R>> f26635if;

    /* renamed from: io.reactivex.internal.operators.observable.j$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super R> f26636do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26637for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends Iterable<? extends R>> f26638if;

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends Iterable<? extends R>> function) {
            this.f26636do = observer;
            this.f26638if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26637for.dispose();
            this.f26637for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26637for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Disposable disposable = this.f26637for;
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo) {
                return;
            }
            this.f26637for = cdo;
            this.f26636do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Disposable disposable = this.f26637for;
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo) {
                jp1.l(th);
            } else {
                this.f26637for = cdo;
                this.f26636do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26637for == io.reactivex.internal.disposables.Cdo.DISPOSED) {
                return;
            }
            try {
                Iterator<? extends R> it = this.f26638if.apply(t).iterator();
                Observer<? super R> observer = this.f26636do;
                while (it.hasNext()) {
                    try {
                        try {
                            observer.onNext((Object) Cif.m29468else(it.next(), "The iterator returned a null value"));
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            this.f26637for.dispose();
                            onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        this.f26637for.dispose();
                        onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                t80.m7781if(th3);
                this.f26637for.dispose();
                onError(th3);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26637for, disposable)) {
                this.f26637for = disposable;
                this.f26636do.onSubscribe(this);
            }
        }
    }

    public j(ObservableSource<T> observableSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        super(observableSource);
        this.f26635if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26635if));
    }
}
