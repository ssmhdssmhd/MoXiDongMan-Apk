package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import android.support.v4.ti1;
import android.support.v4.zw1;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: case, reason: not valid java name */
    public final Callable<U> f26871case;

    /* renamed from: else, reason: not valid java name */
    public final int f26872else;

    /* renamed from: for, reason: not valid java name */
    public final long f26873for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f26874goto;

    /* renamed from: if, reason: not valid java name */
    public final long f26875if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f26876new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f26877try;

    /* renamed from: io.reactivex.internal.operators.observable.super$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.Ctry<T, U, U> implements Runnable, Disposable {
        public final int a;
        public final boolean b;
        public final Ctry.Cfor c;
        public U d;
        public Disposable e;
        public Disposable f;
        public long g;
        public long h;

        /* renamed from: implements, reason: not valid java name */
        public final Callable<U> f26878implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final long f26879instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public final TimeUnit f26880synchronized;

        public Cdo(Observer<? super U> observer, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Ctry.Cfor cfor) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.f26878implements = callable;
            this.f26879instanceof = j;
            this.f26880synchronized = timeUnit;
            this.a = i;
            this.b = z;
            this.c = cfor;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f25357interface) {
                return;
            }
            this.f25357interface = true;
            this.f.dispose();
            this.c.dispose();
            synchronized (this) {
                this.d = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25357interface;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.observers.Ctry, io.reactivex.internal.util.ObservableQueueDrain
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> observer, U u) {
            observer.onNext(u);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u;
            this.c.dispose();
            synchronized (this) {
                u = this.d;
                this.d = null;
            }
            if (u != null) {
                this.f25361volatile.offer(u);
                this.f25358protected = true;
                if (enter()) {
                    ti1.m7957new(this.f25361volatile, this.f25359strictfp, false, this, this);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                this.d = null;
            }
            this.f25359strictfp.onError(th);
            this.c.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.d;
                if (u == null) {
                    return;
                }
                u.add(t);
                if (u.size() < this.a) {
                    return;
                }
                this.d = null;
                this.g++;
                if (this.b) {
                    this.e.dispose();
                }
                m29476for(u, false, this);
                try {
                    U u2 = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26878implements.call(), "The buffer supplied is null");
                    synchronized (this) {
                        this.d = u2;
                        this.h++;
                    }
                    if (this.b) {
                        Ctry.Cfor cfor = this.c;
                        long j = this.f26879instanceof;
                        this.e = cfor.mo29701new(this, j, j, this.f26880synchronized);
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f25359strictfp.onError(th);
                    dispose();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f, disposable)) {
                this.f = disposable;
                try {
                    this.d = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26878implements.call(), "The buffer supplied is null");
                    this.f25359strictfp.onSubscribe(this);
                    Ctry.Cfor cfor = this.c;
                    long j = this.f26879instanceof;
                    this.e = cfor.mo29701new(this, j, j, this.f26880synchronized);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    disposable.dispose();
                    io.reactivex.internal.disposables.Cif.error(th, this.f25359strictfp);
                    this.c.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26878implements.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    U u2 = this.d;
                    if (u2 != null && this.g == this.h) {
                        this.d = u;
                        m29476for(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                dispose();
                this.f25359strictfp.onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.super$for, reason: invalid class name */
    public static final class Cfor<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.Ctry<T, U, U> implements Runnable, Disposable {
        public final TimeUnit a;
        public final Ctry.Cfor b;
        public final List<U> c;
        public Disposable d;

        /* renamed from: implements, reason: not valid java name */
        public final Callable<U> f26881implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final long f26882instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public final long f26883synchronized;

        /* renamed from: io.reactivex.internal.operators.observable.super$for$do, reason: invalid class name */
        public final class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final U f26884do;

            public Cdo(U u) {
                this.f26884do = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (Cfor.this) {
                    Cfor.this.c.remove(this.f26884do);
                }
                Cfor cfor = Cfor.this;
                cfor.m29476for(this.f26884do, false, cfor.b);
            }
        }

        /* renamed from: io.reactivex.internal.operators.observable.super$for$if, reason: invalid class name */
        public final class Cif implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final U f26886do;

            public Cif(U u) {
                this.f26886do = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (Cfor.this) {
                    Cfor.this.c.remove(this.f26886do);
                }
                Cfor cfor = Cfor.this;
                cfor.m29476for(this.f26886do, false, cfor.b);
            }
        }

        public Cfor(Observer<? super U> observer, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Ctry.Cfor cfor) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.f26881implements = callable;
            this.f26882instanceof = j;
            this.f26883synchronized = j2;
            this.a = timeUnit;
            this.b = cfor;
            this.c = new LinkedList();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f25357interface) {
                return;
            }
            this.f25357interface = true;
            m29613else();
            this.d.dispose();
            this.b.dispose();
        }

        /* renamed from: else, reason: not valid java name */
        public void m29613else() {
            synchronized (this) {
                this.c.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f25357interface;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.observers.Ctry, io.reactivex.internal.util.ObservableQueueDrain
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> observer, U u) {
            observer.onNext(u);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.c);
                this.c.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f25361volatile.offer((Collection) it.next());
            }
            this.f25358protected = true;
            if (enter()) {
                ti1.m7957new(this.f25361volatile, this.f25359strictfp, false, this.b, this);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f25358protected = true;
            m29613else();
            this.f25359strictfp.onError(th);
            this.b.dispose();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                Iterator<U> it = this.c.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.d, disposable)) {
                this.d = disposable;
                try {
                    Collection collection = (Collection) io.reactivex.internal.functions.Cif.m29468else(this.f26881implements.call(), "The buffer supplied is null");
                    this.c.add(collection);
                    this.f25359strictfp.onSubscribe(this);
                    Ctry.Cfor cfor = this.b;
                    long j = this.f26883synchronized;
                    cfor.mo29701new(this, j, j, this.a);
                    this.b.mo29362for(new Cif(collection), this.f26882instanceof, this.a);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    disposable.dispose();
                    io.reactivex.internal.disposables.Cif.error(th, this.f25359strictfp);
                    this.b.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f25357interface) {
                return;
            }
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.Cif.m29468else(this.f26881implements.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    if (this.f25357interface) {
                        return;
                    }
                    this.c.add(collection);
                    this.b.mo29362for(new Cdo(collection), this.f26882instanceof, this.a);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25359strictfp.onError(th);
                dispose();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.super$if, reason: invalid class name */
    public static final class Cif<T, U extends Collection<? super T>> extends io.reactivex.internal.observers.Ctry<T, U, U> implements Runnable, Disposable {
        public final Ctry a;
        public Disposable b;
        public U c;
        public final AtomicReference<Disposable> d;

        /* renamed from: implements, reason: not valid java name */
        public final Callable<U> f26888implements;

        /* renamed from: instanceof, reason: not valid java name */
        public final long f26889instanceof;

        /* renamed from: synchronized, reason: not valid java name */
        public final TimeUnit f26890synchronized;

        public Cif(Observer<? super U> observer, Callable<U> callable, long j, TimeUnit timeUnit, Ctry ctry) {
            super(observer, new io.reactivex.internal.queue.Cdo());
            this.d = new AtomicReference<>();
            this.f26888implements = callable;
            this.f26889instanceof = j;
            this.f26890synchronized = timeUnit;
            this.a = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.d);
            this.b.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.d.get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.internal.observers.Ctry, io.reactivex.internal.util.ObservableQueueDrain
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> observer, U u) {
            this.f25359strictfp.onNext(u);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.c;
                this.c = null;
            }
            if (u != null) {
                this.f25361volatile.offer(u);
                this.f25358protected = true;
                if (enter()) {
                    ti1.m7957new(this.f25361volatile, this.f25359strictfp, false, null, this);
                }
            }
            io.reactivex.internal.disposables.Cdo.dispose(this.d);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                this.c = null;
            }
            this.f25359strictfp.onError(th);
            io.reactivex.internal.disposables.Cdo.dispose(this.d);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.c;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.b, disposable)) {
                this.b = disposable;
                try {
                    this.c = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26888implements.call(), "The buffer supplied is null");
                    this.f25359strictfp.onSubscribe(this);
                    if (this.f25357interface) {
                        return;
                    }
                    Ctry ctry = this.a;
                    long j = this.f26889instanceof;
                    Disposable disposableMo29689case = ctry.mo29689case(this, j, j, this.f26890synchronized);
                    if (this.d.compareAndSet(null, disposableMo29689case)) {
                        return;
                    }
                    disposableMo29689case.dispose();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    dispose();
                    io.reactivex.internal.disposables.Cif.error(th, this.f25359strictfp);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u;
            try {
                U u2 = (U) io.reactivex.internal.functions.Cif.m29468else(this.f26888implements.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    u = this.c;
                    if (u != null) {
                        this.c = u2;
                    }
                }
                if (u == null) {
                    io.reactivex.internal.disposables.Cdo.dispose(this.d);
                } else {
                    m29477if(u, false, this);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25359strictfp.onError(th);
                dispose();
            }
        }
    }

    public Csuper(ObservableSource<T> observableSource, long j, long j2, TimeUnit timeUnit, Ctry ctry, Callable<U> callable, int i, boolean z) {
        super(observableSource);
        this.f26875if = j;
        this.f26873for = j2;
        this.f26876new = timeUnit;
        this.f26877try = ctry;
        this.f26871case = callable;
        this.f26872else = i;
        this.f26874goto = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        if (this.f26875if == this.f26873for && this.f26872else == Integer.MAX_VALUE) {
            this.f26500do.subscribe(new Cif(new zw1(observer), this.f26871case, this.f26875if, this.f26876new, this.f26877try));
            return;
        }
        Ctry.Cfor cforMo4229if = this.f26877try.mo4229if();
        if (this.f26875if == this.f26873for) {
            this.f26500do.subscribe(new Cdo(new zw1(observer), this.f26871case, this.f26875if, this.f26876new, this.f26872else, this.f26874goto, cforMo4229if));
        } else {
            this.f26500do.subscribe(new Cfor(new zw1(observer), this.f26871case, this.f26875if, this.f26873for, this.f26876new, cforMo4229if));
        }
    }
}
