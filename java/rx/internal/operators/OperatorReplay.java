package rx.internal.operators;

import android.support.v4.i72;
import android.support.v4.q71;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class OperatorReplay<T> extends rx.observables.Cfor<T> implements Subscription {

    /* renamed from: try, reason: not valid java name */
    public static final Func0 f34400try = new Cdo();

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Ccatch<T>> f34401for;

    /* renamed from: if, reason: not valid java name */
    public final Observable<? extends T> f34402if;

    /* renamed from: new, reason: not valid java name */
    public final Func0<? extends ReplayBuffer<T>> f34403new;

    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(Cthis<T> cthis);
    }

    /* renamed from: rx.internal.operators.OperatorReplay$break, reason: invalid class name */
    public static final class Cbreak extends AtomicReference<Cbreak> {
        private static final long serialVersionUID = 245354315435971818L;
        public final long index;
        public final Object value;

        public Cbreak(Object obj, long j) {
            this.value = obj;
            this.index = j;
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$case, reason: invalid class name */
    public static class Ccase implements Func0<ReplayBuffer<T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f34404do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34405for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long f34406if;

        public Ccase(int i, long j, rx.Cif cif) {
            this.f34404do = i;
            this.f34406if = j;
            this.f34405for = cif;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReplayBuffer<T> call() {
            return new Cclass(this.f34404do, this.f34406if, this.f34405for);
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$catch, reason: invalid class name */
    public static final class Ccatch<T> extends y22<T> implements Subscription {

        /* renamed from: throw, reason: not valid java name */
        public static final Cthis[] f34407throw = new Cthis[0];

        /* renamed from: while, reason: not valid java name */
        public static final Cthis[] f34408while = new Cthis[0];

        /* renamed from: break, reason: not valid java name */
        public boolean f34409break;

        /* renamed from: case, reason: not valid java name */
        public volatile long f34410case;

        /* renamed from: catch, reason: not valid java name */
        public long f34411catch;

        /* renamed from: class, reason: not valid java name */
        public long f34412class;

        /* renamed from: const, reason: not valid java name */
        public volatile Producer f34413const;

        /* renamed from: do, reason: not valid java name */
        public final ReplayBuffer<T> f34414do;

        /* renamed from: else, reason: not valid java name */
        public long f34415else;

        /* renamed from: final, reason: not valid java name */
        public List<Cthis<T>> f34416final;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f34417for;

        /* renamed from: if, reason: not valid java name */
        public boolean f34419if;

        /* renamed from: super, reason: not valid java name */
        public boolean f34421super;

        /* renamed from: this, reason: not valid java name */
        public boolean f34422this;

        /* renamed from: new, reason: not valid java name */
        public final q71<Cthis<T>> f34420new = new q71<>();

        /* renamed from: try, reason: not valid java name */
        public Cthis<T>[] f34423try = f34407throw;

        /* renamed from: goto, reason: not valid java name */
        public final AtomicBoolean f34418goto = new AtomicBoolean();

        /* renamed from: rx.internal.operators.OperatorReplay$catch$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                if (Ccatch.this.f34417for) {
                    return;
                }
                synchronized (Ccatch.this.f34420new) {
                    if (!Ccatch.this.f34417for) {
                        Ccatch.this.f34420new.m6436goto();
                        Ccatch.this.f34410case++;
                        Ccatch.this.f34417for = true;
                    }
                }
            }
        }

        public Ccatch(ReplayBuffer<T> replayBuffer) {
            this.f34414do = replayBuffer;
            request(0L);
        }

        /* renamed from: case, reason: not valid java name */
        public void m38379case(Cthis<T> cthis) {
            if (this.f34417for) {
                return;
            }
            synchronized (this.f34420new) {
                if (this.f34417for) {
                    return;
                }
                this.f34420new.m6432case(cthis);
                if (this.f34420new.m6435for()) {
                    this.f34423try = f34407throw;
                }
                this.f34410case++;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38380do(Cthis<T> cthis) {
            Objects.requireNonNull(cthis);
            if (this.f34417for) {
                return false;
            }
            synchronized (this.f34420new) {
                if (this.f34417for) {
                    return false;
                }
                this.f34420new.m6433do(cthis);
                this.f34410case++;
                return true;
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m38381else() {
            Cthis<T>[] cthisArr = this.f34423try;
            if (this.f34415else != this.f34410case) {
                synchronized (this.f34420new) {
                    cthisArr = this.f34423try;
                    Cthis<T>[] cthisArrM6438this = this.f34420new.m6438this();
                    int length = cthisArrM6438this.length;
                    if (cthisArr.length != length) {
                        cthisArr = new Cthis[length];
                        this.f34423try = cthisArr;
                    }
                    System.arraycopy(cthisArrM6438this, 0, cthisArr, 0, length);
                    this.f34415else = this.f34410case;
                }
            }
            ReplayBuffer<T> replayBuffer = this.f34414do;
            for (Cthis<T> cthis : cthisArr) {
                if (cthis != null) {
                    replayBuffer.replay(cthis);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38382for() {
            add(rx.subscriptions.Cfor.m39225do(new Cdo()));
        }

        /* renamed from: if, reason: not valid java name */
        public Cthis<T>[] m38383if() {
            Cthis<T>[] cthisArr;
            synchronized (this.f34420new) {
                Cthis<T>[] cthisArrM6438this = this.f34420new.m6438this();
                int length = cthisArrM6438this.length;
                cthisArr = new Cthis[length];
                System.arraycopy(cthisArrM6438this, 0, cthisArr, 0, length);
            }
            return cthisArr;
        }

        /* renamed from: new, reason: not valid java name */
        public void m38384new(long j, long j2) {
            long j3 = this.f34412class;
            Producer producer = this.f34413const;
            long j4 = j - j2;
            if (j4 == 0) {
                if (j3 == 0 || producer == null) {
                    return;
                }
                this.f34412class = 0L;
                producer.request(j3);
                return;
            }
            this.f34411catch = j;
            if (producer == null) {
                long j5 = j3 + j4;
                if (j5 < 0) {
                    j5 = Long.MAX_VALUE;
                }
                this.f34412class = j5;
                return;
            }
            if (j3 == 0) {
                producer.request(j4);
            } else {
                this.f34412class = 0L;
                producer.request(j3 + j4);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34419if) {
                return;
            }
            this.f34419if = true;
            try {
                this.f34414do.complete();
                m38381else();
            } finally {
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34419if) {
                return;
            }
            this.f34419if = true;
            try {
                this.f34414do.error(th);
                m38381else();
            } finally {
                unsubscribe();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34419if) {
                return;
            }
            this.f34414do.next(t);
            m38381else();
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            if (this.f34413const != null) {
                throw new IllegalStateException("Only a single producer can be set on a Subscriber.");
            }
            this.f34413const = producer;
            m38385try(null);
            m38381else();
        }

        /* renamed from: try, reason: not valid java name */
        public void m38385try(Cthis<T> cthis) {
            long jMax;
            List<Cthis<T>> list;
            boolean z;
            long jMax2;
            if (isUnsubscribed()) {
                return;
            }
            synchronized (this) {
                if (this.f34422this) {
                    if (cthis != null) {
                        List arrayList = this.f34416final;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            this.f34416final = arrayList;
                        }
                        arrayList.add(cthis);
                    } else {
                        this.f34421super = true;
                    }
                    this.f34409break = true;
                    return;
                }
                this.f34422this = true;
                long j = this.f34411catch;
                if (cthis != null) {
                    jMax = Math.max(j, cthis.totalRequested.get());
                } else {
                    long jMax3 = j;
                    for (Cthis<T> cthis2 : m38383if()) {
                        if (cthis2 != null) {
                            jMax3 = Math.max(jMax3, cthis2.totalRequested.get());
                        }
                    }
                    jMax = jMax3;
                }
                m38384new(jMax, j);
                while (!isUnsubscribed()) {
                    synchronized (this) {
                        if (!this.f34409break) {
                            this.f34422this = false;
                            return;
                        }
                        this.f34409break = false;
                        list = this.f34416final;
                        this.f34416final = null;
                        z = this.f34421super;
                        this.f34421super = false;
                    }
                    long j2 = this.f34411catch;
                    if (list != null) {
                        Iterator<Cthis<T>> it = list.iterator();
                        jMax2 = j2;
                        while (it.hasNext()) {
                            jMax2 = Math.max(jMax2, it.next().totalRequested.get());
                        }
                    } else {
                        jMax2 = j2;
                    }
                    if (z) {
                        for (Cthis<T> cthis3 : m38383if()) {
                            if (cthis3 != null) {
                                jMax2 = Math.max(jMax2, cthis3.totalRequested.get());
                            }
                        }
                    }
                    m38384new(jMax2, j2);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$class, reason: invalid class name */
    public static final class Cclass<T> extends Cgoto<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        public final int limit;
        public final long maxAgeInMillis;
        public final rx.Cif scheduler;

        public Cclass(int i, long j, rx.Cif cif) {
            this.scheduler = cif;
            this.limit = i;
            this.maxAgeInMillis = j;
        }

        @Override // rx.internal.operators.OperatorReplay.Cgoto
        public Object enterTransform(Object obj) {
            return new i72(this.scheduler.mo38373if(), obj);
        }

        @Override // rx.internal.operators.OperatorReplay.Cgoto
        public Cbreak getInitialHead() {
            Cbreak cbreak;
            long jMo38373if = this.scheduler.mo38373if() - this.maxAgeInMillis;
            Cbreak cbreak2 = get();
            Cbreak cbreak3 = cbreak2.get();
            while (true) {
                Cbreak cbreak4 = cbreak3;
                cbreak = cbreak2;
                cbreak2 = cbreak4;
                if (cbreak2 == null) {
                    break;
                }
                Object obj = cbreak2.value;
                Object objLeaveTransform = leaveTransform(obj);
                if (Creturn.m38683case(objLeaveTransform) || Creturn.m38685else(objLeaveTransform) || ((i72) obj).m3305do() > jMo38373if) {
                    break;
                }
                cbreak3 = cbreak2.get();
            }
            return cbreak;
        }

        @Override // rx.internal.operators.OperatorReplay.Cgoto
        public Object leaveTransform(Object obj) {
            return ((i72) obj).m3306if();
        }

        @Override // rx.internal.operators.OperatorReplay.Cgoto
        public void truncate() {
            Cbreak cbreak;
            long jMo38373if = this.scheduler.mo38373if() - this.maxAgeInMillis;
            Cbreak cbreak2 = get();
            Cbreak cbreak3 = cbreak2.get();
            int i = 0;
            while (true) {
                Cbreak cbreak4 = cbreak3;
                cbreak = cbreak2;
                cbreak2 = cbreak4;
                if (cbreak2 != null) {
                    int i2 = this.size;
                    if (i2 <= this.limit) {
                        if (((i72) cbreak2.value).m3305do() > jMo38373if) {
                            break;
                        }
                        i++;
                        this.size--;
                        cbreak3 = cbreak2.get();
                    } else {
                        i++;
                        this.size = i2 - 1;
                        cbreak3 = cbreak2.get();
                    }
                } else {
                    break;
                }
            }
            if (i != 0) {
                setFirst(cbreak);
            }
        }

        @Override // rx.internal.operators.OperatorReplay.Cgoto
        public void truncateFinal() {
            Cbreak cbreak;
            long jMo38373if = this.scheduler.mo38373if() - this.maxAgeInMillis;
            Cbreak cbreak2 = get();
            Cbreak cbreak3 = cbreak2.get();
            int i = 0;
            while (true) {
                Cbreak cbreak4 = cbreak3;
                cbreak = cbreak2;
                cbreak2 = cbreak4;
                if (cbreak2 == null || this.size <= 1 || ((i72) cbreak2.value).m3305do() > jMo38373if) {
                    break;
                }
                i++;
                this.size--;
                cbreak3 = cbreak2.get();
            }
            if (i != 0) {
                setFirst(cbreak);
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$const, reason: invalid class name */
    public static final class Cconst<T> extends Cgoto<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        public final int limit;

        public Cconst(int i) {
            this.limit = i;
        }

        @Override // rx.internal.operators.OperatorReplay.Cgoto
        public void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$do, reason: invalid class name */
    public static class Cdo implements Func0 {
        @Override // rx.functions.Func0, java.util.concurrent.Callable
        public Object call() {
            return new Cfinal(16);
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$else, reason: invalid class name */
    public static class Celse implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f34425do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Func0 f34426if;

        public Celse(AtomicReference atomicReference, Func0 func0) {
            this.f34425do = atomicReference;
            this.f34426if = func0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            Ccatch ccatch;
            while (true) {
                ccatch = (Ccatch) this.f34425do.get();
                if (ccatch != null) {
                    break;
                }
                Ccatch ccatch2 = new Ccatch((ReplayBuffer) this.f34426if.call());
                ccatch2.m38382for();
                if (this.f34425do.compareAndSet(ccatch, ccatch2)) {
                    ccatch = ccatch2;
                    break;
                }
            }
            Cthis<T> cthis = new Cthis<>(ccatch, y22Var);
            ccatch.m38380do(cthis);
            y22Var.add(cthis);
            ccatch.f34414do.replay(cthis);
            y22Var.setProducer(cthis);
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$final, reason: invalid class name */
    public static final class Cfinal<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        public volatile int size;

        public Cfinal(int i) {
            super(i);
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void complete() {
            add(Creturn.m38688if());
            this.size++;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void error(Throwable th) {
            add(Creturn.m38686for(th));
            this.size++;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void next(T t) {
            add(Creturn.m38682break(t));
            this.size++;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public void replay(Cthis<T> cthis) {
            synchronized (cthis) {
                if (cthis.emitting) {
                    cthis.missed = true;
                    return;
                }
                cthis.emitting = true;
                while (!cthis.isUnsubscribed()) {
                    int i = this.size;
                    Integer num = (Integer) cthis.index();
                    int iIntValue = num != null ? num.intValue() : 0;
                    y22<? super T> y22Var = cthis.child;
                    if (y22Var == null) {
                        return;
                    }
                    long j = cthis.get();
                    long j2 = 0;
                    while (j2 != j && iIntValue < i) {
                        Object obj = get(iIntValue);
                        try {
                            if (Creturn.m38684do(y22Var, obj) || cthis.isUnsubscribed()) {
                                return;
                            }
                            iIntValue++;
                            j2++;
                        } catch (Throwable th) {
                            s80.m7301try(th);
                            cthis.unsubscribe();
                            if (Creturn.m38685else(obj) || Creturn.m38683case(obj)) {
                                return;
                            }
                            y22Var.onError(rx.exceptions.Cif.addValueAsLastCause(th, Creturn.m38691try(obj)));
                            return;
                        }
                    }
                    if (j2 != 0) {
                        cthis.index = Integer.valueOf(iIntValue);
                        if (j != Long.MAX_VALUE) {
                            cthis.produced(j2);
                        }
                    }
                    synchronized (cthis) {
                        if (!cthis.missed) {
                            cthis.emitting = false;
                            return;
                        }
                        cthis.missed = false;
                    }
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$for, reason: invalid class name */
    public static class Cfor implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f34427do;

        /* renamed from: rx.internal.operators.OperatorReplay$for$do, reason: invalid class name */
        public class Cdo extends y22<T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ y22 f34428do;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(y22 y22Var, y22 y22Var2) {
                super(y22Var);
                this.f34428do = y22Var2;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f34428do.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f34428do.onError(th);
            }

            @Override // rx.Observer
            public void onNext(T t) {
                this.f34428do.onNext(t);
            }
        }

        public Cfor(Observable observable) {
            this.f34427do = observable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            this.f34427do.r5(new Cdo(y22Var, y22Var));
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$goto, reason: invalid class name */
    public static class Cgoto<T> extends AtomicReference<Cbreak> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        public long index;
        public int size;
        public Cbreak tail;

        public Cgoto() {
            Cbreak cbreak = new Cbreak(null, 0L);
            this.tail = cbreak;
            set(cbreak);
        }

        public final void addLast(Cbreak cbreak) {
            this.tail.set(cbreak);
            this.tail = cbreak;
            this.size++;
        }

        public final void collect(Collection<? super T> collection) {
            Cbreak initialHead = getInitialHead();
            while (true) {
                initialHead = initialHead.get();
                if (initialHead == null) {
                    return;
                }
                Object objLeaveTransform = leaveTransform(initialHead.value);
                if (Creturn.m38683case(objLeaveTransform) || Creturn.m38685else(objLeaveTransform)) {
                    return;
                } else {
                    collection.add((Object) Creturn.m38691try(objLeaveTransform));
                }
            }
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void complete() {
            Object objEnterTransform = enterTransform(Creturn.m38688if());
            long j = this.index + 1;
            this.index = j;
            addLast(new Cbreak(objEnterTransform, j));
            truncateFinal();
        }

        public Object enterTransform(Object obj) {
            return obj;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void error(Throwable th) {
            Object objEnterTransform = enterTransform(Creturn.m38686for(th));
            long j = this.index + 1;
            this.index = j;
            addLast(new Cbreak(objEnterTransform, j));
            truncateFinal();
        }

        public Cbreak getInitialHead() {
            return get();
        }

        public boolean hasCompleted() {
            Object obj = this.tail.value;
            return obj != null && Creturn.m38683case(leaveTransform(obj));
        }

        public boolean hasError() {
            Object obj = this.tail.value;
            return obj != null && Creturn.m38685else(leaveTransform(obj));
        }

        public Object leaveTransform(Object obj) {
            return obj;
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void next(T t) {
            Object objEnterTransform = enterTransform(Creturn.m38682break(t));
            long j = this.index + 1;
            this.index = j;
            addLast(new Cbreak(objEnterTransform, j));
            truncate();
        }

        public final void removeFirst() {
            Cbreak cbreak = get().get();
            if (cbreak == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            setFirst(cbreak);
        }

        public final void removeSome(int i) {
            Cbreak cbreak = get();
            while (i > 0) {
                cbreak = cbreak.get();
                i--;
                this.size--;
            }
            setFirst(cbreak);
        }

        @Override // rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void replay(Cthis<T> cthis) {
            y22<? super T> y22Var;
            Cbreak cbreak;
            synchronized (cthis) {
                if (cthis.emitting) {
                    cthis.missed = true;
                    return;
                }
                cthis.emitting = true;
                while (!cthis.isUnsubscribed()) {
                    Cbreak initialHead = (Cbreak) cthis.index();
                    if (initialHead == null) {
                        initialHead = getInitialHead();
                        cthis.index = initialHead;
                        cthis.addTotalRequested(initialHead.index);
                    }
                    if (cthis.isUnsubscribed() || (y22Var = cthis.child) == null) {
                        return;
                    }
                    long j = cthis.get();
                    long j2 = 0;
                    while (j2 != j && (cbreak = initialHead.get()) != null) {
                        Object objLeaveTransform = leaveTransform(cbreak.value);
                        try {
                            if (Creturn.m38684do(y22Var, objLeaveTransform)) {
                                cthis.index = null;
                                return;
                            }
                            j2++;
                            if (cthis.isUnsubscribed()) {
                                return;
                            } else {
                                initialHead = cbreak;
                            }
                        } catch (Throwable th) {
                            cthis.index = null;
                            s80.m7301try(th);
                            cthis.unsubscribe();
                            if (Creturn.m38685else(objLeaveTransform) || Creturn.m38683case(objLeaveTransform)) {
                                return;
                            }
                            y22Var.onError(rx.exceptions.Cif.addValueAsLastCause(th, Creturn.m38691try(objLeaveTransform)));
                            return;
                        }
                    }
                    if (j2 != 0) {
                        cthis.index = initialHead;
                        if (j != Long.MAX_VALUE) {
                            cthis.produced(j2);
                        }
                    }
                    synchronized (cthis) {
                        if (!cthis.missed) {
                            cthis.emitting = false;
                            return;
                        }
                        cthis.missed = false;
                    }
                }
            }
        }

        public final void setFirst(Cbreak cbreak) {
            set(cbreak);
        }

        public void truncate() {
        }

        public void truncateFinal() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.internal.operators.OperatorReplay$if, reason: invalid class name */
    public static class Cif<R> implements Observable.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f34430do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Func1 f34431if;

        /* renamed from: rx.internal.operators.OperatorReplay$if$do, reason: invalid class name */
        public class Cdo implements Action1<Subscription> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ y22 f34432do;

            public Cdo(y22 y22Var) {
                this.f34432do = y22Var;
            }

            @Override // rx.functions.Action1
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void call(Subscription subscription) {
                this.f34432do.add(subscription);
            }
        }

        public Cif(Func0 func0, Func1 func1) {
            this.f34430do = func0;
            this.f34431if = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super R> y22Var) {
            try {
                rx.observables.Cfor cfor = (rx.observables.Cfor) this.f34430do.call();
                ((Observable) this.f34431if.call(cfor)).Y3(y22Var);
                cfor.i6(new Cdo(y22Var));
            } catch (Throwable th) {
                s80.m7297goto(th, y22Var);
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$new, reason: invalid class name */
    public static class Cnew extends rx.observables.Cfor<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ rx.observables.Cfor f34434if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(Observable.OnSubscribe onSubscribe, rx.observables.Cfor cfor) {
            super(onSubscribe);
            this.f34434if = cfor;
        }

        @Override // rx.observables.Cfor
        public void i6(Action1<? super Subscription> action1) {
            this.f34434if.i6(action1);
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$this, reason: invalid class name */
    public static final class Cthis<T> extends AtomicLong implements Producer, Subscription {
        public static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        public y22<? super T> child;
        public boolean emitting;
        public Object index;
        public boolean missed;
        public final Ccatch<T> parent;
        public final AtomicLong totalRequested = new AtomicLong();

        public Cthis(Ccatch<T> ccatch, y22<? super T> y22Var) {
            this.parent = ccatch;
            this.child = y22Var;
        }

        public void addTotalRequested(long j) {
            long j2;
            long j3;
            do {
                j2 = this.totalRequested.get();
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = Long.MAX_VALUE;
                }
            } while (!this.totalRequested.compareAndSet(j2, j3));
        }

        public <U> U index() {
            return (U) this.index;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        public long produced(long j) {
            long j2;
            long j3;
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                j3 = j2 - j;
                if (j3 < 0) {
                    throw new IllegalStateException("More produced (" + j + ") than requested (" + j2 + ")");
                }
            } while (!compareAndSet(j2, j3));
            return j3;
        }

        @Override // rx.Producer
        public void request(long j) {
            long j2;
            long j3;
            if (j < 0) {
                return;
            }
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE) {
                    return;
                }
                if (j2 >= 0 && j == 0) {
                    return;
                }
                j3 = j2 + j;
                if (j3 < 0) {
                    j3 = Long.MAX_VALUE;
                }
            } while (!compareAndSet(j2, j3));
            addTotalRequested(j);
            this.parent.m38385try(this);
            this.parent.f34414do.replay(this);
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE) {
                return;
            }
            this.parent.m38379case(this);
            this.parent.m38385try(this);
            this.child = null;
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$try, reason: invalid class name */
    public static class Ctry implements Func0<ReplayBuffer<T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f34435do;

        public Ctry(int i) {
            this.f34435do = i;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReplayBuffer<T> call() {
            return new Cconst(this.f34435do);
        }
    }

    private OperatorReplay(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<Ccatch<T>> atomicReference, Func0<? extends ReplayBuffer<T>> func0) {
        super(onSubscribe);
        this.f34402if = observable;
        this.f34401for = atomicReference;
        this.f34403new = func0;
    }

    public static <T> rx.observables.Cfor<T> k6(Observable<? extends T> observable) {
        return o6(observable, f34400try);
    }

    public static <T> rx.observables.Cfor<T> l6(Observable<? extends T> observable, int i) {
        return i == Integer.MAX_VALUE ? k6(observable) : o6(observable, new Ctry(i));
    }

    public static <T> rx.observables.Cfor<T> m6(Observable<? extends T> observable, long j, TimeUnit timeUnit, rx.Cif cif) {
        return n6(observable, j, timeUnit, cif, Integer.MAX_VALUE);
    }

    public static <T> rx.observables.Cfor<T> n6(Observable<? extends T> observable, long j, TimeUnit timeUnit, rx.Cif cif, int i) {
        return o6(observable, new Ccase(i, timeUnit.toMillis(j), cif));
    }

    public static <T> rx.observables.Cfor<T> o6(Observable<? extends T> observable, Func0<? extends ReplayBuffer<T>> func0) {
        AtomicReference atomicReference = new AtomicReference();
        return new OperatorReplay(new Celse(atomicReference, func0), observable, atomicReference, func0);
    }

    public static <T, U, R> Observable<R> p6(Func0<? extends rx.observables.Cfor<U>> func0, Func1<? super Observable<U>, ? extends Observable<R>> func1) {
        return Observable.q5(new Cif(func0, func1));
    }

    public static <T> rx.observables.Cfor<T> q6(rx.observables.Cfor<T> cfor, rx.Cif cif) {
        return new Cnew(new Cfor(cfor.q2(cif)), cfor);
    }

    @Override // rx.observables.Cfor
    public void i6(Action1<? super Subscription> action1) {
        Ccatch<T> ccatch;
        while (true) {
            ccatch = this.f34401for.get();
            if (ccatch != null && !ccatch.isUnsubscribed()) {
                break;
            }
            Ccatch<T> ccatch2 = new Ccatch<>(this.f34403new.call());
            ccatch2.m38382for();
            if (this.f34401for.compareAndSet(ccatch, ccatch2)) {
                ccatch = ccatch2;
                break;
            }
        }
        boolean z = !ccatch.f34418goto.get() && ccatch.f34418goto.compareAndSet(false, true);
        action1.call(ccatch);
        if (z) {
            this.f34402if.r5(ccatch);
        }
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        Ccatch<T> ccatch = this.f34401for.get();
        return ccatch == null || ccatch.isUnsubscribed();
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.f34401for.lazySet(null);
    }
}
