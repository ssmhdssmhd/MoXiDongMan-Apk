package rx.observers;

import android.support.v4.y22;
import android.support.v4.y61;
import rx.Observer;
import rx.functions.Action0;
import rx.functions.Action1;

/* renamed from: rx.observers.new, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cnew {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.new$do, reason: invalid class name */
    public static class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observer f36108do;

        public Cdo(Observer observer) {
            this.f36108do = observer;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36108do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36108do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36108do.onNext(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.new$for, reason: invalid class name */
    public static class Cfor<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36109do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action1 f36110if;

        public Cfor(Action1 action1, Action1 action12) {
            this.f36109do = action1;
            this.f36110if = action12;
        }

        @Override // rx.Observer
        public final void onCompleted() {
        }

        @Override // rx.Observer
        public final void onError(Throwable th) {
            this.f36109do.call(th);
        }

        @Override // rx.Observer
        public final void onNext(T t) {
            this.f36110if.call(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.new$if, reason: invalid class name */
    public static class Cif<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36111do;

        public Cif(Action1 action1) {
            this.f36111do = action1;
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
            this.f36111do.call(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.new$new, reason: invalid class name and collision with other inner class name */
    public static class C0565new<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f36112do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action1 f36113for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action1 f36114if;

        public C0565new(Action0 action0, Action1 action1, Action1 action12) {
            this.f36112do = action0;
            this.f36114if = action1;
            this.f36113for = action12;
        }

        @Override // rx.Observer
        public final void onCompleted() {
            this.f36112do.call();
        }

        @Override // rx.Observer
        public final void onError(Throwable th) {
            this.f36114if.call(th);
        }

        @Override // rx.Observer
        public final void onNext(T t) {
            this.f36113for.call(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: rx.observers.new$try, reason: invalid class name */
    public static class Ctry<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f36115do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f36115do = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36115do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36115do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36115do.onNext(t);
        }
    }

    private Cnew() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> y22<T> m39112case(y22<? super T> y22Var) {
        return new Ctry(y22Var, y22Var);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> y22<T> m39113do(Action1<? super T> action1) {
        if (action1 != null) {
            return new Cif(action1);
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> y22<T> m39114for(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        if (action0 != null) {
            return new C0565new(action0, action12, action1);
        }
        throw new IllegalArgumentException("onComplete can not be null");
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> y22<T> m39115if(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 != null) {
            return new Cfor(action12, action1);
        }
        throw new IllegalArgumentException("onError can not be null");
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> y22<T> m39116new() {
        return m39117try(rx.observers.Cif.m39111new());
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> y22<T> m39117try(Observer<? super T> observer) {
        return new Cdo(observer);
    }
}
