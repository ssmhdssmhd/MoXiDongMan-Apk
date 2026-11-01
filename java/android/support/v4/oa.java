package android.support.v4;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import rx.Observable;
import rx.internal.util.Ctry;

/* loaded from: classes4.dex */
public final class oa {

    /* renamed from: android.support.v4.oa$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<rx.Cdo<? extends T>> implements Iterator<T> {

        /* renamed from: new, reason: not valid java name */
        public static final int f4481new = (Ctry.f35868new * 3) / 4;

        /* renamed from: do, reason: not valid java name */
        private final BlockingQueue<rx.Cdo<? extends T>> f4482do = new LinkedBlockingQueue();

        /* renamed from: for, reason: not valid java name */
        private int f4483for;

        /* renamed from: if, reason: not valid java name */
        private rx.Cdo<? extends T> f4484if;

        /* renamed from: if, reason: not valid java name */
        private rx.Cdo<? extends T> m5508if() {
            try {
                rx.Cdo<? extends T> cdoPoll = this.f4482do.poll();
                return cdoPoll != null ? cdoPoll : this.f4482do.take();
            } catch (InterruptedException e) {
                unsubscribe();
                throw s80.m7296for(e);
            }
        }

        @Override // rx.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(rx.Cdo<? extends T> cdo) {
            this.f4482do.offer(cdo);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f4484if == null) {
                this.f4484if = m5508if();
                int i = this.f4483for + 1;
                this.f4483for = i;
                if (i >= f4481new) {
                    request(i);
                    this.f4483for = 0;
                }
            }
            if (this.f4484if.m38316class()) {
                throw s80.m7296for(this.f4484if.m38319else());
            }
            return !this.f4484if.m38315catch();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tM38320goto = this.f4484if.m38320goto();
            this.f4484if = null;
            return tM38320goto;
        }

        @Override // rx.Observer
        public void onCompleted() {
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f4482do.offer(rx.Cdo.m38311new(th));
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Ctry.f35868new);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator");
        }
    }

    private oa() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Iterator<T> m5507do(Observable<? extends T> observable) {
        Cdo cdo = new Cdo();
        observable.M1().Y3(cdo);
        return cdo;
    }
}
