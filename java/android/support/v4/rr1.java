package android.support.v4;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Cdo;
import io.reactivex.internal.disposables.Cif;

/* loaded from: classes3.dex */
public final class rr1<T> implements Observer<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final Observer<? super T> f5907do;

    /* renamed from: for, reason: not valid java name */
    public boolean f5908for;

    /* renamed from: if, reason: not valid java name */
    public Disposable f5909if;

    public rr1(@b41 Observer<? super T> observer) {
        this.f5907do = observer;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f5909if.dispose();
    }

    /* renamed from: do, reason: not valid java name */
    public void m7121do() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f5907do.onSubscribe(Cif.INSTANCE);
            try {
                this.f5907do.onError(nullPointerException);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(new Cdo(nullPointerException, th));
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new Cdo(nullPointerException, th2));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m7122if() {
        this.f5908for = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f5907do.onSubscribe(Cif.INSTANCE);
            try {
                this.f5907do.onError(nullPointerException);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(new Cdo(nullPointerException, th));
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new Cdo(nullPointerException, th2));
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f5909if.isDisposed();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f5908for) {
            return;
        }
        this.f5908for = true;
        if (this.f5909if == null) {
            m7121do();
            return;
        }
        try {
            this.f5907do.onComplete();
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onError(@b41 Throwable th) {
        if (this.f5908for) {
            jp1.l(th);
            return;
        }
        this.f5908for = true;
        if (this.f5909if != null) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f5907do.onError(th);
                return;
            } catch (Throwable th2) {
                t80.m7781if(th2);
                jp1.l(new Cdo(th, th2));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f5907do.onSubscribe(Cif.INSTANCE);
            try {
                this.f5907do.onError(new Cdo(th, nullPointerException));
            } catch (Throwable th3) {
                t80.m7781if(th3);
                jp1.l(new Cdo(th, nullPointerException, th3));
            }
        } catch (Throwable th4) {
            t80.m7781if(th4);
            jp1.l(new Cdo(th, nullPointerException, th4));
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(@b41 T t) {
        if (this.f5908for) {
            return;
        }
        if (this.f5909if == null) {
            m7122if();
            return;
        }
        if (t == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f5909if.dispose();
                onError(nullPointerException);
                return;
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(new Cdo(nullPointerException, th));
                return;
            }
        }
        try {
            this.f5907do.onNext(t);
        } catch (Throwable th2) {
            t80.m7781if(th2);
            try {
                this.f5909if.dispose();
                onError(th2);
            } catch (Throwable th3) {
                t80.m7781if(th3);
                onError(new Cdo(th2, th3));
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(@b41 Disposable disposable) {
        if (io.reactivex.internal.disposables.Cdo.validate(this.f5909if, disposable)) {
            this.f5909if = disposable;
            try {
                this.f5907do.onSubscribe(this);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f5908for = true;
                try {
                    disposable.dispose();
                    jp1.l(th);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    jp1.l(new Cdo(th, th2));
                }
            }
        }
    }
}
