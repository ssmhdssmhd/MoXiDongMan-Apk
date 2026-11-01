package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Cbreak;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ReplaySubject<T> extends Cgoto<T> {

    /* renamed from: do, reason: not valid java name */
    public final ReplayBuffer<T> f27558do;

    /* renamed from: for, reason: not valid java name */
    public boolean f27559for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cif<T>[]> f27560if = new AtomicReference<>(f27556new);

    /* renamed from: new, reason: not valid java name */
    public static final Cif[] f27556new = new Cif[0];

    /* renamed from: try, reason: not valid java name */
    public static final Cif[] f27557try = new Cif[0];

    /* renamed from: case, reason: not valid java name */
    private static final Object[] f27555case = new Object[0];

    public interface ReplayBuffer<T> {
        void add(T t);

        void addFinal(Object obj);

        boolean compareAndSet(Object obj, Object obj2);

        Object get();

        @a51
        T getValue();

        T[] getValues(T[] tArr);

        void replay(Cif<T> cif);

        int size();

        void trimHead();
    }

    /* renamed from: io.reactivex.subjects.ReplaySubject$case, reason: invalid class name */
    public static final class Ccase<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = -733876083048047795L;
        public final List<Object> buffer;
        public volatile boolean done;
        public volatile int size;

        public Ccase(int i) {
            this.buffer = new ArrayList(io.reactivex.internal.functions.Cif.m29470goto(i, "capacityHint"));
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            this.buffer.add(t);
            this.size++;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void addFinal(Object obj) {
            this.buffer.add(obj);
            trimHead();
            this.size++;
            this.done = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        @a51
        public T getValue() {
            int i = this.size;
            if (i == 0) {
                return null;
            }
            List<Object> list = this.buffer;
            T t = (T) list.get(i - 1);
            if (!Cbreak.isComplete(t) && !Cbreak.isError(t)) {
                return t;
            }
            if (i == 1) {
                return null;
            }
            return (T) list.get(i - 2);
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public T[] getValues(T[] tArr) {
            int i = this.size;
            if (i == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<Object> list = this.buffer;
            Object obj = list.get(i - 1);
            if ((Cbreak.isComplete(obj) || Cbreak.isError(obj)) && i - 1 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            for (int i2 = 0; i2 < i; i2++) {
                tArr[i2] = list.get(i2);
            }
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void replay(Cif<T> cif) {
            int i;
            if (cif.getAndIncrement() != 0) {
                return;
            }
            List<Object> list = this.buffer;
            Observer<? super T> observer = cif.downstream;
            Integer num = (Integer) cif.index;
            int iIntValue = 0;
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                cif.index = 0;
            }
            int iAddAndGet = 1;
            while (!cif.cancelled) {
                int i2 = this.size;
                while (i2 != iIntValue) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    Object obj = list.get(iIntValue);
                    if (this.done && (i = iIntValue + 1) == i2 && i == (i2 = this.size)) {
                        if (Cbreak.isComplete(obj)) {
                            observer.onComplete();
                        } else {
                            observer.onError(Cbreak.getError(obj));
                        }
                        cif.index = null;
                        cif.cancelled = true;
                        return;
                    }
                    observer.onNext(obj);
                    iIntValue++;
                }
                if (iIntValue == this.size) {
                    cif.index = Integer.valueOf(iIntValue);
                    iAddAndGet = cif.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            cif.index = null;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            int i = this.size;
            if (i == 0) {
                return 0;
            }
            int i2 = i - 1;
            Object obj = this.buffer.get(i2);
            return (Cbreak.isComplete(obj) || Cbreak.isError(obj)) ? i2 : i;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void trimHead() {
        }
    }

    /* renamed from: io.reactivex.subjects.ReplaySubject$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Cdo<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        public final T value;

        public Cdo(T t) {
            this.value = t;
        }
    }

    /* renamed from: io.reactivex.subjects.ReplaySubject$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = -8056260896137901749L;
        public volatile boolean done;
        public volatile Ctry<Object> head;
        public final long maxAge;
        public final int maxSize;
        public final io.reactivex.Ctry scheduler;
        public int size;
        public Ctry<Object> tail;
        public final TimeUnit unit;

        public Cfor(int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.maxSize = io.reactivex.internal.functions.Cif.m29470goto(i, "maxSize");
            this.maxAge = io.reactivex.internal.functions.Cif.m29473this(j, "maxAge");
            this.unit = (TimeUnit) io.reactivex.internal.functions.Cif.m29468else(timeUnit, "unit is null");
            this.scheduler = (io.reactivex.Ctry) io.reactivex.internal.functions.Cif.m29468else(ctry, "scheduler is null");
            Ctry<Object> ctry2 = new Ctry<>(null, 0L);
            this.tail = ctry2;
            this.head = ctry2;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            Ctry<Object> ctry = new Ctry<>(t, this.scheduler.mo29783for(this.unit));
            Ctry<Object> ctry2 = this.tail;
            this.tail = ctry;
            this.size++;
            ctry2.set(ctry);
            trim();
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void addFinal(Object obj) {
            Ctry<Object> ctry = new Ctry<>(obj, Long.MAX_VALUE);
            Ctry<Object> ctry2 = this.tail;
            this.tail = ctry;
            this.size++;
            ctry2.lazySet(ctry);
            trimFinal();
            this.done = true;
        }

        public Ctry<Object> getHead() {
            Ctry<Object> ctry;
            Ctry<Object> ctry2 = this.head;
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ctry<T> ctry3 = ctry2.get();
            while (true) {
                Ctry<T> ctry4 = ctry3;
                ctry = ctry2;
                ctry2 = ctry4;
                if (ctry2 == null || ctry2.time > jMo29783for) {
                    break;
                }
                ctry3 = ctry2.get();
            }
            return ctry;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        @a51
        public T getValue() {
            T t;
            Ctry<Object> ctry = this.head;
            Ctry<Object> ctry2 = null;
            while (true) {
                Ctry<T> ctry3 = ctry.get();
                if (ctry3 == null) {
                    break;
                }
                ctry2 = ctry;
                ctry = ctry3;
            }
            if (ctry.time >= this.scheduler.mo29783for(this.unit) - this.maxAge && (t = (T) ctry.value) != null) {
                return (Cbreak.isComplete(t) || Cbreak.isError(t)) ? (T) ctry2.value : t;
            }
            return null;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public T[] getValues(T[] tArr) {
            Ctry<T> head = getHead();
            int size = size(head);
            if (size != 0) {
                if (tArr.length < size) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
                }
                for (int i = 0; i != size; i++) {
                    head = head.get();
                    tArr[i] = head.value;
                }
                if (tArr.length > size) {
                    tArr[size] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void replay(Cif<T> cif) {
            if (cif.getAndIncrement() != 0) {
                return;
            }
            Observer<? super T> observer = cif.downstream;
            Ctry<Object> head = (Ctry) cif.index;
            if (head == null) {
                head = getHead();
            }
            int iAddAndGet = 1;
            while (!cif.cancelled) {
                while (!cif.cancelled) {
                    Ctry<T> ctry = head.get();
                    if (ctry != null) {
                        T t = ctry.value;
                        if (this.done && ctry.get() == null) {
                            if (Cbreak.isComplete(t)) {
                                observer.onComplete();
                            } else {
                                observer.onError(Cbreak.getError(t));
                            }
                            cif.index = null;
                            cif.cancelled = true;
                            return;
                        }
                        observer.onNext(t);
                        head = ctry;
                    } else if (head.get() == null) {
                        cif.index = head;
                        iAddAndGet = cif.addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    }
                }
                cif.index = null;
                return;
            }
            cif.index = null;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            return size(getHead());
        }

        public void trim() {
            int i = this.size;
            if (i > this.maxSize) {
                this.size = i - 1;
                this.head = this.head.get();
            }
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ctry<Object> ctry = this.head;
            while (this.size > 1) {
                Ctry<T> ctry2 = ctry.get();
                if (ctry2 == null) {
                    this.head = ctry;
                    return;
                } else if (ctry2.time > jMo29783for) {
                    this.head = ctry;
                    return;
                } else {
                    this.size--;
                    ctry = ctry2;
                }
            }
            this.head = ctry;
        }

        public void trimFinal() {
            long jMo29783for = this.scheduler.mo29783for(this.unit) - this.maxAge;
            Ctry<Object> ctry = this.head;
            while (true) {
                Ctry<T> ctry2 = ctry.get();
                if (ctry2.get() == null) {
                    if (ctry.value == null) {
                        this.head = ctry;
                        return;
                    }
                    Ctry<Object> ctry3 = new Ctry<>(null, 0L);
                    ctry3.lazySet(ctry.get());
                    this.head = ctry3;
                    return;
                }
                if (ctry2.time > jMo29783for) {
                    if (ctry.value == null) {
                        this.head = ctry;
                        return;
                    }
                    Ctry<Object> ctry4 = new Ctry<>(null, 0L);
                    ctry4.lazySet(ctry.get());
                    this.head = ctry4;
                    return;
                }
                ctry = ctry2;
            }
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void trimHead() {
            Ctry<Object> ctry = this.head;
            if (ctry.value != null) {
                Ctry<Object> ctry2 = new Ctry<>(null, 0L);
                ctry2.lazySet(ctry.get());
                this.head = ctry2;
            }
        }

        public int size(Ctry<Object> ctry) {
            int i = 0;
            while (i != Integer.MAX_VALUE) {
                Ctry<T> ctry2 = ctry.get();
                if (ctry2 == null) {
                    Object obj = ctry.value;
                    return (Cbreak.isComplete(obj) || Cbreak.isError(obj)) ? i - 1 : i;
                }
                i++;
                ctry = ctry2;
            }
            return i;
        }
    }

    /* renamed from: io.reactivex.subjects.ReplaySubject$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 466549804534799122L;
        public volatile boolean cancelled;
        public final Observer<? super T> downstream;
        public Object index;
        public final ReplaySubject<T> state;

        public Cif(Observer<? super T> observer, ReplaySubject<T> replaySubject) {
            this.downstream = observer;
            this.state = replaySubject;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.state.m29799native(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }
    }

    /* renamed from: io.reactivex.subjects.ReplaySubject$new, reason: invalid class name */
    public static final class Cnew<T> extends AtomicReference<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 1107649250281456395L;
        public volatile boolean done;
        public volatile Cdo<Object> head;
        public final int maxSize;
        public int size;
        public Cdo<Object> tail;

        public Cnew(int i) {
            this.maxSize = io.reactivex.internal.functions.Cif.m29470goto(i, "maxSize");
            Cdo<Object> cdo = new Cdo<>(null);
            this.tail = cdo;
            this.head = cdo;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void add(T t) {
            Cdo<Object> cdo = new Cdo<>(t);
            Cdo<Object> cdo2 = this.tail;
            this.tail = cdo;
            this.size++;
            cdo2.set(cdo);
            trim();
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void addFinal(Object obj) {
            Cdo<Object> cdo = new Cdo<>(obj);
            Cdo<Object> cdo2 = this.tail;
            this.tail = cdo;
            this.size++;
            cdo2.lazySet(cdo);
            trimHead();
            this.done = true;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        @a51
        public T getValue() {
            Cdo<Object> cdo = this.head;
            Cdo<Object> cdo2 = null;
            while (true) {
                Cdo<T> cdo3 = cdo.get();
                if (cdo3 == null) {
                    break;
                }
                cdo2 = cdo;
                cdo = cdo3;
            }
            T t = (T) cdo.value;
            if (t == null) {
                return null;
            }
            return (Cbreak.isComplete(t) || Cbreak.isError(t)) ? (T) cdo2.value : t;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public T[] getValues(T[] tArr) {
            Cdo<T> cdo = this.head;
            int size = size();
            if (size != 0) {
                if (tArr.length < size) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
                }
                for (int i = 0; i != size; i++) {
                    cdo = cdo.get();
                    tArr[i] = cdo.value;
                }
                if (tArr.length > size) {
                    tArr[size] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void replay(Cif<T> cif) {
            if (cif.getAndIncrement() != 0) {
                return;
            }
            Observer<? super T> observer = cif.downstream;
            Cdo<Object> cdo = (Cdo) cif.index;
            if (cdo == null) {
                cdo = this.head;
            }
            int iAddAndGet = 1;
            while (!cif.cancelled) {
                Cdo<T> cdo2 = cdo.get();
                if (cdo2 != null) {
                    T t = cdo2.value;
                    if (this.done && cdo2.get() == null) {
                        if (Cbreak.isComplete(t)) {
                            observer.onComplete();
                        } else {
                            observer.onError(Cbreak.getError(t));
                        }
                        cif.index = null;
                        cif.cancelled = true;
                        return;
                    }
                    observer.onNext(t);
                    cdo = cdo2;
                } else if (cdo.get() != null) {
                    continue;
                } else {
                    cif.index = cdo;
                    iAddAndGet = cif.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            cif.index = null;
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            Cdo<Object> cdo = this.head;
            int i = 0;
            while (i != Integer.MAX_VALUE) {
                Cdo<T> cdo2 = cdo.get();
                if (cdo2 == null) {
                    Object obj = cdo.value;
                    return (Cbreak.isComplete(obj) || Cbreak.isError(obj)) ? i - 1 : i;
                }
                i++;
                cdo = cdo2;
            }
            return i;
        }

        public void trim() {
            int i = this.size;
            if (i > this.maxSize) {
                this.size = i - 1;
                this.head = this.head.get();
            }
        }

        @Override // io.reactivex.subjects.ReplaySubject.ReplayBuffer
        public void trimHead() {
            Cdo<Object> cdo = this.head;
            if (cdo.value != null) {
                Cdo<Object> cdo2 = new Cdo<>(null);
                cdo2.lazySet(cdo.get());
                this.head = cdo2;
            }
        }
    }

    /* renamed from: io.reactivex.subjects.ReplaySubject$try, reason: invalid class name */
    public static final class Ctry<T> extends AtomicReference<Ctry<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        public final long time;
        public final T value;

        public Ctry(T t, long j) {
            this.value = t;
            this.time = j;
        }
    }

    public ReplaySubject(ReplayBuffer<T> replayBuffer) {
        this.f27558do = replayBuffer;
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> ReplaySubject<T> m29786break() {
        return new ReplaySubject<>(new Cnew(Integer.MAX_VALUE));
    }

    @b41
    @gl
    /* renamed from: catch, reason: not valid java name */
    public static <T> ReplaySubject<T> m29787catch(int i) {
        return new ReplaySubject<>(new Cnew(i));
    }

    @b41
    @gl
    /* renamed from: class, reason: not valid java name */
    public static <T> ReplaySubject<T> m29788class(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new ReplaySubject<>(new Cfor(Integer.MAX_VALUE, j, timeUnit, ctry));
    }

    @b41
    @gl
    /* renamed from: const, reason: not valid java name */
    public static <T> ReplaySubject<T> m29789const(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, int i) {
        return new ReplaySubject<>(new Cfor(i, j, timeUnit, ctry));
    }

    @b41
    @gl
    /* renamed from: goto, reason: not valid java name */
    public static <T> ReplaySubject<T> m29790goto() {
        return new ReplaySubject<>(new Ccase(16));
    }

    @b41
    @gl
    /* renamed from: this, reason: not valid java name */
    public static <T> ReplaySubject<T> m29791this(int i) {
        return new ReplaySubject<>(new Ccase(i));
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m29792case(Cif<T> cif) {
        Cif<T>[] cifArr;
        Cif<T>[] cifArr2;
        do {
            cifArr = this.f27560if.get();
            if (cifArr == f27557try) {
                return false;
            }
            int length = cifArr.length;
            cifArr2 = new Cif[length + 1];
            System.arraycopy(cifArr, 0, cifArr2, 0, length);
            cifArr2[length] = cif;
        } while (!this.f27560if.compareAndSet(cifArr, cifArr2));
        return true;
    }

    @Override // io.reactivex.subjects.Cgoto
    @a51
    /* renamed from: do, reason: not valid java name */
    public Throwable mo29793do() {
        Object obj = this.f27558do.get();
        if (Cbreak.isError(obj)) {
            return Cbreak.getError(obj);
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public void m29794else() {
        this.f27558do.trimHead();
    }

    @a51
    /* renamed from: final, reason: not valid java name */
    public T m29795final() {
        return this.f27558do.getValue();
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: for, reason: not valid java name */
    public boolean mo29796for() {
        return this.f27560if.get().length != 0;
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: if, reason: not valid java name */
    public boolean mo29797if() {
        return Cbreak.isComplete(this.f27558do.get());
    }

    /* renamed from: import, reason: not valid java name */
    public int m29798import() {
        return this.f27560if.get().length;
    }

    /* renamed from: native, reason: not valid java name */
    public void m29799native(Cif<T> cif) {
        Cif<T>[] cifArr;
        Cif<T>[] cifArr2;
        do {
            cifArr = this.f27560if.get();
            if (cifArr == f27557try || cifArr == f27556new) {
                return;
            }
            int length = cifArr.length;
            int i = -1;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (cifArr[i2] == cif) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cifArr2 = f27556new;
            } else {
                Cif<T>[] cifArr3 = new Cif[length - 1];
                System.arraycopy(cifArr, 0, cifArr3, 0, i);
                System.arraycopy(cifArr, i + 1, cifArr3, i, (length - i) - 1);
                cifArr2 = cifArr3;
            }
        } while (!this.f27560if.compareAndSet(cifArr, cifArr2));
    }

    @Override // io.reactivex.subjects.Cgoto
    /* renamed from: new, reason: not valid java name */
    public boolean mo29800new() {
        return Cbreak.isError(this.f27558do.get());
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.f27559for) {
            return;
        }
        this.f27559for = true;
        Object objComplete = Cbreak.complete();
        ReplayBuffer<T> replayBuffer = this.f27558do;
        replayBuffer.addFinal(objComplete);
        for (Cif<T> cif : m29802return(objComplete)) {
            replayBuffer.replay(cif);
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        io.reactivex.internal.functions.Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27559for) {
            jp1.l(th);
            return;
        }
        this.f27559for = true;
        Object objError = Cbreak.error(th);
        ReplayBuffer<T> replayBuffer = this.f27558do;
        replayBuffer.addFinal(objError);
        for (Cif<T> cif : m29802return(objError)) {
            replayBuffer.replay(cif);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        io.reactivex.internal.functions.Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27559for) {
            return;
        }
        ReplayBuffer<T> replayBuffer = this.f27558do;
        replayBuffer.add(t);
        for (Cif<T> cif : this.f27560if.get()) {
            replayBuffer.replay(cif);
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (this.f27559for) {
            disposable.dispose();
        }
    }

    /* renamed from: public, reason: not valid java name */
    public int m29801public() {
        return this.f27558do.size();
    }

    /* renamed from: return, reason: not valid java name */
    public Cif<T>[] m29802return(Object obj) {
        return this.f27558do.compareAndSet(null, obj) ? this.f27560if.getAndSet(f27557try) : f27557try;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cif<T> cif = new Cif<>(observer, this);
        observer.onSubscribe(cif);
        if (cif.cancelled) {
            return;
        }
        if (m29792case(cif) && cif.cancelled) {
            m29799native(cif);
        } else {
            this.f27558do.replay(cif);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: super, reason: not valid java name */
    public Object[] m29803super() {
        Object[] objArr = f27555case;
        Object[] objArrM29804throw = m29804throw(objArr);
        return objArrM29804throw == objArr ? new Object[0] : objArrM29804throw;
    }

    /* renamed from: throw, reason: not valid java name */
    public T[] m29804throw(T[] tArr) {
        return this.f27558do.getValues(tArr);
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m29805while() {
        return this.f27558do.size() != 0;
    }
}
