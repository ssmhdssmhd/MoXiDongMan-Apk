package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* renamed from: io.reactivex.internal.operators.observable.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> extends io.reactivex.internal.operators.observable.Cdo<T, Boolean> {

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26925if;

    /* renamed from: io.reactivex.internal.operators.observable.this$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super Boolean> f26926do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26927for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26928if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26929new;

        public Cdo(Observer<? super Boolean> observer, Predicate<? super T> predicate) {
            this.f26926do = observer;
            this.f26928if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26927for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26927for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26929new) {
                return;
            }
            this.f26929new = true;
            this.f26926do.onNext(Boolean.FALSE);
            this.f26926do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26929new) {
                jp1.l(th);
            } else {
                this.f26929new = true;
                this.f26926do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26929new) {
                return;
            }
            try {
                if (this.f26928if.test(t)) {
                    this.f26929new = true;
                    this.f26927for.dispose();
                    this.f26926do.onNext(Boolean.TRUE);
                    this.f26926do.onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26927for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26927for, disposable)) {
                this.f26927for = disposable;
                this.f26926do.onSubscribe(this);
            }
        }
    }

    public Cthis(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f26925if = predicate;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Boolean> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26925if));
    }
}
