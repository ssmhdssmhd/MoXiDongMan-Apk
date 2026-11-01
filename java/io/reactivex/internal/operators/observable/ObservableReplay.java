package io.reactivex.internal.operators.observable;

import android.support.v4.e72;
import android.support.v4.i61;
import android.support.v4.jp1;
import android.support.v4.pq;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ObservableReplay<T> extends pq<T> implements HasUpstreamObservableSource<T>, ResettableConnectable {

    /* renamed from: try, reason: not valid java name */
    public static final BufferSupplier f26339try = new Cconst();

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26340do;

    /* renamed from: for, reason: not valid java name */
    public final BufferSupplier<T> f26341for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cgoto<T>> f26342if;

    /* renamed from: new, reason: not valid java name */
    public final ObservableSource<T> f26343new;

    public interface BufferSupplier<T> {
        ReplayBuffer<T> call();
    }

    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(Cfor<T> cfor);
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$break, reason: invalid class name */
    public static final class Cbreak<T> implements BufferSupplier<T> {

        /* renamed from: do, reason: not valid java name */
        private final int f26344do;

        /* renamed from: for, reason: not valid java name */
        private final TimeUnit f26345for;

        /* renamed from: if, reason: not valid java name */
        private final long f26346if;

        /* renamed from: new, reason: not valid java name */
        private final io.reactivex.Ctry f26347new;

        public Cbreak(int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f26344do = i;
            this.f26346if = j;
            this.f26345for = timeUnit;
            this.f26347new = ctry;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<T> call() {
            return new Ccatch(this.f26344do, this.f26346if, this.f26345for, this.f26347new);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$case, reason: invalid class name */
    public static final class Ccase<T> extends pq<T> {

        /* renamed from: do, reason: not valid java name */
        private final pq<T> f26348do;

        /* renamed from: if, reason: not valid java name */
        private final io.reactivex.Cnew<T> f26349if;

        public Ccase(pq<T> pqVar, io.reactivex.Cnew<T> cnew) {
            this.f26348do = pqVar;
            this.f26349if = cnew;
        }

        @Override // io.reactivex.Cnew
        public void subscribeActual(Observer<? super T> observer) {
            this.f26349if.subscribe(observer);
        }

        @Override // android.support.v4.pq
        /* renamed from: try */
        public void mo6179try(Consumer<? super Disposable> consumer) {
            this.f26348do.mo6179try(consumer);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$catch, reason: invalid class name */
    public static final class Ccatch<T> extends Cdo<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        public final int limit;
        public final long maxAge;
        public final io.reactivex.Ctry scheduler;
        public final TimeUnit unit;

        public Ccatch(int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.scheduler = ctry;
            this.limit = i;
            this.maxAge = j;
            this.unit = timeUnit;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.Cdo
        public Object enterTransform(Object obj) {
            return new e72(obj, this.scheduler.mo29783for(this.unit), this.unit);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.Cdo
        public Ctry getHead() {
            Ctry ctry;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ctry ctry2 = get();
            Ctry ctry3 = ctry2.get();
            while (true) {
                Ctry ctry4 = ctry3;
                ctry = ctry2;
                ctry2 = ctry4;
                if (ctry2 == null) {
                    break;
                }
                e72 e72Var = (e72) ctry2.value;
                if (io.reactivex.internal.util.Cbreak.isComplete(e72Var.m1679new()) || io.reactivex.internal.util.Cbreak.isError(e72Var.m1679new()) || e72Var.m1676do() > jMo29783for) {
                    break;
                }
                ctry3 = ctry2.get();
            }
            return ctry;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.Cdo
        public Object leaveTransform(Object obj) {
            return ((e72) obj).m1679new();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.Cdo
        public void truncate() {
            Ctry ctry;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ctry ctry2 = get();
            Ctry ctry3 = ctry2.get();
            int i = 0;
            while (true) {
                Ctry ctry4 = ctry3;
                ctry = ctry2;
                ctry2 = ctry4;
                if (ctry2 == null) {
                    break;
                }
                int i2 = this.size;
                if (i2 > this.limit && i2 > 1) {
                    i++;
                    this.size = i2 - 1;
                    ctry3 = ctry2.get();
                } else {
                    if (((e72) ctry2.value).m1676do() > jMo29783for) {
                        break;
                    }
                    i++;
                    this.size--;
                    ctry3 = ctry2.get();
                }
            }
            if (i != 0) {
                setFirst(ctry);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.Cdo
        public void truncateFinal() {
            Ctry ctry;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ctry ctry2 = get();
            Ctry ctry3 = ctry2.get();
            int i = 0;
            while (true) {
                Ctry ctry4 = ctry3;
                ctry = ctry2;
                ctry2 = ctry4;
                if (ctry2 == null || this.size <= 1 || ((e72) ctry2.value).m1676do() > jMo29783for) {
                    break;
                }
                i++;
                this.size--;
                ctry3 = ctry2.get();
            }
            if (i != 0) {
                setFirst(ctry);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$class, reason: invalid class name */
    public static final class Cclass<T> extends Cdo<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        public final int limit;

        public Cclass(int i) {
            this.limit = i;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.Cdo
        public void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$const, reason: invalid class name */
    public static final class Cconst implements BufferSupplier<Object> {
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<Object> call() {
            return new Cfinal(16);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$do, reason: invalid class name */
    public static abstract class Cdo<T> extends AtomicReference<Ctry> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        public int size;
        public Ctry tail;

        public Cdo() {
            Ctry ctry = new Ctry(null);
            this.tail = ctry;
            set(ctry);
        }

        public final void addLast(Ctry ctry) {
            this.tail.set(ctry);
            this.tail = ctry;
            this.size++;
        }

        public final void collect(Collection<? super T> collection) {
            Ctry head = getHead();
            while (true) {
                head = head.get();
                if (head == null) {
                    return;
                }
                Object objLeaveTransform = leaveTransform(head.value);
                if (io.reactivex.internal.util.Cbreak.isComplete(objLeaveTransform) || io.reactivex.internal.util.Cbreak.isError(objLeaveTransform)) {
                    return;
                } else {
                    collection.add((Object) io.reactivex.internal.util.Cbreak.getValue(objLeaveTransform));
                }
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void complete() {
            addLast(new Ctry(enterTransform(io.reactivex.internal.util.Cbreak.complete())));
            truncateFinal();
        }

        public Object enterTransform(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void error(Throwable th) {
            addLast(new Ctry(enterTransform(io.reactivex.internal.util.Cbreak.error(th))));
            truncateFinal();
        }

        public Ctry getHead() {
            return get();
        }

        public boolean hasCompleted() {
            Object obj = this.tail.value;
            return obj != null && io.reactivex.internal.util.Cbreak.isComplete(leaveTransform(obj));
        }

        public boolean hasError() {
            Object obj = this.tail.value;
            return obj != null && io.reactivex.internal.util.Cbreak.isError(leaveTransform(obj));
        }

        public Object leaveTransform(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void next(T t) {
            addLast(new Ctry(enterTransform(io.reactivex.internal.util.Cbreak.next(t))));
            truncate();
        }

        public final void removeFirst() {
            this.size--;
            setFirst(get().get());
        }

        public final void removeSome(int i) {
            Ctry ctry = get();
            while (i > 0) {
                ctry = ctry.get();
                i--;
                this.size--;
            }
            setFirst(ctry);
            Ctry ctry2 = get();
            if (ctry2.get() == null) {
                this.tail = ctry2;
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void replay(Cfor<T> cfor) {
            if (cfor.getAndIncrement() != 0) {
                return;
            }
            int iAddAndGet = 1;
            do {
                Ctry head = (Ctry) cfor.index();
                if (head == null) {
                    head = getHead();
                    cfor.index = head;
                }
                while (!cfor.isDisposed()) {
                    Ctry ctry = head.get();
                    if (ctry == null) {
                        cfor.index = head;
                        iAddAndGet = cfor.addAndGet(-iAddAndGet);
                    } else {
                        if (io.reactivex.internal.util.Cbreak.accept(leaveTransform(ctry.value), cfor.child)) {
                            cfor.index = null;
                            return;
                        }
                        head = ctry;
                    }
                }
                cfor.index = null;
                return;
            } while (iAddAndGet != 0);
        }

        public final void setFirst(Ctry ctry) {
            set(ctry);
        }

        public final void trimHead() {
            Ctry ctry = get();
            if (ctry.value != null) {
                Ctry ctry2 = new Ctry(null);
                ctry2.lazySet(ctry.get());
                set(ctry2);
            }
        }

        public abstract void truncate();

        public void truncateFinal() {
            trimHead();
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$else, reason: invalid class name */
    public static final class Celse<T> implements BufferSupplier<T> {

        /* renamed from: do, reason: not valid java name */
        private final int f26350do;

        public Celse(int i) {
            this.f26350do = i;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<T> call() {
            return new Cclass(this.f26350do);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$final, reason: invalid class name */
    public static final class Cfinal<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        public volatile int size;

        public Cfinal(int i) {
            super(i);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void complete() {
            add(io.reactivex.internal.util.Cbreak.complete());
            this.size++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void error(Throwable th) {
            add(io.reactivex.internal.util.Cbreak.error(th));
            this.size++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void next(T t) {
            add(io.reactivex.internal.util.Cbreak.next(t));
            this.size++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void replay(Cfor<T> cfor) {
            if (cfor.getAndIncrement() != 0) {
                return;
            }
            Observer<? super T> observer = cfor.child;
            int iAddAndGet = 1;
            while (!cfor.isDisposed()) {
                int i = this.size;
                Integer num = (Integer) cfor.index();
                int iIntValue = num != null ? num.intValue() : 0;
                while (iIntValue < i) {
                    if (io.reactivex.internal.util.Cbreak.accept(get(iIntValue), observer) || cfor.isDisposed()) {
                        return;
                    } else {
                        iIntValue++;
                    }
                }
                cfor.index = Integer.valueOf(iIntValue);
                iAddAndGet = cfor.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2728361546769921047L;
        public volatile boolean cancelled;
        public final Observer<? super T> child;
        public Object index;
        public final Cgoto<T> parent;

        public Cfor(Cgoto<T> cgoto, Observer<? super T> observer) {
            this.parent = cgoto;
            this.child = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.parent.remove(this);
            this.index = null;
        }

        public <U> U index() {
            return (U) this.index;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$goto, reason: invalid class name */
    public static final class Cgoto<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
        public static final Cfor[] EMPTY = new Cfor[0];
        public static final Cfor[] TERMINATED = new Cfor[0];
        private static final long serialVersionUID = -533785617179540163L;
        public final ReplayBuffer<T> buffer;
        public boolean done;
        public final AtomicReference<Cfor[]> observers = new AtomicReference<>(EMPTY);
        public final AtomicBoolean shouldConnect = new AtomicBoolean();

        public Cgoto(ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
        }

        public boolean add(Cfor<T> cfor) {
            Cfor[] cforArr;
            Cfor[] cforArr2;
            do {
                cforArr = this.observers.get();
                if (cforArr == TERMINATED) {
                    return false;
                }
                int length = cforArr.length;
                cforArr2 = new Cfor[length + 1];
                System.arraycopy(cforArr, 0, cforArr2, 0, length);
                cforArr2[length] = cfor;
            } while (!this.observers.compareAndSet(cforArr, cforArr2));
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.observers.set(TERMINATED);
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.observers.get() == TERMINATED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.buffer.complete();
            replayFinal();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.buffer.error(th);
            replayFinal();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            this.buffer.next(t);
            replay();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                replay();
            }
        }

        public void remove(Cfor<T> cfor) {
            Cfor[] cforArr;
            Cfor[] cforArr2;
            do {
                cforArr = this.observers.get();
                int length = cforArr.length;
                if (length == 0) {
                    return;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cforArr[i2].equals(cfor)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cforArr2 = EMPTY;
                } else {
                    Cfor[] cforArr3 = new Cfor[length - 1];
                    System.arraycopy(cforArr, 0, cforArr3, 0, i);
                    System.arraycopy(cforArr, i + 1, cforArr3, i, (length - i) - 1);
                    cforArr2 = cforArr3;
                }
            } while (!this.observers.compareAndSet(cforArr, cforArr2));
        }

        public void replay() {
            for (Cfor<T> cfor : this.observers.get()) {
                this.buffer.replay(cfor);
            }
        }

        public void replayFinal() {
            for (Cfor<T> cfor : this.observers.getAndSet(TERMINATED)) {
                this.buffer.replay(cfor);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$if, reason: invalid class name */
    public static final class Cif<R> implements Consumer<Disposable> {

        /* renamed from: do, reason: not valid java name */
        private final i61<R> f26351do;

        public Cif(i61<R> i61Var) {
            this.f26351do = i61Var;
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(Disposable disposable) {
            this.f26351do.setResource(disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$new, reason: invalid class name */
    public static final class Cnew<R, U> extends io.reactivex.Cnew<R> {

        /* renamed from: do, reason: not valid java name */
        private final Callable<? extends pq<U>> f26352do;

        /* renamed from: if, reason: not valid java name */
        private final Function<? super io.reactivex.Cnew<U>, ? extends ObservableSource<R>> f26353if;

        public Cnew(Callable<? extends pq<U>> callable, Function<? super io.reactivex.Cnew<U>, ? extends ObservableSource<R>> function) {
            this.f26352do = callable;
            this.f26353if = function;
        }

        @Override // io.reactivex.Cnew
        public void subscribeActual(Observer<? super R> observer) {
            try {
                pq pqVar = (pq) io.reactivex.internal.functions.Cif.m29468else(this.f26352do.call(), "The connectableFactory returned a null ConnectableObservable");
                ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26353if.apply(pqVar), "The selector returned a null ObservableSource");
                i61 i61Var = new i61(observer);
                observableSource.subscribe(i61Var);
                pqVar.mo6179try(new Cif(i61Var));
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.disposables.Cif.error(th, observer);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$this, reason: invalid class name */
    public static final class Cthis<T> implements ObservableSource<T> {

        /* renamed from: do, reason: not valid java name */
        private final AtomicReference<Cgoto<T>> f26354do;

        /* renamed from: if, reason: not valid java name */
        private final BufferSupplier<T> f26355if;

        public Cthis(AtomicReference<Cgoto<T>> atomicReference, BufferSupplier<T> bufferSupplier) {
            this.f26354do = atomicReference;
            this.f26355if = bufferSupplier;
        }

        @Override // io.reactivex.ObservableSource
        public void subscribe(Observer<? super T> observer) {
            Cgoto<T> cgoto;
            while (true) {
                cgoto = this.f26354do.get();
                if (cgoto != null) {
                    break;
                }
                Cgoto<T> cgoto2 = new Cgoto<>(this.f26355if.call());
                if (this.f26354do.compareAndSet(null, cgoto2)) {
                    cgoto = cgoto2;
                    break;
                }
            }
            Cfor<T> cfor = new Cfor<>(cgoto, observer);
            observer.onSubscribe(cfor);
            cgoto.add(cfor);
            if (cfor.isDisposed()) {
                cgoto.remove(cfor);
            } else {
                cgoto.buffer.replay(cfor);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableReplay$try, reason: invalid class name */
    public static final class Ctry extends AtomicReference<Ctry> {
        private static final long serialVersionUID = 245354315435971818L;
        public final Object value;

        public Ctry(Object obj) {
            this.value = obj;
        }
    }

    private ObservableReplay(ObservableSource<T> observableSource, ObservableSource<T> observableSource2, AtomicReference<Cgoto<T>> atomicReference, BufferSupplier<T> bufferSupplier) {
        this.f26343new = observableSource;
        this.f26340do = observableSource2;
        this.f26342if = atomicReference;
        this.f26341for = bufferSupplier;
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> pq<T> m29560const(ObservableSource<T> observableSource, int i) {
        return i == Integer.MAX_VALUE ? m29566while(observableSource) : m29565throw(observableSource, new Celse(i));
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> pq<T> m29561final(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return m29564super(observableSource, j, timeUnit, ctry, Integer.MAX_VALUE);
    }

    /* renamed from: import, reason: not valid java name */
    public static <U, R> io.reactivex.Cnew<R> m29562import(Callable<? extends pq<U>> callable, Function<? super io.reactivex.Cnew<U>, ? extends ObservableSource<R>> function) {
        return jp1.i(new Cnew(callable, function));
    }

    /* renamed from: native, reason: not valid java name */
    public static <T> pq<T> m29563native(pq<T> pqVar, io.reactivex.Ctry ctry) {
        return jp1.d(new Ccase(pqVar, pqVar.observeOn(ctry)));
    }

    /* renamed from: super, reason: not valid java name */
    public static <T> pq<T> m29564super(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, int i) {
        return m29565throw(observableSource, new Cbreak(i, j, timeUnit, ctry));
    }

    /* renamed from: throw, reason: not valid java name */
    public static <T> pq<T> m29565throw(ObservableSource<T> observableSource, BufferSupplier<T> bufferSupplier) {
        AtomicReference atomicReference = new AtomicReference();
        return jp1.d(new ObservableReplay(new Cthis(atomicReference, bufferSupplier), observableSource, atomicReference, bufferSupplier));
    }

    /* renamed from: while, reason: not valid java name */
    public static <T> pq<T> m29566while(ObservableSource<? extends T> observableSource) {
        return m29565throw(observableSource, f26339try);
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    public void resetIf(Disposable disposable) {
        this.f26342if.compareAndSet((Cgoto) disposable, null);
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamObservableSource
    public ObservableSource<T> source() {
        return this.f26340do;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26343new.subscribe(observer);
    }

    @Override // android.support.v4.pq
    /* renamed from: try */
    public void mo6179try(Consumer<? super Disposable> consumer) {
        Cgoto<T> cgoto;
        while (true) {
            cgoto = this.f26342if.get();
            if (cgoto != null && !cgoto.isDisposed()) {
                break;
            }
            Cgoto<T> cgoto2 = new Cgoto<>(this.f26341for.call());
            if (this.f26342if.compareAndSet(cgoto, cgoto2)) {
                cgoto = cgoto2;
                break;
            }
        }
        boolean z = !cgoto.shouldConnect.get() && cgoto.shouldConnect.compareAndSet(false, true);
        try {
            consumer.accept(cgoto);
            if (z) {
                this.f26340do.subscribe(cgoto);
            }
        } catch (Throwable th) {
            if (z) {
                cgoto.shouldConnect.compareAndSet(true, false);
            }
            t80.m7781if(th);
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }
}
