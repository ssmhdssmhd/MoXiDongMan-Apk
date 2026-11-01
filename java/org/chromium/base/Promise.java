package org.chromium.base;

import android.os.Handler;
import android.support.v4.yf1;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import org.chromium.base.Promise;

/* loaded from: classes3.dex */
public class Promise<T> {

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ boolean f33079this = false;

    /* renamed from: goto, reason: not valid java name */
    private boolean f33084goto;

    /* renamed from: if, reason: not valid java name */
    private T f33085if;

    /* renamed from: new, reason: not valid java name */
    private Exception f33086new;

    /* renamed from: do, reason: not valid java name */
    private int f33081do = 0;

    /* renamed from: for, reason: not valid java name */
    private final List<Callback<T>> f33083for = new LinkedList();

    /* renamed from: try, reason: not valid java name */
    private final List<Callback<Exception>> f33087try = new LinkedList();

    /* renamed from: case, reason: not valid java name */
    private final Thread f33080case = Thread.currentThread();

    /* renamed from: else, reason: not valid java name */
    private final Handler f33082else = new Handler();

    public interface AsyncFunction<A, RT> extends Function<A, Promise<RT>> {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.base.Promise$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
        public static final int q6 = 0;
        public static final int r6 = 1;
        public static final int s6 = 2;
    }

    /* renamed from: org.chromium.base.Promise$if, reason: invalid class name */
    public static class Cif extends RuntimeException {
        public Cif(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    private void m36904case(Callback<Exception> callback) {
        int i = this.f33081do;
        if (i == 2) {
            m36914super(callback, this.f33086new);
        } else if (i == 0) {
            this.f33087try.add(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ void m36905class(Exception exc) {
        throw new Cif("Promise was rejected without a rejection handler.", exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m36906const(Promise promise, Function function, Object obj) {
        try {
            promise.m36918else(function.apply(obj));
        } catch (Exception e) {
            promise.m36926while(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ void m36908final(AsyncFunction asyncFunction, final Promise promise, Object obj) {
        try {
            Promise promiseApply = asyncFunction.apply(obj);
            Objects.requireNonNull(promise);
            promiseApply.m36922static(new Callback() { // from class: android.support.v4.zf1
                @Override // org.chromium.base.Callback
                public /* synthetic */ Runnable bind(Object obj2) {
                    return gf.m2653do(this, obj2);
                }

                @Override // org.chromium.base.Callback
                public final void onResult(Object obj2) {
                    this.f8530do.m36918else(obj2);
                }
            }, new yf1(promise));
        } catch (Exception e) {
            promise.m36926while(e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Promise<T> m36910goto(T t) {
        Promise<T> promise = new Promise<>();
        promise.m36918else(t);
        return promise;
    }

    /* renamed from: import, reason: not valid java name */
    public static <T> Promise<T> m36912import() {
        Promise<T> promise = new Promise<>();
        promise.m36924throw();
        return promise;
    }

    /* renamed from: new, reason: not valid java name */
    private void m36913new() {
    }

    /* renamed from: super, reason: not valid java name */
    private <S> void m36914super(Callback<S> callback, S s) {
        this.f33082else.post(callback.bind(s));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: switch, reason: not valid java name */
    private void m36915switch(Callback<T> callback) {
        int i = this.f33081do;
        if (i == 1) {
            m36914super(callback, this.f33085if);
        } else if (i == 0) {
            this.f33083for.add(callback);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m36916break() {
        m36913new();
        return this.f33081do == 1;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m36917catch() {
        m36913new();
        return this.f33081do == 2;
    }

    /* renamed from: else, reason: not valid java name */
    public void m36918else(T t) {
        m36913new();
        this.f33081do = 1;
        this.f33085if = t;
        Iterator<Callback<T>> it = this.f33083for.iterator();
        while (it.hasNext()) {
            m36914super(it.next(), t);
        }
        this.f33083for.clear();
    }

    /* renamed from: native, reason: not valid java name */
    public <RT> Promise<RT> m36919native(final Function<T, RT> function) {
        m36913new();
        final Promise<RT> promise = new Promise<>();
        m36915switch(new Callback() { // from class: android.support.v4.ag1
            @Override // org.chromium.base.Callback
            public /* synthetic */ Runnable bind(Object obj) {
                return gf.m2653do(this, obj);
            }

            @Override // org.chromium.base.Callback
            public final void onResult(Object obj) {
                Promise.m36906const(this.f171do, function, obj);
            }
        });
        m36904case(new yf1(promise));
        return promise;
    }

    /* renamed from: public, reason: not valid java name */
    public <RT> Promise<RT> m36920public(final AsyncFunction<T, RT> asyncFunction) {
        m36913new();
        final Promise<RT> promise = new Promise<>();
        m36915switch(new Callback() { // from class: android.support.v4.xf1
            @Override // org.chromium.base.Callback
            public /* synthetic */ Runnable bind(Object obj) {
                return gf.m2653do(this, obj);
            }

            @Override // org.chromium.base.Callback
            public final void onResult(Object obj) {
                Promise.m36908final(asyncFunction, promise, obj);
            }
        });
        m36904case(new yf1(promise));
        return promise;
    }

    /* renamed from: return, reason: not valid java name */
    public void m36921return(Callback<T> callback) {
        m36913new();
        if (this.f33084goto) {
            m36915switch(callback);
        } else {
            m36922static(callback, new Callback() { // from class: android.support.v4.bg1
                @Override // org.chromium.base.Callback
                public /* synthetic */ Runnable bind(Object obj) {
                    return gf.m2653do(this, obj);
                }

                @Override // org.chromium.base.Callback
                public final void onResult(Object obj) {
                    Promise.m36905class((Exception) obj);
                }
            });
            this.f33084goto = true;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m36922static(Callback<T> callback, Callback<Exception> callback2) {
        m36913new();
        m36915switch(callback);
        m36904case(callback2);
    }

    /* renamed from: this, reason: not valid java name */
    public T m36923this() {
        return this.f33085if;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m36924throw() {
        m36926while(null);
    }

    /* renamed from: try, reason: not valid java name */
    public void m36925try(Callback<Exception> callback) {
        m36913new();
        m36904case(callback);
    }

    /* renamed from: while, reason: not valid java name */
    public void m36926while(Exception exc) {
        m36913new();
        this.f33081do = 2;
        this.f33086new = exc;
        Iterator<Callback<Exception>> it = this.f33087try.iterator();
        while (it.hasNext()) {
            m36914super((Callback) it.next(), exc);
        }
        this.f33087try.clear();
    }
}
