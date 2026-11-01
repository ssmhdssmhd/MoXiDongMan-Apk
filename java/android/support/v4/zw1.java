package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.Cbreak;

/* loaded from: classes3.dex */
public final class zw1<T> implements Observer<T>, Disposable {

    /* renamed from: else, reason: not valid java name */
    public static final int f8669else = 4;

    /* renamed from: case, reason: not valid java name */
    public volatile boolean f8670case;

    /* renamed from: do, reason: not valid java name */
    public final Observer<? super T> f8671do;

    /* renamed from: for, reason: not valid java name */
    public Disposable f8672for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f8673if;

    /* renamed from: new, reason: not valid java name */
    public boolean f8674new;

    /* renamed from: try, reason: not valid java name */
    public AppendOnlyLinkedArrayList<Object> f8675try;

    public zw1(@b41 Observer<? super T> observer) {
        this(observer, false);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f8672for.dispose();
    }

    /* renamed from: do, reason: not valid java name */
    public void m10313do() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        do {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f8675try;
                if (appendOnlyLinkedArrayList == null) {
                    this.f8674new = false;
                    return;
                }
                this.f8675try = null;
            }
        } while (!appendOnlyLinkedArrayList.m29707do(this.f8671do));
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f8672for.isDisposed();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f8670case) {
            return;
        }
        synchronized (this) {
            if (this.f8670case) {
                return;
            }
            if (!this.f8674new) {
                this.f8670case = true;
                this.f8674new = true;
                this.f8671do.onComplete();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f8675try;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f8675try = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.m29708for(Cbreak.complete());
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(@b41 Throwable th) {
        if (this.f8670case) {
            jp1.l(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f8670case) {
                if (this.f8674new) {
                    this.f8670case = true;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f8675try;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f8675try = appendOnlyLinkedArrayList;
                    }
                    Object objError = Cbreak.error(th);
                    if (this.f8673if) {
                        appendOnlyLinkedArrayList.m29708for(objError);
                    } else {
                        appendOnlyLinkedArrayList.m29706case(objError);
                    }
                    return;
                }
                this.f8670case = true;
                this.f8674new = true;
                z = false;
            }
            if (z) {
                jp1.l(th);
            } else {
                this.f8671do.onError(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(@b41 T t) {
        if (this.f8670case) {
            return;
        }
        if (t == null) {
            this.f8672for.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f8670case) {
                return;
            }
            if (!this.f8674new) {
                this.f8674new = true;
                this.f8671do.onNext(t);
                m10313do();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f8675try;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f8675try = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.m29708for(Cbreak.next(t));
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(@b41 Disposable disposable) {
        if (Cdo.validate(this.f8672for, disposable)) {
            this.f8672for = disposable;
            this.f8671do.onSubscribe(this);
        }
    }

    public zw1(@b41 Observer<? super T> observer, boolean z) {
        this.f8671do = observer;
        this.f8673if = z;
    }
}
