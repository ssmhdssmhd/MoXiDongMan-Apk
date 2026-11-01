package rx.observers;

import android.support.v4.y61;
import rx.Observer;
import rx.functions.Action0;
import rx.functions.Action1;

/* renamed from: rx.observers.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final Observer<Object> f36101do = new Cdo();

    /* renamed from: rx.observers.if$do, reason: invalid class name */
    public static class Cdo implements Observer<Object> {
        @Override // rx.Observer
        public final void onCompleted() {
        }

        @Override // rx.Observer
        public final void onError(Throwable th) {
            throw new y61(th);
        }

        @Override // rx.Observer
        public final void onNext(Object obj) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.if$for, reason: invalid class name */
    public static class Cfor<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36102do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action1 f36103if;

        public Cfor(Action1 action1, Action1 action12) {
            this.f36102do = action1;
            this.f36103if = action12;
        }

        @Override // rx.Observer
        public final void onCompleted() {
        }

        @Override // rx.Observer
        public final void onError(Throwable th) {
            this.f36102do.call(th);
        }

        @Override // rx.Observer
        public final void onNext(T t) {
            this.f36103if.call(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0564if<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36104do;

        public C0564if(Action1 action1) {
            this.f36104do = action1;
        }

        @Override // rx.Observer
        public final void onCompleted() {
        }

        @Override // rx.Observer
        public final void onError(Throwable th) {
            throw new y61(th);
        }

        @Override // rx.Observer
        public final void onNext(T t) {
            this.f36104do.call(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.if$new, reason: invalid class name */
    public static class Cnew<T> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f36105do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action1 f36106for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action1 f36107if;

        public Cnew(Action0 action0, Action1 action1, Action1 action12) {
            this.f36105do = action0;
            this.f36107if = action1;
            this.f36106for = action12;
        }

        @Override // rx.Observer
        public final void onCompleted() {
            this.f36105do.call();
        }

        @Override // rx.Observer
        public final void onError(Throwable th) {
            this.f36107if.call(th);
        }

        @Override // rx.Observer
        public final void onNext(T t) {
            this.f36106for.call(t);
        }
    }

    private Cif() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Observer<T> m39108do(Action1<? super T> action1) {
        if (action1 != null) {
            return new C0564if(action1);
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Observer<T> m39109for(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        if (action0 != null) {
            return new Cnew(action0, action12, action1);
        }
        throw new IllegalArgumentException("onComplete can not be null");
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observer<T> m39110if(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 != null) {
            return new Cfor(action12, action1);
        }
        throw new IllegalArgumentException("onError can not be null");
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Observer<T> m39111new() {
        return (Observer<T>) f36101do;
    }
}
