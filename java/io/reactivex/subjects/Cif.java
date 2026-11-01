package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: io.reactivex.subjects.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> extends Cgoto<T> {

    /* renamed from: case, reason: not valid java name */
    public final AtomicReference<Throwable> f27584case;

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Object> f27585do;

    /* renamed from: else, reason: not valid java name */
    public long f27586else;

    /* renamed from: for, reason: not valid java name */
    public final ReadWriteLock f27587for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27588if;

    /* renamed from: new, reason: not valid java name */
    public final Lock f27589new;

    /* renamed from: try, reason: not valid java name */
    public final Lock f27590try;

    /* renamed from: goto, reason: not valid java name */
    private static final Object[] f27582goto = new Object[0];

    /* renamed from: this, reason: not valid java name */
    public static final Cdo[] f27583this = new Cdo[0];

    /* renamed from: break, reason: not valid java name */
    public static final Cdo[] f27581break = new Cdo[0];

    /* renamed from: io.reactivex.subjects.if$do, reason: invalid class name */
    public static final class Cdo<T> implements Disposable, AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

        /* renamed from: case, reason: not valid java name */
        public boolean f27591case;

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f27592do;

        /* renamed from: else, reason: not valid java name */
        public volatile boolean f27593else;

        /* renamed from: for, reason: not valid java name */
        public boolean f27594for;

        /* renamed from: goto, reason: not valid java name */
        public long f27595goto;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T> f27596if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27597new;

        /* renamed from: try, reason: not valid java name */
        public AppendOnlyLinkedArrayList<Object> f27598try;

        public Cdo(Observer<? super T> observer, Cif<T> cif) {
            this.f27592do = observer;
            this.f27596if = cif;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27593else) {
                return;
            }
            this.f27593else = true;
            this.f27596if.m29821const(this);
        }

        /* renamed from: do, reason: not valid java name */
        public void m29826do() {
            if (this.f27593else) {
                return;
            }
            synchronized (this) {
                if (this.f27593else) {
                    return;
                }
                if (this.f27594for) {
                    return;
                }
                Cif<T> cif = this.f27596if;
                Lock lock = cif.f27589new;
                lock.lock();
                this.f27595goto = cif.f27586else;
                Object obj = cif.f27585do.get();
                lock.unlock();
                this.f27597new = obj != null;
                this.f27594for = true;
                if (obj == null || test(obj)) {
                    return;
                }
                m29828if();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m29827for(Object obj, long j) {
            if (this.f27593else) {
                return;
            }
            if (!this.f27591case) {
                synchronized (this) {
                    if (this.f27593else) {
                        return;
                    }
                    if (this.f27595goto == j) {
                        return;
                    }
                    if (this.f27597new) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27598try;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.f27598try = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.m29708for(obj);
                        return;
                    }
                    this.f27594for = true;
                    this.f27591case = true;
                }
            }
            test(obj);
        }

        /* renamed from: if, reason: not valid java name */
        public void m29828if() {
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
            while (!this.f27593else) {
                synchronized (this) {
                    appendOnlyLinkedArrayList = this.f27598try;
                    if (appendOnlyLinkedArrayList == null) {
                        this.f27597new = false;
                        return;
                    }
                    this.f27598try = null;
                }
                appendOnlyLinkedArrayList.m29710new(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27593else;
        }

        @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
        public boolean test(Object obj) {
            return this.f27593else || Cbreak.accept(obj, this.f27592do);
        }
    }

    public Cif() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f27587for = reentrantReadWriteLock;
        this.f27589new = reentrantReadWriteLock.readLock();
        this.f27590try = reentrantReadWriteLock.writeLock();
        this.f27588if = new AtomicReference<>(f27583this);
        this.f27585do = new AtomicReference<>();
        this.f27584case = new AtomicReference<>();
    }

    @b41
    @gl
    /* renamed from: else, reason: not valid java name */
    public static <T> Cif<T> m29815else() {
        return new Cif<>();
    }

    @b41
    @gl
    /* renamed from: goto, reason: not valid java name */
    public static <T> Cif<T> m29816goto(T t) {
        return new Cif<>(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public Object[] m29817break() {
        Object[] objArr = f27582goto;
        Object[] objArrM29819catch = m29819catch(objArr);
        return objArrM29819catch == objArr ? new Object[0] : objArrM29819catch;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m29818case(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27588if.get();
            if (cdoArr == f27581break) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27588if.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public T[] m29819catch(T[] tArr) {
        Object obj = this.f27585do.get();
        if (obj == null || Cbreak.isComplete(obj) || Cbreak.isError(obj)) {
            if (tArr.length != 0) {
                tArr[0] = 0;
            }
            return tArr;
        }
        Object value = Cbreak.getValue(obj);
        if (tArr.length == 0) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            tArr2[0] = value;
            return tArr2;
        }
        tArr[0] = value;
        if (tArr.length == 1) {
            return tArr;
        }
        tArr[1] = 0;
        return tArr;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m29820class() {
        Object obj = this.f27585do.get();
        return (obj == null || Cbreak.isComplete(obj) || Cbreak.isError(obj)) ? false : true;
    }

    /* renamed from: const, reason: not valid java name */
    public void m29821const(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27588if.get();
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
                cdoArr2 = f27583this;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27588if.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // io.reactivex.subjects.Cgoto
    @a51
    /* renamed from: do */
    public Throwable mo29793do() {
        Object obj = this.f27585do.get();
        if (Cbreak.isError(obj)) {
            return Cbreak.getError(obj);
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public void m29822final(Object obj) {
        this.f27590try.lock();
        this.f27586else++;
        this.f27585do.lazySet(obj);
        this.f27590try.unlock();
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: for */
    public boolean mo29796for() {
        return this.f27588if.get().length != 0;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: if */
    public boolean mo29797if() {
        return Cbreak.isComplete(this.f27585do.get());
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: new */
    public boolean mo29800new() {
        return Cbreak.isError(this.f27585do.get());
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f27584case.compareAndSet(null, Ccase.f27435do)) {
            Object objComplete = Cbreak.complete();
            for (Cdo<T> cdo : m29825throw(objComplete)) {
                cdo.m29827for(objComplete, this.f27586else);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        io.reactivex.internal.functions.Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f27584case.compareAndSet(null, th)) {
            jp1.l(th);
            return;
        }
        Object objError = Cbreak.error(th);
        for (Cdo<T> cdo : m29825throw(objError)) {
            cdo.m29827for(objError, this.f27586else);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        io.reactivex.internal.functions.Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27584case.get() != null) {
            return;
        }
        Object next = Cbreak.next(t);
        m29822final(next);
        for (Cdo<T> cdo : this.f27588if.get()) {
            cdo.m29827for(next, this.f27586else);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f27584case.get() != null) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo<T> cdo = new Cdo<>(observer, this);
        observer.onSubscribe(cdo);
        if (m29818case(cdo)) {
            if (cdo.f27593else) {
                m29821const(cdo);
                return;
            } else {
                cdo.m29826do();
                return;
            }
        }
        Throwable th = this.f27584case.get();
        if (th == Ccase.f27435do) {
            observer.onComplete();
        } else {
            observer.onError(th);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public int m29823super() {
        return this.f27588if.get().length;
    }

    @a51
    /* renamed from: this, reason: not valid java name */
    public T m29824this() {
        Object obj = this.f27585do.get();
        if (Cbreak.isComplete(obj) || Cbreak.isError(obj)) {
            return null;
        }
        return (T) Cbreak.getValue(obj);
    }

    /* renamed from: throw, reason: not valid java name */
    public Cdo<T>[] m29825throw(Object obj) {
        AtomicReference<Cdo<T>[]> atomicReference = this.f27588if;
        Cdo<T>[] cdoArr = f27581break;
        Cdo<T>[] andSet = atomicReference.getAndSet(cdoArr);
        if (andSet != cdoArr) {
            m29822final(obj);
        }
        return andSet;
    }

    public Cif(T t) {
        this();
        this.f27585do.lazySet(io.reactivex.internal.functions.Cif.m29468else(t, "defaultValue is null"));
    }
}
