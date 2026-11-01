package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25385do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends CompletableSource> f25386if;

    /* renamed from: io.reactivex.internal.operators.completable.default$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 5018523762564524046L;
        public final CompletableObserver downstream;
        public final Function<? super Throwable, ? extends CompletableSource> errorMapper;
        public boolean once;

        public Cdo(CompletableObserver completableObserver, Function<? super Throwable, ? extends CompletableSource> function) {
            this.downstream = completableObserver;
            this.errorMapper = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.once) {
                this.downstream.onError(th);
                return;
            }
            this.once = true;
            try {
                ((CompletableSource) Cif.m29468else(this.errorMapper.apply(th), "The errorMapper returned a null CompletableSource")).subscribe(this);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    public Cdefault(CompletableSource completableSource, Function<? super Throwable, ? extends CompletableSource> function) {
        this.f25385do = completableSource;
        this.f25386if = function;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver, this.f25386if);
        completableObserver.onSubscribe(cdo);
        this.f25385do.subscribe(cdo);
    }
}
