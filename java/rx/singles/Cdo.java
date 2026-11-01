package rx.singles;

import android.support.v4.b02;
import android.support.v4.qa;
import android.support.v4.s80;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import rx.Single;
import rx.internal.operators.Cnew;

/* renamed from: rx.singles.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo<T> {

    /* renamed from: do, reason: not valid java name */
    private final Single<? extends T> f36166do;

    /* renamed from: rx.singles.do$do, reason: invalid class name and collision with other inner class name */
    public class C0570do extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ CountDownLatch f36167for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicReference f36168if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ AtomicReference f36169new;

        public C0570do(AtomicReference atomicReference, CountDownLatch countDownLatch, AtomicReference atomicReference2) {
            this.f36168if = atomicReference;
            this.f36167for = countDownLatch;
            this.f36169new = atomicReference2;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f36168if.set(t);
            this.f36167for.countDown();
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f36169new.set(th);
            this.f36167for.countDown();
        }
    }

    private Cdo(Single<? extends T> single) {
        this.f36166do = single;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Cdo<T> m39205do(Single<? extends T> single) {
        return new Cdo<>(single);
    }

    /* renamed from: for, reason: not valid java name */
    public T m39206for() throws InterruptedException {
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        qa.m6449do(countDownLatch, this.f36166do.u(new C0570do(atomicReference, countDownLatch, atomicReference2)));
        Throwable th = (Throwable) atomicReference2.get();
        if (th == null) {
            return (T) atomicReference.get();
        }
        throw s80.m7296for(th);
    }

    /* renamed from: if, reason: not valid java name */
    public Future<T> m39207if() {
        return Cnew.m38638do(this.f36166do.L());
    }
}
