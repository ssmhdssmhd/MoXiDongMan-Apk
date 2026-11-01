package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.subjects.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry<T> extends Cgoto<T> {

    /* renamed from: for, reason: not valid java name */
    public static final Cdo[] f27615for = new Cdo[0];

    /* renamed from: new, reason: not valid java name */
    public static final Cdo[] f27616new = new Cdo[0];

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27617do = new AtomicReference<>(f27616new);

    /* renamed from: if, reason: not valid java name */
    public Throwable f27618if;

    /* renamed from: io.reactivex.subjects.try$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 3562861878281475070L;
        public final Observer<? super T> downstream;
        public final Ctry<T> parent;

        public Cdo(Observer<? super T> observer, Ctry<T> ctry) {
            this.downstream = observer;
            this.parent = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.m29842goto(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }

        public void onComplete() {
            if (get()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable th) {
            if (get()) {
                jp1.l(th);
            } else {
                this.downstream.onError(th);
            }
        }

        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }
    }

    @b41
    @gl
    /* renamed from: else, reason: not valid java name */
    public static <T> Ctry<T> m29840else() {
        return new Ctry<>();
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m29841case(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27617do.get();
            if (cdoArr == f27615for) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27617do.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    @Override // io.reactivex.subjects.Cgoto
    @a51
    /* renamed from: do */
    public Throwable mo29793do() {
        if (this.f27617do.get() == f27615for) {
            return this.f27618if;
        }
        return null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: for */
    public boolean mo29796for() {
        return this.f27617do.get().length != 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m29842goto(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27617do.get();
            if (cdoArr == f27615for || cdoArr == f27616new) {
                return;
            }
            int length = cdoArr.length;
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
                cdoArr2 = f27616new;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27617do.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: if */
    public boolean mo29797if() {
        return this.f27617do.get() == f27615for && this.f27618if == null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: new */
    public boolean mo29800new() {
        return this.f27617do.get() == f27615for && this.f27618if != null;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        Cdo<T>[] cdoArr = this.f27617do.get();
        Cdo<T>[] cdoArr2 = f27615for;
        if (cdoArr == cdoArr2) {
            return;
        }
        for (Cdo<T> cdo : this.f27617do.getAndSet(cdoArr2)) {
            cdo.onComplete();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        Cdo<T>[] cdoArr = this.f27617do.get();
        Cdo<T>[] cdoArr2 = f27615for;
        if (cdoArr == cdoArr2) {
            jp1.l(th);
            return;
        }
        this.f27618if = th;
        for (Cdo<T> cdo : this.f27617do.getAndSet(cdoArr2)) {
            cdo.onError(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (Cdo<T> cdo : this.f27617do.get()) {
            cdo.onNext(t);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f27617do.get() == f27615for) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo<T> cdo = new Cdo<>(observer, this);
        observer.onSubscribe(cdo);
        if (m29841case(cdo)) {
            if (cdo.isDisposed()) {
                m29842goto(cdo);
            }
        } else {
            Throwable th = this.f27618if;
            if (th != null) {
                observer.onError(th);
            } else {
                observer.onComplete();
            }
        }
    }
}
