package rx.internal.operators;

import android.support.v4.u22;
import android.support.v4.y22;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.functions.Action0;

/* renamed from: rx.internal.operators.try, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ctry<T> extends u22<T, T> {

    /* renamed from: new, reason: not valid java name */
    public static final Observer f35441new = new Cdo();

    /* renamed from: for, reason: not valid java name */
    private boolean f35442for;

    /* renamed from: if, reason: not valid java name */
    public final Cfor<T> f35443if;

    /* renamed from: rx.internal.operators.try$do, reason: invalid class name */
    public static class Cdo implements Observer {
        @Override // rx.Observer
        public void onCompleted() {
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
        }

        @Override // rx.Observer
        public void onNext(Object obj) {
        }
    }

    /* renamed from: rx.internal.operators.try$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicReference<Observer<? super T>> {
        private static final long serialVersionUID = 8026705089538090368L;
        public boolean emitting;
        public final Object guard = new Object();
        public final ConcurrentLinkedQueue<Object> buffer = new ConcurrentLinkedQueue<>();

        public boolean casObserverRef(Observer<? super T> observer, Observer<? super T> observer2) {
            return compareAndSet(observer, observer2);
        }
    }

    /* renamed from: rx.internal.operators.try$if, reason: invalid class name */
    public static final class Cif<T> implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cfor<T> f35444do;

        /* renamed from: rx.internal.operators.try$if$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cif.this.f35444do.set(Ctry.f35441new);
            }
        }

        public Cif(Cfor<T> cfor) {
            this.f35444do = cfor;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            boolean z;
            if (!this.f35444do.casObserverRef(null, y22Var)) {
                y22Var.onError(new IllegalStateException("Only one subscriber allowed!"));
                return;
            }
            y22Var.add(rx.subscriptions.Cfor.m39225do(new Cdo()));
            synchronized (this.f35444do.guard) {
                Cfor<T> cfor = this.f35444do;
                z = true;
                if (cfor.emitting) {
                    z = false;
                } else {
                    cfor.emitting = true;
                }
            }
            if (!z) {
                return;
            }
            while (true) {
                Object objPoll = this.f35444do.buffer.poll();
                if (objPoll != null) {
                    Creturn.m38684do(this.f35444do.get(), objPoll);
                } else {
                    synchronized (this.f35444do.guard) {
                        if (this.f35444do.buffer.isEmpty()) {
                            this.f35444do.emitting = false;
                            return;
                        }
                    }
                }
            }
        }
    }

    private Ctry(Cfor<T> cfor) {
        super(new Cif(cfor));
        this.f35443if = cfor;
    }

    public static <T> Ctry<T> g6() {
        return new Ctry<>(new Cfor());
    }

    private void h6(Object obj) {
        synchronized (this.f35443if.guard) {
            this.f35443if.buffer.add(obj);
            if (this.f35443if.get() != null) {
                Cfor<T> cfor = this.f35443if;
                if (!cfor.emitting) {
                    this.f35442for = true;
                    cfor.emitting = true;
                }
            }
        }
        if (!this.f35442for) {
            return;
        }
        while (true) {
            Object objPoll = this.f35443if.buffer.poll();
            if (objPoll == null) {
                return;
            } else {
                Creturn.m38684do(this.f35443if.get(), objPoll);
            }
        }
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        boolean z;
        synchronized (this.f35443if.guard) {
            z = this.f35443if.get() != null;
        }
        return z;
    }

    @Override // rx.Observer
    public void onCompleted() {
        if (this.f35442for) {
            this.f35443if.get().onCompleted();
        } else {
            h6(Creturn.m38688if());
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        if (this.f35442for) {
            this.f35443if.get().onError(th);
        } else {
            h6(Creturn.m38686for(th));
        }
    }

    @Override // rx.Observer
    public void onNext(T t) {
        if (this.f35442for) {
            this.f35443if.get().onNext(t);
        } else {
            h6(Creturn.m38682break(t));
        }
    }
}
