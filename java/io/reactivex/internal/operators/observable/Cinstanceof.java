package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.observable.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinstanceof<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super Throwable> f26620for;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f26621if;

    /* renamed from: new, reason: not valid java name */
    public final Action f26622new;

    /* renamed from: try, reason: not valid java name */
    public final Action f26623try;

    /* renamed from: io.reactivex.internal.operators.observable.instanceof$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public Disposable f26624case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26625do;

        /* renamed from: else, reason: not valid java name */
        public boolean f26626else;

        /* renamed from: for, reason: not valid java name */
        public final Consumer<? super Throwable> f26627for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super T> f26628if;

        /* renamed from: new, reason: not valid java name */
        public final Action f26629new;

        /* renamed from: try, reason: not valid java name */
        public final Action f26630try;

        public Cdo(Observer<? super T> observer, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
            this.f26625do = observer;
            this.f26628if = consumer;
            this.f26627for = consumer2;
            this.f26629new = action;
            this.f26630try = action2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26624case.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26624case.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26626else) {
                return;
            }
            try {
                this.f26629new.run();
                this.f26626else = true;
                this.f26625do.onComplete();
                try {
                    this.f26630try.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26626else) {
                jp1.l(th);
                return;
            }
            this.f26626else = true;
            try {
                this.f26627for.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f26625do.onError(th);
            try {
                this.f26630try.run();
            } catch (Throwable th3) {
                t80.m7781if(th3);
                jp1.l(th3);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26626else) {
                return;
            }
            try {
                this.f26628if.accept(t);
                this.f26625do.onNext(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26624case.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26624case, disposable)) {
                this.f26624case = disposable;
                this.f26625do.onSubscribe(this);
            }
        }
    }

    public Cinstanceof(ObservableSource<T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        super(observableSource);
        this.f26621if = consumer;
        this.f26620for = consumer2;
        this.f26622new = action;
        this.f26623try = action2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26621if, this.f26620for, this.f26622new, this.f26623try));
    }
}
