package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.fy0;
import android.support.v4.gl;
import android.support.v4.jp1;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.subjects.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew<T> extends fy0<T> implements MaybeObserver<T> {

    /* renamed from: for, reason: not valid java name */
    public T f27602for;

    /* renamed from: new, reason: not valid java name */
    public Throwable f27604new;

    /* renamed from: try, reason: not valid java name */
    public static final Cdo[] f27600try = new Cdo[0];

    /* renamed from: case, reason: not valid java name */
    public static final Cdo[] f27599case = new Cdo[0];

    /* renamed from: if, reason: not valid java name */
    public final AtomicBoolean f27603if = new AtomicBoolean();

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27601do = new AtomicReference<>(f27600try);

    /* renamed from: io.reactivex.subjects.new$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Cnew<T>> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;
        public final MaybeObserver<? super T> downstream;

        public Cdo(MaybeObserver<? super T> maybeObserver, Cnew<T> cnew) {
            this.downstream = maybeObserver;
            lazySet(cnew);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Cnew<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.q1(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @b41
    @gl
    public static <T> Cnew<T> i1() {
        return new Cnew<>();
    }

    public boolean h1(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27601do.get();
            if (cdoArr == f27599case) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27601do.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    @a51
    public Throwable j1() {
        if (this.f27601do.get() == f27599case) {
            return this.f27604new;
        }
        return null;
    }

    @a51
    public T k1() {
        if (this.f27601do.get() == f27599case) {
            return this.f27602for;
        }
        return null;
    }

    public boolean l1() {
        return this.f27601do.get() == f27599case && this.f27602for == null && this.f27604new == null;
    }

    public boolean m1() {
        return this.f27601do.get().length != 0;
    }

    public boolean n1() {
        return this.f27601do.get() == f27599case && this.f27604new != null;
    }

    public boolean o1() {
        return this.f27601do.get() == f27599case && this.f27602for != null;
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        if (this.f27603if.compareAndSet(false, true)) {
            for (Cdo<T> cdo : this.f27601do.getAndSet(f27599case)) {
                cdo.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f27603if.compareAndSet(false, true)) {
            jp1.l(th);
            return;
        }
        this.f27604new = th;
        for (Cdo<T> cdo : this.f27601do.getAndSet(f27599case)) {
            cdo.downstream.onError(th);
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSubscribe(Disposable disposable) {
        if (this.f27601do.get() == f27599case) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        Cif.m29468else(t, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27603if.compareAndSet(false, true)) {
            this.f27602for = t;
            for (Cdo<T> cdo : this.f27601do.getAndSet(f27599case)) {
                cdo.downstream.onSuccess(t);
            }
        }
    }

    public int p1() {
        return this.f27601do.get().length;
    }

    public void q1(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27601do.get();
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
                cdoArr2 = f27600try;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27601do.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cdo<T> cdo = new Cdo<>(maybeObserver, this);
        maybeObserver.onSubscribe(cdo);
        if (h1(cdo)) {
            if (cdo.isDisposed()) {
                q1(cdo);
                return;
            }
            return;
        }
        Throwable th = this.f27604new;
        if (th != null) {
            maybeObserver.onError(th);
            return;
        }
        T t = this.f27602for;
        if (t == null) {
            maybeObserver.onComplete();
        } else {
            maybeObserver.onSuccess(t);
        }
    }
}
