package android.support.v4;

import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class ma<T> extends CountDownLatch implements SingleObserver<T>, CompletableObserver, MaybeObserver<T> {

    /* renamed from: do, reason: not valid java name */
    public T f3865do;

    /* renamed from: for, reason: not valid java name */
    public Disposable f3866for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f3867if;

    /* renamed from: new, reason: not valid java name */
    public volatile boolean f3868new;

    public ma() {
        super(1);
    }

    /* renamed from: case, reason: not valid java name */
    public void m4877case() {
        this.f3868new = true;
        Disposable disposable = this.f3866for;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m4878do(long j, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                if (!await(j, timeUnit)) {
                    m4877case();
                    return false;
                }
            } catch (InterruptedException e) {
                m4877case();
                throw Ccase.m29712case(e);
            }
        }
        Throwable th = this.f3867if;
        if (th == null) {
            return true;
        }
        throw Ccase.m29712case(th);
    }

    /* renamed from: for, reason: not valid java name */
    public T m4879for(T t) throws InterruptedException {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                await();
            } catch (InterruptedException e) {
                m4877case();
                throw Ccase.m29712case(e);
            }
        }
        Throwable th = this.f3867if;
        if (th != null) {
            throw Ccase.m29712case(th);
        }
        T t2 = this.f3865do;
        return t2 != null ? t2 : t;
    }

    /* renamed from: if, reason: not valid java name */
    public T m4880if() throws InterruptedException {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                await();
            } catch (InterruptedException e) {
                m4877case();
                throw Ccase.m29712case(e);
            }
        }
        Throwable th = this.f3867if;
        if (th == null) {
            return this.f3865do;
        }
        throw Ccase.m29712case(th);
    }

    /* renamed from: new, reason: not valid java name */
    public Throwable m4881new() throws InterruptedException {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                await();
            } catch (InterruptedException e) {
                m4877case();
                return e;
            }
        }
        return this.f3867if;
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f3867if = th;
        countDown();
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
        this.f3866for = disposable;
        if (this.f3868new) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f3865do = t;
        countDown();
    }

    /* renamed from: try, reason: not valid java name */
    public Throwable m4882try(long j, TimeUnit timeUnit) {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                if (!await(j, timeUnit)) {
                    m4877case();
                    throw Ccase.m29712case(new TimeoutException(Ccase.m29717try(j, timeUnit)));
                }
            } catch (InterruptedException e) {
                m4877case();
                throw Ccase.m29712case(e);
            }
        }
        return this.f3867if;
    }
}
