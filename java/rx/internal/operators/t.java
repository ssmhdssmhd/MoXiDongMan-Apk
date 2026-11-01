package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public final class t<T, Resource> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final Func0<Resource> f35389do;

    /* renamed from: for, reason: not valid java name */
    private final Action1<? super Resource> f35390for;

    /* renamed from: if, reason: not valid java name */
    private final Func1<? super Resource, ? extends Observable<? extends T>> f35391if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f35392new;

    /* renamed from: rx.internal.operators.t$do, reason: invalid class name */
    public static final class Cdo<Resource> extends AtomicBoolean implements Action0, Subscription {
        private static final long serialVersionUID = 4262875056400218316L;
        private Action1<? super Resource> dispose;
        private Resource resource;

        public Cdo(Action1<? super Resource> action1, Resource resource) {
            this.dispose = action1;
            this.resource = resource;
            lazySet(false);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [Resource, rx.functions.Action1<? super Resource>] */
        @Override // rx.functions.Action0
        public void call() {
            if (compareAndSet(false, true)) {
                ?? r0 = (Resource) null;
                try {
                    this.dispose.call(this.resource);
                } finally {
                    this.resource = null;
                    this.dispose = null;
                }
            }
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            call();
        }
    }

    public t(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        this.f35389do = func0;
        this.f35391if = func1;
        this.f35390for = action1;
        this.f35392new = z;
    }

    /* renamed from: if, reason: not valid java name */
    private Throwable m38739if(Action0 action0) {
        try {
            action0.call();
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        try {
            Resource resourceCall = this.f35389do.call();
            Cdo cdo = new Cdo(this.f35390for, resourceCall);
            y22Var.add(cdo);
            try {
                Observable<? extends T> observableCall = this.f35391if.call(resourceCall);
                try {
                    (this.f35392new ? observableCall.x0(cdo) : observableCall.p0(cdo)).r5(Cnew.m39112case(y22Var));
                } catch (Throwable th) {
                    Throwable thM38739if = m38739if(cdo);
                    s80.m7301try(th);
                    s80.m7301try(thM38739if);
                    if (thM38739if != null) {
                        y22Var.onError(new rx.exceptions.Cdo(th, thM38739if));
                    } else {
                        y22Var.onError(th);
                    }
                }
            } catch (Throwable th2) {
                Throwable thM38739if2 = m38739if(cdo);
                s80.m7301try(th2);
                s80.m7301try(thM38739if2);
                if (thM38739if2 != null) {
                    y22Var.onError(new rx.exceptions.Cdo(th2, thM38739if2));
                } else {
                    y22Var.onError(th2);
                }
            }
        } catch (Throwable th3) {
            s80.m7297goto(th3, y22Var);
        }
    }
}
