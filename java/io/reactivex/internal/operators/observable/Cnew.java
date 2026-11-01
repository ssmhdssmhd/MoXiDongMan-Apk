package io.reactivex.internal.operators.observable;

import android.support.v4.sy;
import io.reactivex.ObservableSource;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: io.reactivex.internal.operators.observable.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26752do;

    /* renamed from: if, reason: not valid java name */
    public final T f26753if;

    /* renamed from: io.reactivex.internal.operators.observable.new$do, reason: invalid class name */
    public static final class Cdo<T> extends sy<T> {

        /* renamed from: if, reason: not valid java name */
        public volatile Object f26754if;

        /* renamed from: io.reactivex.internal.operators.observable.new$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0326do implements Iterator<T> {

            /* renamed from: do, reason: not valid java name */
            private Object f26755do;

            public C0326do() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                this.f26755do = Cdo.this.f26754if;
                return !Cbreak.isComplete(r0);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f26755do == null) {
                        this.f26755do = Cdo.this.f26754if;
                    }
                    if (Cbreak.isComplete(this.f26755do)) {
                        throw new NoSuchElementException();
                    }
                    if (Cbreak.isError(this.f26755do)) {
                        throw Ccase.m29712case(Cbreak.getError(this.f26755do));
                    }
                    return (T) Cbreak.getValue(this.f26755do);
                } finally {
                    this.f26755do = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public Cdo(T t) {
            this.f26754if = Cbreak.next(t);
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo<T>.C0326do m29597for() {
            return new C0326do();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26754if = Cbreak.complete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26754if = Cbreak.error(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26754if = Cbreak.next(t);
        }
    }

    public Cnew(ObservableSource<T> observableSource, T t) {
        this.f26752do = observableSource;
        this.f26753if = t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Cdo cdo = new Cdo(this.f26753if);
        this.f26752do.subscribe(cdo);
        return cdo.m29597for();
    }
}
