package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> implements Observer<T> {

    /* renamed from: catch, reason: not valid java name */
    public static final Cdo[] f26930catch = new Cdo[0];

    /* renamed from: class, reason: not valid java name */
    public static final Cdo[] f26931class = new Cdo[0];

    /* renamed from: break, reason: not valid java name */
    public volatile boolean f26932break;

    /* renamed from: case, reason: not valid java name */
    public final Cif<T> f26933case;

    /* renamed from: else, reason: not valid java name */
    public Cif<T> f26934else;

    /* renamed from: for, reason: not valid java name */
    public final int f26935for;

    /* renamed from: goto, reason: not valid java name */
    public int f26936goto;

    /* renamed from: if, reason: not valid java name */
    public final AtomicBoolean f26937if;

    /* renamed from: new, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f26938new;

    /* renamed from: this, reason: not valid java name */
    public Throwable f26939this;

    /* renamed from: try, reason: not valid java name */
    public volatile long f26940try;

    /* renamed from: io.reactivex.internal.operators.observable.throw$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 6770240836423125754L;
        public volatile boolean disposed;
        public final Observer<? super T> downstream;
        public long index;
        public Cif<T> node;
        public int offset;
        public final Cthrow<T> parent;

        public Cdo(Observer<? super T> observer, Cthrow<T> cthrow) {
            this.downstream = observer;
            this.parent = cthrow;
            this.node = cthrow.f26933case;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.parent.m29648try(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.throw$if, reason: invalid class name */
    public static final class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        public final T[] f26941do;

        /* renamed from: if, reason: not valid java name */
        public volatile Cif<T> f26942if;

        public Cif(int i) {
            this.f26941do = (T[]) new Object[i];
        }
    }

    public Cthrow(Cnew<T> cnew, int i) {
        super(cnew);
        this.f26935for = i;
        this.f26937if = new AtomicBoolean();
        Cif<T> cif = new Cif<>(i);
        this.f26933case = cif;
        this.f26934else = cif;
        this.f26938new = new AtomicReference<>(f26930catch);
    }

    /* renamed from: case, reason: not valid java name */
    public void m29643case(Cdo<T> cdo) {
        if (cdo.getAndIncrement() != 0) {
            return;
        }
        long j = cdo.index;
        int i = cdo.offset;
        Cif<T> cif = cdo.node;
        Observer<? super T> observer = cdo.downstream;
        int i2 = this.f26935for;
        int iAddAndGet = 1;
        while (!cdo.disposed) {
            boolean z = this.f26932break;
            boolean z2 = this.f26940try == j;
            if (z && z2) {
                cdo.node = null;
                Throwable th = this.f26939this;
                if (th != null) {
                    observer.onError(th);
                    return;
                } else {
                    observer.onComplete();
                    return;
                }
            }
            if (z2) {
                cdo.index = j;
                cdo.offset = i;
                cdo.node = cif;
                iAddAndGet = cdo.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                if (i == i2) {
                    cif = cif.f26942if;
                    i = 0;
                }
                observer.onNext(cif.f26941do[i]);
                i++;
                j++;
            }
        }
        cdo.node = null;
    }

    /* renamed from: do, reason: not valid java name */
    public void m29644do(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f26938new.get();
            if (cdoArr == f26931class) {
                return;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f26938new.compareAndSet(cdoArr, cdoArr2));
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m29645for() {
        return this.f26938new.get().length != 0;
    }

    /* renamed from: if, reason: not valid java name */
    public long m29646if() {
        return this.f26940try;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m29647new() {
        return this.f26937if.get();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.f26932break = true;
        for (Cdo<T> cdo : this.f26938new.getAndSet(f26931class)) {
            m29643case(cdo);
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.f26939this = th;
        this.f26932break = true;
        for (Cdo<T> cdo : this.f26938new.getAndSet(f26931class)) {
            m29643case(cdo);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        int i = this.f26936goto;
        if (i == this.f26935for) {
            Cif<T> cif = new Cif<>(i);
            cif.f26941do[0] = t;
            this.f26936goto = 1;
            this.f26934else.f26942if = cif;
            this.f26934else = cif;
        } else {
            this.f26934else.f26941do[i] = t;
            this.f26936goto = i + 1;
        }
        this.f26940try++;
        for (Cdo<T> cdo : this.f26938new.get()) {
            m29643case(cdo);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo<T> cdo = new Cdo<>(observer, this);
        observer.onSubscribe(cdo);
        m29644do(cdo);
        if (this.f26937if.get() || !this.f26937if.compareAndSet(false, true)) {
            m29643case(cdo);
        } else {
            this.f26500do.subscribe(this);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m29648try(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f26938new.get();
            int length = cdoArr.length;
            if (length == 0) {
                return;
            }
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (cdoArr[i2] == cdo) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cdoArr2 = f26930catch;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f26938new.compareAndSet(cdoArr, cdoArr2));
    }
}
