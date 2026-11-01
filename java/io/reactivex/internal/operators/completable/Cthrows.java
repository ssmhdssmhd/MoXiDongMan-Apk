package io.reactivex.internal.operators.completable;

import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cif;

/* renamed from: io.reactivex.internal.operators.completable.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrows extends np {

    /* renamed from: case, reason: not valid java name */
    public final Action f25460case;

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25461do;

    /* renamed from: else, reason: not valid java name */
    public final Action f25462else;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super Throwable> f25463for;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super Disposable> f25464if;

    /* renamed from: new, reason: not valid java name */
    public final Action f25465new;

    /* renamed from: try, reason: not valid java name */
    public final Action f25466try;

    /* renamed from: io.reactivex.internal.operators.completable.throws$do, reason: invalid class name */
    public final class Cdo implements CompletableObserver, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25467do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f25469if;

        public Cdo(CompletableObserver completableObserver) {
            this.f25467do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            try {
                Cthrows.this.f25462else.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
            this.f25469if.dispose();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29480do() {
            try {
                Cthrows.this.f25460case.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25469if.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f25469if == io.reactivex.internal.disposables.Cdo.DISPOSED) {
                return;
            }
            try {
                Cthrows.this.f25465new.run();
                Cthrows.this.f25466try.run();
                this.f25467do.onComplete();
                m29480do();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25467do.onError(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f25469if == io.reactivex.internal.disposables.Cdo.DISPOSED) {
                jp1.l(th);
                return;
            }
            try {
                Cthrows.this.f25463for.accept(th);
                Cthrows.this.f25466try.run();
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f25467do.onError(th);
            m29480do();
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            try {
                Cthrows.this.f25464if.accept(disposable);
                if (io.reactivex.internal.disposables.Cdo.validate(this.f25469if, disposable)) {
                    this.f25469if = disposable;
                    this.f25467do.onSubscribe(this);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                disposable.dispose();
                this.f25469if = io.reactivex.internal.disposables.Cdo.DISPOSED;
                Cif.error(th, this.f25467do);
            }
        }
    }

    public Cthrows(CompletableSource completableSource, Consumer<? super Disposable> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2, Action action3, Action action4) {
        this.f25461do = completableSource;
        this.f25464if = consumer;
        this.f25463for = consumer2;
        this.f25465new = action;
        this.f25466try = action2;
        this.f25460case = action3;
        this.f25462else = action4;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25461do.subscribe(new Cdo(completableObserver));
    }
}
