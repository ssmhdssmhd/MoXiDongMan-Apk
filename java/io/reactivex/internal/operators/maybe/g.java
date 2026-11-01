package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class g<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final Action f26150case;

    /* renamed from: else, reason: not valid java name */
    public final Action f26151else;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super T> f26152for;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super Disposable> f26153if;

    /* renamed from: new, reason: not valid java name */
    public final Consumer<? super Throwable> f26154new;

    /* renamed from: try, reason: not valid java name */
    public final Action f26155try;

    /* renamed from: io.reactivex.internal.operators.maybe.g$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26156do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26157for;

        /* renamed from: if, reason: not valid java name */
        public final g<T> f26158if;

        public Cdo(MaybeObserver<? super T> maybeObserver, g<T> gVar) {
            this.f26156do = maybeObserver;
            this.f26158if = gVar;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            try {
                this.f26158if.f26151else.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
            this.f26157for.dispose();
            this.f26157for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        /* renamed from: do, reason: not valid java name */
        public void m29548do() {
            try {
                this.f26158if.f26150case.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m29549if(Throwable th) {
            try {
                this.f26158if.f26154new.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f26157for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26156do.onError(th);
            m29548do();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26157for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            Disposable disposable = this.f26157for;
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo) {
                return;
            }
            try {
                this.f26158if.f26155try.run();
                this.f26157for = cdo;
                this.f26156do.onComplete();
                m29548do();
            } catch (Throwable th) {
                t80.m7781if(th);
                m29549if(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (this.f26157for == io.reactivex.internal.disposables.Cdo.DISPOSED) {
                jp1.l(th);
            } else {
                m29549if(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26157for, disposable)) {
                try {
                    this.f26158if.f26153if.accept(disposable);
                    this.f26157for = disposable;
                    this.f26156do.onSubscribe(this);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    disposable.dispose();
                    this.f26157for = io.reactivex.internal.disposables.Cdo.DISPOSED;
                    Cif.error(th, this.f26156do);
                }
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            Disposable disposable = this.f26157for;
            io.reactivex.internal.disposables.Cdo cdo = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (disposable == cdo) {
                return;
            }
            try {
                this.f26158if.f26152for.accept(t);
                this.f26157for = cdo;
                this.f26156do.onSuccess(t);
                m29548do();
            } catch (Throwable th) {
                t80.m7781if(th);
                m29549if(th);
            }
        }
    }

    public g(MaybeSource<T> maybeSource, Consumer<? super Disposable> consumer, Consumer<? super T> consumer2, Consumer<? super Throwable> consumer3, Action action, Action action2, Action action3) {
        super(maybeSource);
        this.f26153if = consumer;
        this.f26152for = consumer2;
        this.f26154new = consumer3;
        this.f26155try = action;
        this.f26150case = action2;
        this.f26151else = action3;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this));
    }
}
