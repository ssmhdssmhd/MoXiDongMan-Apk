package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Emitter;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cif;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class o<T, S> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<S> f26757do;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super S> f26758for;

    /* renamed from: if, reason: not valid java name */
    public final BiFunction<S, Emitter<T>, S> f26759if;

    /* renamed from: io.reactivex.internal.operators.observable.o$do, reason: invalid class name */
    public static final class Cdo<T, S> implements Emitter<T>, Disposable {

        /* renamed from: case, reason: not valid java name */
        public boolean f26760case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26761do;

        /* renamed from: else, reason: not valid java name */
        public boolean f26762else;

        /* renamed from: for, reason: not valid java name */
        public final Consumer<? super S> f26763for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<S, ? super Emitter<T>, S> f26764if;

        /* renamed from: new, reason: not valid java name */
        public S f26765new;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f26766try;

        public Cdo(Observer<? super T> observer, BiFunction<S, ? super Emitter<T>, S> biFunction, Consumer<? super S> consumer, S s) {
            this.f26761do = observer;
            this.f26764if = biFunction;
            this.f26763for = consumer;
            this.f26765new = s;
        }

        /* renamed from: do, reason: not valid java name */
        private void m29598do(S s) {
            try {
                this.f26763for.accept(s);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26766try = true;
        }

        /* renamed from: if, reason: not valid java name */
        public void m29599if() {
            S sApply = this.f26765new;
            if (this.f26766try) {
                this.f26765new = null;
                m29598do(sApply);
                return;
            }
            BiFunction<S, ? super Emitter<T>, S> biFunction = this.f26764if;
            while (!this.f26766try) {
                this.f26762else = false;
                try {
                    sApply = biFunction.apply(sApply, this);
                    if (this.f26760case) {
                        this.f26766try = true;
                        this.f26765new = null;
                        m29598do(sApply);
                        return;
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f26765new = null;
                    this.f26766try = true;
                    onError(th);
                    m29598do(sApply);
                    return;
                }
            }
            this.f26765new = null;
            m29598do(sApply);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26766try;
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (this.f26760case) {
                return;
            }
            this.f26760case = true;
            this.f26761do.onComplete();
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (this.f26760case) {
                jp1.l(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f26760case = true;
            this.f26761do.onError(th);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.f26760case) {
                return;
            }
            if (this.f26762else) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f26762else = true;
                this.f26761do.onNext(t);
            }
        }
    }

    public o(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        this.f26757do = callable;
        this.f26759if = biFunction;
        this.f26758for = consumer;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Cdo cdo = new Cdo(observer, this.f26759if, this.f26758for, this.f26757do.call());
            observer.onSubscribe(cdo);
            cdo.m29599if();
        } catch (Throwable th) {
            t80.m7781if(th);
            Cif.error(th, observer);
        }
    }
}
