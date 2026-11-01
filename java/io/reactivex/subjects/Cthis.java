package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.e12;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.y7;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.SimpleQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.subjects.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> extends Cgoto<T> {

    /* renamed from: break, reason: not valid java name */
    public boolean f27605break;

    /* renamed from: case, reason: not valid java name */
    public volatile boolean f27606case;

    /* renamed from: do, reason: not valid java name */
    public final e12<T> f27607do;

    /* renamed from: else, reason: not valid java name */
    public Throwable f27608else;

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Runnable> f27609for;

    /* renamed from: goto, reason: not valid java name */
    public final AtomicBoolean f27610goto;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Observer<? super T>> f27611if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f27612new;

    /* renamed from: this, reason: not valid java name */
    public final y7<T> f27613this;

    /* renamed from: try, reason: not valid java name */
    public volatile boolean f27614try;

    /* renamed from: io.reactivex.subjects.this$do, reason: invalid class name */
    public final class Cdo extends y7<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        public Cdo() {
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            Cthis.this.f27607do.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (Cthis.this.f27614try) {
                return;
            }
            Cthis.this.f27614try = true;
            Cthis.this.m29834catch();
            Cthis.this.f27611if.lazySet(null);
            if (Cthis.this.f27613this.getAndIncrement() == 0) {
                Cthis.this.f27611if.lazySet(null);
                Cthis cthis = Cthis.this;
                if (cthis.f27605break) {
                    return;
                }
                cthis.f27607do.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return Cthis.this.f27614try;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return Cthis.this.f27607do.isEmpty();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            return Cthis.this.f27607do.poll();
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            Cthis.this.f27605break = true;
            return 2;
        }
    }

    public Cthis(int i, boolean z) {
        this.f27607do = new e12<>(Cif.m29470goto(i, "capacityHint"));
        this.f27609for = new AtomicReference<>();
        this.f27612new = z;
        this.f27611if = new AtomicReference<>();
        this.f27610goto = new AtomicBoolean();
        this.f27613this = new Cdo();
    }

    @b41
    @gl
    /* renamed from: break, reason: not valid java name */
    public static <T> Cthis<T> m29829break(boolean z) {
        return new Cthis<>(Cnew.bufferSize(), z);
    }

    @b41
    @gl
    /* renamed from: case, reason: not valid java name */
    public static <T> Cthis<T> m29830case() {
        return new Cthis<>(Cnew.bufferSize(), true);
    }

    @b41
    @gl
    /* renamed from: else, reason: not valid java name */
    public static <T> Cthis<T> m29831else(int i) {
        return new Cthis<>(i, true);
    }

    @b41
    @gl
    /* renamed from: goto, reason: not valid java name */
    public static <T> Cthis<T> m29832goto(int i, Runnable runnable) {
        return new Cthis<>(i, runnable, true);
    }

    @b41
    @gl
    /* renamed from: this, reason: not valid java name */
    public static <T> Cthis<T> m29833this(int i, Runnable runnable, boolean z) {
        return new Cthis<>(i, runnable, z);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m29834catch() {
        Runnable runnable = this.f27609for.get();
        if (runnable == null || !this.f27609for.compareAndSet(runnable, null)) {
            return;
        }
        runnable.run();
    }

    /* renamed from: class, reason: not valid java name */
    public void m29835class() {
        if (this.f27613this.getAndIncrement() != 0) {
            return;
        }
        Observer<? super T> observer = this.f27611if.get();
        int iAddAndGet = 1;
        while (observer == null) {
            iAddAndGet = this.f27613this.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                observer = this.f27611if.get();
            }
        }
        if (this.f27605break) {
            m29836const(observer);
        } else {
            m29837final(observer);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m29836const(Observer<? super T> observer) {
        e12<T> e12Var = this.f27607do;
        int iAddAndGet = 1;
        boolean z = !this.f27612new;
        while (!this.f27614try) {
            boolean z2 = this.f27606case;
            if (z && z2 && m29839throw(e12Var, observer)) {
                return;
            }
            observer.onNext(null);
            if (z2) {
                m29838super(observer);
                return;
            } else {
                iAddAndGet = this.f27613this.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
        this.f27611if.lazySet(null);
    }

    @Override // io.reactivex.subjects.Cgoto
    @a51
    /* renamed from: do */
    public Throwable mo29793do() {
        if (this.f27606case) {
            return this.f27608else;
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public void m29837final(Observer<? super T> observer) {
        e12<T> e12Var = this.f27607do;
        boolean z = !this.f27612new;
        boolean z2 = true;
        int iAddAndGet = 1;
        while (!this.f27614try) {
            boolean z3 = this.f27606case;
            T tPoll = this.f27607do.poll();
            boolean z4 = tPoll == null;
            if (z3) {
                if (z && z2) {
                    if (m29839throw(e12Var, observer)) {
                        return;
                    } else {
                        z2 = false;
                    }
                }
                if (z4) {
                    m29838super(observer);
                    return;
                }
            }
            if (z4) {
                iAddAndGet = this.f27613this.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                observer.onNext(tPoll);
            }
        }
        this.f27611if.lazySet(null);
        e12Var.clear();
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: for */
    public boolean mo29796for() {
        return this.f27611if.get() != null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: if */
    public boolean mo29797if() {
        return this.f27606case && this.f27608else == null;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: new */
    public boolean mo29800new() {
        return this.f27606case && this.f27608else != null;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f27606case || this.f27614try) {
            return;
        }
        this.f27606case = true;
        m29834catch();
        m29835class();
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27606case || this.f27614try) {
            jp1.l(th);
            return;
        }
        this.f27608else = th;
        this.f27606case = true;
        m29834catch();
        m29835class();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27606case || this.f27614try) {
            return;
        }
        this.f27607do.offer(t);
        m29835class();
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f27606case || this.f27614try) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        if (this.f27610goto.get() || !this.f27610goto.compareAndSet(false, true)) {
            io.reactivex.internal.disposables.Cif.error(new IllegalStateException("Only a single observer allowed."), observer);
            return;
        }
        observer.onSubscribe(this.f27613this);
        this.f27611if.lazySet(observer);
        if (this.f27614try) {
            this.f27611if.lazySet(null);
        } else {
            m29835class();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m29838super(Observer<? super T> observer) {
        this.f27611if.lazySet(null);
        Throwable th = this.f27608else;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m29839throw(SimpleQueue<T> simpleQueue, Observer<? super T> observer) {
        Throwable th = this.f27608else;
        if (th == null) {
            return false;
        }
        this.f27611if.lazySet(null);
        simpleQueue.clear();
        observer.onError(th);
        return true;
    }

    public Cthis(int i, Runnable runnable) {
        this(i, runnable, true);
    }

    public Cthis(int i, Runnable runnable, boolean z) {
        this.f27607do = new e12<>(Cif.m29470goto(i, "capacityHint"));
        this.f27609for = new AtomicReference<>(Cif.m29468else(runnable, "onTerminate"));
        this.f27612new = z;
        this.f27611if = new AtomicReference<>();
        this.f27610goto = new AtomicBoolean();
        this.f27613this = new Cdo();
    }
}
