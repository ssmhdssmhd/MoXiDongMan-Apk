package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Observable;

/* renamed from: rx.internal.operators.for, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfor {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.internal.operators.for$do, reason: invalid class name */
    public static class Cdo<T> implements Iterable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f34774do;

        public Cdo(Observable observable) {
            this.f34774do = observable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new Cif(this.f34774do, new C0524for());
        }
    }

    /* renamed from: rx.internal.operators.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0524for<T> extends y22<rx.Cdo<? extends T>> {

        /* renamed from: do, reason: not valid java name */
        private final BlockingQueue<rx.Cdo<? extends T>> f34775do = new ArrayBlockingQueue(1);

        /* renamed from: if, reason: not valid java name */
        public final AtomicInteger f34776if = new AtomicInteger();

        @Override // rx.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(rx.Cdo<? extends T> cdo) {
            if (this.f34776if.getAndSet(0) == 1 || !cdo.m38317const()) {
                while (!this.f34775do.offer(cdo)) {
                    rx.Cdo<? extends T> cdoPoll = this.f34775do.poll();
                    if (cdoPoll != null && !cdoPoll.m38317const()) {
                        cdo = cdoPoll;
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public rx.Cdo<? extends T> m38498for() throws InterruptedException {
            m38499if(1);
            return this.f34775do.take();
        }

        /* renamed from: if, reason: not valid java name */
        public void m38499if(int i) {
            this.f34776if.set(i);
        }

        @Override // rx.Observer
        public void onCompleted() {
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
        }
    }

    /* renamed from: rx.internal.operators.for$if, reason: invalid class name */
    public static final class Cif<T> implements Iterator<T> {

        /* renamed from: case, reason: not valid java name */
        private Throwable f34777case;

        /* renamed from: do, reason: not valid java name */
        private final C0524for<T> f34778do;

        /* renamed from: else, reason: not valid java name */
        private boolean f34779else;

        /* renamed from: for, reason: not valid java name */
        private T f34780for;

        /* renamed from: if, reason: not valid java name */
        private final Observable<? extends T> f34781if;

        /* renamed from: new, reason: not valid java name */
        private boolean f34782new = true;

        /* renamed from: try, reason: not valid java name */
        private boolean f34783try = true;

        public Cif(Observable<? extends T> observable, C0524for<T> c0524for) {
            this.f34781if = observable;
            this.f34778do = c0524for;
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m38500do() {
            try {
                if (!this.f34779else) {
                    this.f34779else = true;
                    this.f34778do.m38499if(1);
                    this.f34781if.M1().Y3(this.f34778do);
                }
                rx.Cdo<? extends T> cdoM38498for = this.f34778do.m38498for();
                if (cdoM38498for.m38317const()) {
                    this.f34783try = false;
                    this.f34780for = cdoM38498for.m38320goto();
                    return true;
                }
                this.f34782new = false;
                if (cdoM38498for.m38315catch()) {
                    return false;
                }
                if (!cdoM38498for.m38316class()) {
                    throw new IllegalStateException("Should not reach here");
                }
                Throwable thM38319else = cdoM38498for.m38319else();
                this.f34777case = thM38319else;
                throw s80.m7296for(thM38319else);
            } catch (InterruptedException e) {
                this.f34778do.unsubscribe();
                Thread.currentThread().interrupt();
                this.f34777case = e;
                throw s80.m7296for(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f34777case;
            if (th != null) {
                throw s80.m7296for(th);
            }
            if (this.f34782new) {
                return !this.f34783try || m38500do();
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f34777case;
            if (th != null) {
                throw s80.m7296for(th);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f34783try = true;
            return this.f34780for;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    private Cfor() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Iterable<T> m38496do(Observable<? extends T> observable) {
        return new Cdo(observable);
    }
}
