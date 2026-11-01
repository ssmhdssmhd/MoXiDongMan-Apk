package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.f8;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class m<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends T> f26702do;

    /* renamed from: io.reactivex.internal.operators.observable.m$do, reason: invalid class name */
    public static final class Cdo<T> extends f8<T> {

        /* renamed from: case, reason: not valid java name */
        public boolean f26703case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26704do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f26705for;

        /* renamed from: if, reason: not valid java name */
        public final Iterator<? extends T> f26706if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26707new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26708try;

        public Cdo(Observer<? super T> observer, Iterator<? extends T> it) {
            this.f26704do = observer;
            this.f26706if = it;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f26708try = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26705for = true;
        }

        /* renamed from: do, reason: not valid java name */
        public void m29595do() {
            while (!isDisposed()) {
                try {
                    this.f26704do.onNext(Cif.m29468else(this.f26706if.next(), "The iterator returned a null value"));
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f26706if.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.f26704do.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.f26704do.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    this.f26704do.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26705for;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f26708try;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() {
            if (this.f26708try) {
                return null;
            }
            if (!this.f26703case) {
                this.f26703case = true;
            } else if (!this.f26706if.hasNext()) {
                this.f26708try = true;
                return null;
            }
            return (T) Cif.m29468else(this.f26706if.next(), "The iterator returned a null value");
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f26707new = true;
            return 1;
        }
    }

    public m(Iterable<? extends T> iterable) {
        this.f26702do = iterable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Iterator<? extends T> it = this.f26702do.iterator();
            try {
                if (!it.hasNext()) {
                    io.reactivex.internal.disposables.Cif.complete(observer);
                    return;
                }
                Cdo cdo = new Cdo(observer, it);
                observer.onSubscribe(cdo);
                if (cdo.f26707new) {
                    return;
                }
                cdo.m29595do();
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.disposables.Cif.error(th, observer);
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            io.reactivex.internal.disposables.Cif.error(th2, observer);
        }
    }
}
