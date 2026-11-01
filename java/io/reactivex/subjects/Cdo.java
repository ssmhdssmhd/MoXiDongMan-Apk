package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.observers.Cif;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.subjects.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<T> extends Cgoto<T> {

    /* renamed from: new, reason: not valid java name */
    public static final C0352do[] f27565new = new C0352do[0];

    /* renamed from: try, reason: not valid java name */
    public static final C0352do[] f27566try = new C0352do[0];

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<C0352do<T>[]> f27567do = new AtomicReference<>(f27565new);

    /* renamed from: for, reason: not valid java name */
    public T f27568for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f27569if;

    /* renamed from: io.reactivex.subjects.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0352do<T> extends Cif<T> {
        private static final long serialVersionUID = 5629876084736248016L;
        public final Cdo<T> parent;

        public C0352do(Observer<? super T> observer, Cdo<T> cdo) {
            super(observer);
            this.parent = cdo;
        }

        @Override // io.reactivex.internal.observers.Cif, io.reactivex.disposables.Disposable
        public void dispose() {
            if (super.tryDispose()) {
                this.parent.m29811class(this);
            }
        }

        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable th) {
            if (isDisposed()) {
                jp1.l(th);
            } else {
                this.downstream.onError(th);
            }
        }
    }

    @b41
    @gl
    /* renamed from: else, reason: not valid java name */
    public static <T> Cdo<T> m29807else() {
        return new Cdo<>();
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public T[] m29808break(T[] tArr) {
        T tM29812goto = m29812goto();
        if (tM29812goto == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = tM29812goto;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m29809case(C0352do<T> c0352do) {
        C0352do<T>[] c0352doArr;
        C0352do<T>[] c0352doArr2;
        do {
            c0352doArr = this.f27567do.get();
            if (c0352doArr == f27566try) {
                return false;
            }
            int length = c0352doArr.length;
            c0352doArr2 = new C0352do[length + 1];
            System.arraycopy(c0352doArr, 0, c0352doArr2, 0, length);
            c0352doArr2[length] = c0352do;
        } while (!this.f27567do.compareAndSet(c0352doArr, c0352doArr2));
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m29810catch() {
        return this.f27567do.get() == f27566try && this.f27568for != null;
    }

    /* renamed from: class, reason: not valid java name */
    public void m29811class(C0352do<T> c0352do) {
        C0352do<T>[] c0352doArr;
        C0352do<T>[] c0352doArr2;
        do {
            c0352doArr = this.f27567do.get();
            int length = c0352doArr.length;
            if (length == 0) {
                return;
            }
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (c0352doArr[i2] == c0352do) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                c0352doArr2 = f27565new;
            } else {
                C0352do<T>[] c0352doArr3 = new C0352do[length - 1];
                System.arraycopy(c0352doArr, 0, c0352doArr3, 0, i);
                System.arraycopy(c0352doArr, i + 1, c0352doArr3, i, (length - i) - 1);
                c0352doArr2 = c0352doArr3;
            }
        } while (!this.f27567do.compareAndSet(c0352doArr, c0352doArr2));
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: do */
    public Throwable mo29793do() {
        if (this.f27567do.get() == f27566try) {
            return this.f27569if;
        }
        return null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: for */
    public boolean mo29796for() {
        return this.f27567do.get().length != 0;
    }

    @a51
    /* renamed from: goto, reason: not valid java name */
    public T m29812goto() {
        if (this.f27567do.get() == f27566try) {
            return this.f27568for;
        }
        return null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: if */
    public boolean mo29797if() {
        return this.f27567do.get() == f27566try && this.f27569if == null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: new */
    public boolean mo29800new() {
        return this.f27567do.get() == f27566try && this.f27569if != null;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        C0352do<T>[] c0352doArr = this.f27567do.get();
        C0352do<T>[] c0352doArr2 = f27566try;
        if (c0352doArr == c0352doArr2) {
            return;
        }
        T t = this.f27568for;
        C0352do<T>[] andSet = this.f27567do.getAndSet(c0352doArr2);
        int i = 0;
        if (t == null) {
            int length = andSet.length;
            while (i < length) {
                andSet[i].onComplete();
                i++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i < length2) {
            andSet[i].complete(t);
            i++;
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        io.reactivex.internal.functions.Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0352do<T>[] c0352doArr = this.f27567do.get();
        C0352do<T>[] c0352doArr2 = f27566try;
        if (c0352doArr == c0352doArr2) {
            jp1.l(th);
            return;
        }
        this.f27568for = null;
        this.f27569if = th;
        for (C0352do<T> c0352do : this.f27567do.getAndSet(c0352doArr2)) {
            c0352do.onError(th);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        io.reactivex.internal.functions.Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27567do.get() == f27566try) {
            return;
        }
        this.f27568for = t;
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f27567do.get() == f27566try) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        C0352do<T> c0352do = new C0352do<>(observer, this);
        observer.onSubscribe(c0352do);
        if (m29809case(c0352do)) {
            if (c0352do.isDisposed()) {
                m29811class(c0352do);
                return;
            }
            return;
        }
        Throwable th = this.f27569if;
        if (th != null) {
            observer.onError(th);
            return;
        }
        T t = this.f27568for;
        if (t != null) {
            c0352do.complete(t);
        } else {
            c0352do.onComplete();
        }
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public Object[] m29813this() {
        T tM29812goto = m29812goto();
        return tM29812goto != null ? new Object[]{tM29812goto} : new Object[0];
    }
}
