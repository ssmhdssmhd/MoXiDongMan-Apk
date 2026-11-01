package io.reactivex.internal.operators.flowable;

import android.support.v4.uy;
import io.reactivex.Cfor;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: io.reactivex.internal.operators.flowable.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T> implements Iterable<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<T> f25763do;

    /* renamed from: if, reason: not valid java name */
    public final T f25764if;

    /* renamed from: io.reactivex.internal.operators.flowable.new$do, reason: invalid class name */
    public static final class Cdo<T> extends uy<T> {

        /* renamed from: if, reason: not valid java name */
        public volatile Object f25765if;

        /* renamed from: io.reactivex.internal.operators.flowable.new$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0287do implements Iterator<T> {

            /* renamed from: do, reason: not valid java name */
            private Object f25766do;

            public C0287do() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                this.f25766do = Cdo.this.f25765if;
                return !Cbreak.isComplete(r0);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f25766do == null) {
                        this.f25766do = Cdo.this.f25765if;
                    }
                    if (Cbreak.isComplete(this.f25766do)) {
                        throw new NoSuchElementException();
                    }
                    if (Cbreak.isError(this.f25766do)) {
                        throw Ccase.m29712case(Cbreak.getError(this.f25766do));
                    }
                    return (T) Cbreak.getValue(this.f25766do);
                } finally {
                    this.f25766do = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public Cdo(T t) {
            this.f25765if = Cbreak.next(t);
        }

        /* renamed from: new, reason: not valid java name */
        public Cdo<T>.C0287do m29494new() {
            return new C0287do();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25765if = Cbreak.complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25765if = Cbreak.error(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25765if = Cbreak.next(t);
        }
    }

    public Cnew(Cfor<T> cfor, T t) {
        this.f25763do = cfor;
        this.f25764if = t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Cdo cdo = new Cdo(this.f25764if);
        this.f25763do.m5(cdo);
        return cdo.m29494new();
    }
}
