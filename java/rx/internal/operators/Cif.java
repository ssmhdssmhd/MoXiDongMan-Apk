package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Iterator;
import java.util.NoSuchElementException;
import rx.Observable;

/* renamed from: rx.internal.operators.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.internal.operators.if$do, reason: invalid class name */
    public static class Cdo<T> implements Iterable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f34925do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Observable f34926if;

        public Cdo(Object obj, Observable observable) {
            this.f34925do = obj;
            this.f34926if = observable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            C0527if c0527if = new C0527if(this.f34925do);
            this.f34926if.Y3(c0527if);
            return c0527if.m38560do();
        }
    }

    /* renamed from: rx.internal.operators.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0527if<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public volatile Object f34927do;

        /* renamed from: rx.internal.operators.if$if$do, reason: invalid class name */
        public class Cdo implements Iterator<T> {

            /* renamed from: do, reason: not valid java name */
            private Object f34928do;

            public Cdo() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                this.f34928do = C0527if.this.f34927do;
                return !Creturn.m38683case(r0);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f34928do == null) {
                        this.f34928do = C0527if.this.f34927do;
                    }
                    if (Creturn.m38683case(this.f34928do)) {
                        throw new NoSuchElementException();
                    }
                    if (Creturn.m38685else(this.f34928do)) {
                        throw s80.m7296for(Creturn.m38689new(this.f34928do));
                    }
                    return (T) Creturn.m38691try(this.f34928do);
                } finally {
                    this.f34928do = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public C0527if(T t) {
            this.f34927do = Creturn.m38682break(t);
        }

        /* renamed from: do, reason: not valid java name */
        public Iterator<T> m38560do() {
            return new Cdo();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34927do = Creturn.m38688if();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34927do = Creturn.m38686for(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34927do = Creturn.m38682break(t);
        }
    }

    private Cif() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Iterable<T> m38559do(Observable<? extends T> observable, T t) {
        return new Cdo(t, observable);
    }
}
