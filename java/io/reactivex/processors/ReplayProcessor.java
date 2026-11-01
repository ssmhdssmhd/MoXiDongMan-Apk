package io.reactivex.processors;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.r6;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class ReplayProcessor<T> extends io.reactivex.processors.Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public boolean f27465for;

    /* renamed from: if, reason: not valid java name */
    public final ReplayBuffer<T> f27466if;

    /* renamed from: new, reason: not valid java name */
    public final AtomicReference<Cif<T>[]> f27467new = new AtomicReference<>(f27462case);

    /* renamed from: try, reason: not valid java name */
    private static final Object[] f27464try = new Object[0];

    /* renamed from: case, reason: not valid java name */
    public static final Cif[] f27462case = new Cif[0];

    /* renamed from: else, reason: not valid java name */
    public static final Cif[] f27463else = new Cif[0];

    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        Throwable getError();

        @a51
        T getValue();

        T[] getValues(T[] tArr);

        boolean isDone();

        void next(T t);

        void replay(Cif<T> cif);

        int size();

        void trimHead();
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$case, reason: invalid class name */
    public static final class Ccase<T> implements ReplayBuffer<T> {

        /* renamed from: do, reason: not valid java name */
        public final List<T> f27468do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f27469for;

        /* renamed from: if, reason: not valid java name */
        public Throwable f27470if;

        /* renamed from: new, reason: not valid java name */
        public volatile int f27471new;

        public Ccase(int i) {
            this.f27468do = new ArrayList(io.reactivex.internal.functions.Cif.m29470goto(i, "capacityHint"));
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void complete() {
            this.f27469for = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void error(Throwable th) {
            this.f27470if = th;
            this.f27469for = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public Throwable getError() {
            return this.f27470if;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        @a51
        public T getValue() {
            int i = this.f27471new;
            if (i == 0) {
                return null;
            }
            return this.f27468do.get(i - 1);
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T[] getValues(T[] tArr) {
            int i = this.f27471new;
            if (i == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<T> list = this.f27468do;
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

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public boolean isDone() {
            return this.f27469for;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void next(T t) {
            this.f27468do.add(t);
            this.f27471new++;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void replay(Cif<T> cif) {
            if (cif.getAndIncrement() != 0) {
                return;
            }
            List<T> list = this.f27468do;
            Subscriber<? super T> subscriber = cif.downstream;
            Integer num = (Integer) cif.index;
            int iIntValue = 0;
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                cif.index = 0;
            }
            long j = cif.emitted;
            int iAddAndGet = 1;
            do {
                long j2 = cif.requested.get();
                while (j != j2) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    boolean z = this.f27469for;
                    int i = this.f27471new;
                    if (z && iIntValue == i) {
                        cif.index = null;
                        cif.cancelled = true;
                        Throwable th = this.f27470if;
                        if (th == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (iIntValue == i) {
                        break;
                    }
                    subscriber.onNext(list.get(iIntValue));
                    iIntValue++;
                    j++;
                }
                if (j == j2) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    boolean z2 = this.f27469for;
                    int i2 = this.f27471new;
                    if (z2 && iIntValue == i2) {
                        cif.index = null;
                        cif.cancelled = true;
                        Throwable th2 = this.f27470if;
                        if (th2 == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                cif.index = Integer.valueOf(iIntValue);
                cif.emitted = j;
                iAddAndGet = cif.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public int size() {
            return this.f27471new;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void trimHead() {
        }
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Cdo<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        public final T value;

        public Cdo(T t) {
            this.value = t;
        }
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$for, reason: invalid class name */
    public static final class Cfor<T> implements ReplayBuffer<T> {

        /* renamed from: case, reason: not valid java name */
        public volatile Ctry<T> f27472case;

        /* renamed from: do, reason: not valid java name */
        public final int f27473do;

        /* renamed from: else, reason: not valid java name */
        public Ctry<T> f27474else;

        /* renamed from: for, reason: not valid java name */
        public final TimeUnit f27475for;

        /* renamed from: goto, reason: not valid java name */
        public Throwable f27476goto;

        /* renamed from: if, reason: not valid java name */
        public final long f27477if;

        /* renamed from: new, reason: not valid java name */
        public final io.reactivex.Ctry f27478new;

        /* renamed from: this, reason: not valid java name */
        public volatile boolean f27479this;

        /* renamed from: try, reason: not valid java name */
        public int f27480try;

        public Cfor(int i, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
            this.f27473do = io.reactivex.internal.functions.Cif.m29470goto(i, "maxSize");
            this.f27477if = io.reactivex.internal.functions.Cif.m29473this(j, "maxAge");
            this.f27475for = (TimeUnit) io.reactivex.internal.functions.Cif.m29468else(timeUnit, "unit is null");
            this.f27478new = (io.reactivex.Ctry) io.reactivex.internal.functions.Cif.m29468else(ctry, "scheduler is null");
            Ctry<T> ctry2 = new Ctry<>(null, 0L);
            this.f27474else = ctry2;
            this.f27472case = ctry2;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void complete() {
            m29764new();
            this.f27479this = true;
        }

        /* renamed from: do, reason: not valid java name */
        public Ctry<T> m29761do() {
            Ctry<T> ctry;
            Ctry<T> ctry2 = this.f27472case;
            long jMo29783for = this.f27478new.mo29783for(this.f27475for) - this.f27477if;
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

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void error(Throwable th) {
            m29764new();
            this.f27476goto = th;
            this.f27479this = true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m29762for() {
            int i = this.f27480try;
            if (i > this.f27473do) {
                this.f27480try = i - 1;
                this.f27472case = this.f27472case.get();
            }
            long jMo29783for = this.f27478new.mo29783for(this.f27475for) - this.f27477if;
            Ctry<T> ctry = this.f27472case;
            while (this.f27480try > 1) {
                Ctry<T> ctry2 = ctry.get();
                if (ctry2 == null) {
                    this.f27472case = ctry;
                    return;
                } else if (ctry2.time > jMo29783for) {
                    this.f27472case = ctry;
                    return;
                } else {
                    this.f27480try--;
                    ctry = ctry2;
                }
            }
            this.f27472case = ctry;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public Throwable getError() {
            return this.f27476goto;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        @a51
        public T getValue() {
            Ctry<T> ctry = this.f27472case;
            while (true) {
                Ctry<T> ctry2 = ctry.get();
                if (ctry2 == null) {
                    break;
                }
                ctry = ctry2;
            }
            if (ctry.time < this.f27478new.mo29783for(this.f27475for) - this.f27477if) {
                return null;
            }
            return ctry.value;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T[] getValues(T[] tArr) {
            Ctry<T> ctryM29761do = m29761do();
            int iM29763if = m29763if(ctryM29761do);
            if (iM29763if != 0) {
                if (tArr.length < iM29763if) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iM29763if));
                }
                for (int i = 0; i != iM29763if; i++) {
                    ctryM29761do = ctryM29761do.get();
                    tArr[i] = ctryM29761do.value;
                }
                if (tArr.length > iM29763if) {
                    tArr[iM29763if] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        /* renamed from: if, reason: not valid java name */
        public int m29763if(Ctry<T> ctry) {
            int i = 0;
            while (i != Integer.MAX_VALUE && (ctry = ctry.get()) != null) {
                i++;
            }
            return i;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public boolean isDone() {
            return this.f27479this;
        }

        /* renamed from: new, reason: not valid java name */
        public void m29764new() {
            long jMo29783for = this.f27478new.mo29783for(this.f27475for) - this.f27477if;
            Ctry<T> ctry = this.f27472case;
            while (true) {
                Ctry<T> ctry2 = ctry.get();
                if (ctry2 == null) {
                    if (ctry.value != null) {
                        this.f27472case = new Ctry<>(null, 0L);
                        return;
                    } else {
                        this.f27472case = ctry;
                        return;
                    }
                }
                if (ctry2.time > jMo29783for) {
                    if (ctry.value == null) {
                        this.f27472case = ctry;
                        return;
                    }
                    Ctry<T> ctry3 = new Ctry<>(null, 0L);
                    ctry3.lazySet(ctry.get());
                    this.f27472case = ctry3;
                    return;
                }
                ctry = ctry2;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void next(T t) {
            Ctry<T> ctry = new Ctry<>(t, this.f27478new.mo29783for(this.f27475for));
            Ctry<T> ctry2 = this.f27474else;
            this.f27474else = ctry;
            this.f27480try++;
            ctry2.set(ctry);
            m29762for();
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void replay(Cif<T> cif) {
            if (cif.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = cif.downstream;
            Ctry<T> ctryM29761do = (Ctry) cif.index;
            if (ctryM29761do == null) {
                ctryM29761do = m29761do();
            }
            long j = cif.emitted;
            int iAddAndGet = 1;
            do {
                long j2 = cif.requested.get();
                while (j != j2) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    boolean z = this.f27479this;
                    Ctry<T> ctry = ctryM29761do.get();
                    boolean z2 = ctry == null;
                    if (z && z2) {
                        cif.index = null;
                        cif.cancelled = true;
                        Throwable th = this.f27476goto;
                        if (th == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(ctry.value);
                    j++;
                    ctryM29761do = ctry;
                }
                if (j == j2) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    if (this.f27479this && ctryM29761do.get() == null) {
                        cif.index = null;
                        cif.cancelled = true;
                        Throwable th2 = this.f27476goto;
                        if (th2 == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                cif.index = ctryM29761do;
                cif.emitted = j;
                iAddAndGet = cif.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public int size() {
            return m29763if(m29761do());
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void trimHead() {
            if (this.f27472case.value != null) {
                Ctry<T> ctry = new Ctry<>(null, 0L);
                ctry.lazySet(this.f27472case.get());
                this.f27472case = ctry;
            }
        }
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 466549804534799122L;
        public volatile boolean cancelled;
        public final Subscriber<? super T> downstream;
        public long emitted;
        public Object index;
        public final AtomicLong requested = new AtomicLong();
        public final ReplayProcessor<T> state;

        public Cif(Subscriber<? super T> subscriber, ReplayProcessor<T> replayProcessor) {
            this.downstream = subscriber;
            this.state = replayProcessor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.state.c8(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                this.state.f27466if.replay(this);
            }
        }
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$new, reason: invalid class name */
    public static final class Cnew<T> implements ReplayBuffer<T> {

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f27481case;

        /* renamed from: do, reason: not valid java name */
        public final int f27482do;

        /* renamed from: for, reason: not valid java name */
        public volatile Cdo<T> f27483for;

        /* renamed from: if, reason: not valid java name */
        public int f27484if;

        /* renamed from: new, reason: not valid java name */
        public Cdo<T> f27485new;

        /* renamed from: try, reason: not valid java name */
        public Throwable f27486try;

        public Cnew(int i) {
            this.f27482do = io.reactivex.internal.functions.Cif.m29470goto(i, "maxSize");
            Cdo<T> cdo = new Cdo<>(null);
            this.f27485new = cdo;
            this.f27483for = cdo;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void complete() {
            trimHead();
            this.f27481case = true;
        }

        /* renamed from: do, reason: not valid java name */
        public void m29765do() {
            int i = this.f27484if;
            if (i > this.f27482do) {
                this.f27484if = i - 1;
                this.f27483for = this.f27483for.get();
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void error(Throwable th) {
            this.f27486try = th;
            trimHead();
            this.f27481case = true;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public Throwable getError() {
            return this.f27486try;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T getValue() {
            Cdo<T> cdo = this.f27483for;
            while (true) {
                Cdo<T> cdo2 = cdo.get();
                if (cdo2 == null) {
                    return cdo.value;
                }
                cdo = cdo2;
            }
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public T[] getValues(T[] tArr) {
            Cdo<T> cdo = this.f27483for;
            Cdo<T> cdo2 = cdo;
            int i = 0;
            while (true) {
                cdo2 = cdo2.get();
                if (cdo2 == null) {
                    break;
                }
                i++;
            }
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            for (int i2 = 0; i2 < i; i2++) {
                cdo = cdo.get();
                tArr[i2] = cdo.value;
            }
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public boolean isDone() {
            return this.f27481case;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void next(T t) {
            Cdo<T> cdo = new Cdo<>(t);
            Cdo<T> cdo2 = this.f27485new;
            this.f27485new = cdo;
            this.f27484if++;
            cdo2.set(cdo);
            m29765do();
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void replay(Cif<T> cif) {
            if (cif.getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = cif.downstream;
            Cdo<T> cdo = (Cdo) cif.index;
            if (cdo == null) {
                cdo = this.f27483for;
            }
            long j = cif.emitted;
            int iAddAndGet = 1;
            do {
                long j2 = cif.requested.get();
                while (j != j2) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    boolean z = this.f27481case;
                    Cdo<T> cdo2 = cdo.get();
                    boolean z2 = cdo2 == null;
                    if (z && z2) {
                        cif.index = null;
                        cif.cancelled = true;
                        Throwable th = this.f27486try;
                        if (th == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th);
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    subscriber.onNext(cdo2.value);
                    j++;
                    cdo = cdo2;
                }
                if (j == j2) {
                    if (cif.cancelled) {
                        cif.index = null;
                        return;
                    }
                    if (this.f27481case && cdo.get() == null) {
                        cif.index = null;
                        cif.cancelled = true;
                        Throwable th2 = this.f27486try;
                        if (th2 == null) {
                            subscriber.onComplete();
                            return;
                        } else {
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                cif.index = cdo;
                cif.emitted = j;
                iAddAndGet = cif.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public int size() {
            Cdo<T> cdo = this.f27483for;
            int i = 0;
            while (i != Integer.MAX_VALUE && (cdo = cdo.get()) != null) {
                i++;
            }
            return i;
        }

        @Override // io.reactivex.processors.ReplayProcessor.ReplayBuffer
        public void trimHead() {
            if (this.f27483for.value != null) {
                Cdo<T> cdo = new Cdo<>(null);
                cdo.lazySet(this.f27483for.get());
                this.f27483for = cdo;
            }
        }
    }

    /* renamed from: io.reactivex.processors.ReplayProcessor$try, reason: invalid class name */
    public static final class Ctry<T> extends AtomicReference<Ctry<T>> {
        private static final long serialVersionUID = 6404226426336033100L;
        public final long time;
        public final T value;

        public Ctry(T t, long j) {
            this.value = t;
            this.time = j;
        }
    }

    public ReplayProcessor(ReplayBuffer<T> replayBuffer) {
        this.f27466if = replayBuffer;
    }

    @b41
    @gl
    public static <T> ReplayProcessor<T> S7() {
        return new ReplayProcessor<>(new Ccase(16));
    }

    @b41
    @gl
    public static <T> ReplayProcessor<T> T7(int i) {
        return new ReplayProcessor<>(new Ccase(i));
    }

    public static <T> ReplayProcessor<T> U7() {
        return new ReplayProcessor<>(new Cnew(Integer.MAX_VALUE));
    }

    @b41
    @gl
    public static <T> ReplayProcessor<T> V7(int i) {
        return new ReplayProcessor<>(new Cnew(i));
    }

    @b41
    @gl
    public static <T> ReplayProcessor<T> W7(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return new ReplayProcessor<>(new Cfor(Integer.MAX_VALUE, j, timeUnit, ctry));
    }

    @b41
    @gl
    public static <T> ReplayProcessor<T> X7(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, int i) {
        return new ReplayProcessor<>(new Cfor(i, j, timeUnit, ctry));
    }

    @Override // io.reactivex.processors.Cfor
    @a51
    public Throwable L7() {
        ReplayBuffer<T> replayBuffer = this.f27466if;
        if (replayBuffer.isDone()) {
            return replayBuffer.getError();
        }
        return null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        ReplayBuffer<T> replayBuffer = this.f27466if;
        return replayBuffer.isDone() && replayBuffer.getError() == null;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27467new.get().length != 0;
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        ReplayBuffer<T> replayBuffer = this.f27466if;
        return replayBuffer.isDone() && replayBuffer.getError() != null;
    }

    public boolean Q7(Cif<T> cif) {
        Cif<T>[] cifArr;
        Cif<T>[] cifArr2;
        do {
            cifArr = this.f27467new.get();
            if (cifArr == f27463else) {
                return false;
            }
            int length = cifArr.length;
            cifArr2 = new Cif[length + 1];
            System.arraycopy(cifArr, 0, cifArr2, 0, length);
            cifArr2[length] = cif;
        } while (!this.f27467new.compareAndSet(cifArr, cifArr2));
        return true;
    }

    public void R7() {
        this.f27466if.trimHead();
    }

    public T Y7() {
        return this.f27466if.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] Z7() {
        Object[] objArr = f27464try;
        Object[] objArrA8 = a8(objArr);
        return objArrA8 == objArr ? new Object[0] : objArrA8;
    }

    public T[] a8(T[] tArr) {
        return this.f27466if.getValues(tArr);
    }

    public boolean b8() {
        return this.f27466if.size() != 0;
    }

    public void c8(Cif<T> cif) {
        Cif<T>[] cifArr;
        Cif<T>[] cifArr2;
        do {
            cifArr = this.f27467new.get();
            if (cifArr == f27463else || cifArr == f27462case) {
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
                cifArr2 = f27462case;
            } else {
                Cif<T>[] cifArr3 = new Cif[length - 1];
                System.arraycopy(cifArr, 0, cifArr3, 0, i);
                System.arraycopy(cifArr, i + 1, cifArr3, i, (length - i) - 1);
                cifArr2 = cifArr3;
            }
        } while (!this.f27467new.compareAndSet(cifArr, cifArr2));
    }

    public int d8() {
        return this.f27466if.size();
    }

    public int e8() {
        return this.f27467new.get().length;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif<T> cif = new Cif<>(subscriber, this);
        subscriber.onSubscribe(cif);
        if (Q7(cif) && cif.cancelled) {
            c8(cif);
        } else {
            this.f27466if.replay(cif);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f27465for) {
            return;
        }
        this.f27465for = true;
        ReplayBuffer<T> replayBuffer = this.f27466if;
        replayBuffer.complete();
        for (Cif<T> cif : this.f27467new.getAndSet(f27463else)) {
            replayBuffer.replay(cif);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        io.reactivex.internal.functions.Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27465for) {
            jp1.l(th);
            return;
        }
        this.f27465for = true;
        ReplayBuffer<T> replayBuffer = this.f27466if;
        replayBuffer.error(th);
        for (Cif<T> cif : this.f27467new.getAndSet(f27463else)) {
            replayBuffer.replay(cif);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        io.reactivex.internal.functions.Cif.m29468else(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27465for) {
            return;
        }
        ReplayBuffer<T> replayBuffer = this.f27466if;
        replayBuffer.next(t);
        for (Cif<T> cif : this.f27467new.get()) {
            replayBuffer.replay(cif);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (this.f27465for) {
            subscription.cancel();
        } else {
            subscription.request(Long.MAX_VALUE);
        }
    }
}
