package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;

/* renamed from: rx.internal.operators.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.internal.operators.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0520do<T> implements Iterable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f34683do;

        public C0520do(Observable observable) {
            this.f34683do = observable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Cif cif = new Cif();
            this.f34683do.M1().Y3(cif);
            return cif;
        }
    }

    /* renamed from: rx.internal.operators.do$if, reason: invalid class name */
    public static final class Cif<T> extends y22<rx.Cdo<? extends T>> implements Iterator<T> {

        /* renamed from: for, reason: not valid java name */
        public rx.Cdo<? extends T> f34685for;

        /* renamed from: do, reason: not valid java name */
        public final Semaphore f34684do = new Semaphore(0);

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<rx.Cdo<? extends T>> f34686if = new AtomicReference<>();

        @Override // rx.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(rx.Cdo<? extends T> cdo) {
            if (this.f34686if.getAndSet(cdo) == null) {
                this.f34684do.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() throws InterruptedException {
            rx.Cdo<? extends T> cdo = this.f34685for;
            if (cdo != null && cdo.m38316class()) {
                throw s80.m7296for(this.f34685for.m38319else());
            }
            rx.Cdo<? extends T> cdo2 = this.f34685for;
            if ((cdo2 == null || !cdo2.m38315catch()) && this.f34685for == null) {
                try {
                    this.f34684do.acquire();
                    rx.Cdo<? extends T> andSet = this.f34686if.getAndSet(null);
                    this.f34685for = andSet;
                    if (andSet.m38316class()) {
                        throw s80.m7296for(this.f34685for.m38319else());
                    }
                } catch (InterruptedException e) {
                    unsubscribe();
                    Thread.currentThread().interrupt();
                    this.f34685for = rx.Cdo.m38311new(e);
                    throw s80.m7296for(e);
                }
            }
            return !this.f34685for.m38315catch();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext() || !this.f34685for.m38317const()) {
                throw new NoSuchElementException();
            }
            T tM38320goto = this.f34685for.m38320goto();
            this.f34685for = null;
            return tM38320goto;
        }

        @Override // rx.Observer
        public void onCompleted() {
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    private Cdo() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Iterable<T> m38462do(Observable<? extends T> observable) {
        return new C0520do(observable);
    }
}
