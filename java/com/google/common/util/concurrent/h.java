package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Supplier;
import com.google.common.collect.r1;
import com.google.common.collect.v0;
import com.google.common.collect.y1;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@li0
@o8
/* loaded from: classes2.dex */
public abstract class h<L> {

    /* renamed from: do, reason: not valid java name */
    private static final int f15780do = 1024;

    /* renamed from: new, reason: not valid java name */
    private static final int f15783new = -1;

    /* renamed from: if, reason: not valid java name */
    private static final Supplier<ReadWriteLock> f15782if = new Ctry();

    /* renamed from: for, reason: not valid java name */
    private static final Supplier<ReadWriteLock> f15781for = new Ccase();

    /* renamed from: com.google.common.util.concurrent.h$break, reason: invalid class name */
    public static class Cbreak extends Semaphore {
        public long unused1;
        public long unused2;
        public long unused3;

        public Cbreak(int i) {
            super(i, false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$case, reason: invalid class name */
    public static class Ccase implements Supplier<ReadWriteLock> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReadWriteLock get() {
            return new Csuper();
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$catch, reason: invalid class name */
    public static abstract class Ccatch<L> extends h<L> {

        /* renamed from: try, reason: not valid java name */
        public final int f15784try;

        public Ccatch(int i) {
            super(null);
            af1.m235try(i > 0, "Stripes must be positive");
            this.f15784try = i > 1073741824 ? -1 : h.m18177new(i) - 1;
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: case */
        public final L mo18182case(Object obj) {
            return mo18183else(mo18185goto(obj));
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: goto */
        public final int mo18185goto(Object obj) {
            return h.m18181while(obj.hashCode()) & this.f15784try;
        }
    }

    @af2
    /* renamed from: com.google.common.util.concurrent.h$class, reason: invalid class name */
    public static class Cclass<L> extends Ccatch<L> {

        /* renamed from: case, reason: not valid java name */
        public final AtomicReferenceArray<Cdo<? extends L>> f15785case;

        /* renamed from: else, reason: not valid java name */
        public final Supplier<L> f15786else;

        /* renamed from: goto, reason: not valid java name */
        public final int f15787goto;

        /* renamed from: this, reason: not valid java name */
        public final ReferenceQueue<L> f15788this;

        /* renamed from: com.google.common.util.concurrent.h$class$do, reason: invalid class name */
        public static final class Cdo<L> extends WeakReference<L> {

            /* renamed from: do, reason: not valid java name */
            public final int f15789do;

            public Cdo(L l, int i, ReferenceQueue<L> referenceQueue) {
                super(l, referenceQueue);
                this.f15789do = i;
            }
        }

        public Cclass(int i, Supplier<L> supplier) {
            super(i);
            this.f15788this = new ReferenceQueue<>();
            int i2 = this.f15784try;
            int i3 = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.f15787goto = i3;
            this.f15785case = new AtomicReferenceArray<>(i3);
            this.f15786else = supplier;
        }

        /* renamed from: import, reason: not valid java name */
        private void m18188import() {
            while (true) {
                Reference<? extends L> referencePoll = this.f15788this.poll();
                if (referencePoll == null) {
                    return;
                }
                Cdo<? extends L> cdo = (Cdo) referencePoll;
                this.f15785case.compareAndSet(cdo.f15789do, cdo, null);
            }
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: else */
        public L mo18183else(int i) {
            if (this.f15787goto != Integer.MAX_VALUE) {
                af1.m222private(i, mo18186throw());
            }
            Cdo<? extends L> cdo = this.f15785case.get(i);
            L l = cdo == null ? null : cdo.get();
            if (l != null) {
                return l;
            }
            L l2 = this.f15786else.get();
            Cdo<? extends L> cdo2 = new Cdo<>(l2, i, this.f15788this);
            while (!this.f15785case.compareAndSet(i, cdo, cdo2)) {
                cdo = this.f15785case.get(i);
                L l3 = cdo == null ? null : cdo.get();
                if (l3 != null) {
                    return l3;
                }
            }
            m18188import();
            return l2;
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: throw */
        public int mo18186throw() {
            return this.f15787goto;
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$const, reason: invalid class name */
    public static final class Cconst extends Cswitch {

        /* renamed from: do, reason: not valid java name */
        private final Condition f15790do;

        /* renamed from: if, reason: not valid java name */
        private final Csuper f15791if;

        public Cconst(Condition condition, Csuper csuper) {
            this.f15790do = condition;
            this.f15791if = csuper;
        }

        @Override // com.google.common.util.concurrent.Cswitch
        /* renamed from: do, reason: not valid java name */
        public Condition mo18189do() {
            return this.f15790do;
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$do, reason: invalid class name */
    public static class Cdo implements Supplier<Lock> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Lock get() {
            return new Cthis();
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$else, reason: invalid class name */
    public static class Celse<L> extends Ccatch<L> {

        /* renamed from: case, reason: not valid java name */
        private final Object[] f15792case;

        public /* synthetic */ Celse(int i, Supplier supplier, Cdo cdo) {
            this(i, supplier);
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: else */
        public L mo18183else(int i) {
            return (L) this.f15792case[i];
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: throw */
        public int mo18186throw() {
            return this.f15792case.length;
        }

        private Celse(int i, Supplier<L> supplier) {
            super(i);
            int i2 = 0;
            af1.m235try(i <= 1073741824, "Stripes must be <= 2^30)");
            this.f15792case = new Object[this.f15784try + 1];
            while (true) {
                Object[] objArr = this.f15792case;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = supplier.get();
                i2++;
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$final, reason: invalid class name */
    public static final class Cfinal extends Cpackage {

        /* renamed from: do, reason: not valid java name */
        private final Lock f15793do;

        /* renamed from: if, reason: not valid java name */
        private final Csuper f15794if;

        public Cfinal(Lock lock, Csuper csuper) {
            this.f15793do = lock;
            this.f15794if = csuper;
        }

        @Override // com.google.common.util.concurrent.Cpackage
        /* renamed from: do, reason: not valid java name */
        public Lock mo18191do() {
            return this.f15793do;
        }

        @Override // com.google.common.util.concurrent.Cpackage, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new Cconst(this.f15793do.newCondition(), this.f15794if);
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$for, reason: invalid class name */
    public static class Cfor implements Supplier<Semaphore> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f15795do;

        public Cfor(int i) {
            this.f15795do = i;
        }

        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Semaphore get() {
            return new Cbreak(this.f15795do);
        }
    }

    @af2
    /* renamed from: com.google.common.util.concurrent.h$goto, reason: invalid class name */
    public static class Cgoto<L> extends Ccatch<L> {

        /* renamed from: case, reason: not valid java name */
        public final ConcurrentMap<Integer, L> f15796case;

        /* renamed from: else, reason: not valid java name */
        public final Supplier<L> f15797else;

        /* renamed from: goto, reason: not valid java name */
        public final int f15798goto;

        public Cgoto(int i, Supplier<L> supplier) {
            super(i);
            int i2 = this.f15784try;
            this.f15798goto = i2 == -1 ? Integer.MAX_VALUE : i2 + 1;
            this.f15797else = supplier;
            this.f15796case = new y1().m16532const().m16539this();
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: else */
        public L mo18183else(int i) {
            if (this.f15798goto != Integer.MAX_VALUE) {
                af1.m222private(i, mo18186throw());
            }
            L l = this.f15796case.get(Integer.valueOf(i));
            if (l != null) {
                return l;
            }
            L l2 = this.f15797else.get();
            return (L) com.google.common.base.Csuper.m15183do(this.f15796case.putIfAbsent(Integer.valueOf(i), l2), l2);
        }

        @Override // com.google.common.util.concurrent.h
        /* renamed from: throw */
        public int mo18186throw() {
            return this.f15798goto;
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$if, reason: invalid class name */
    public static class Cif implements Supplier<Lock> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Lock get() {
            return new ReentrantLock(false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$new, reason: invalid class name */
    public static class Cnew implements Supplier<Semaphore> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f15799do;

        public Cnew(int i) {
            this.f15799do = i;
        }

        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Semaphore get() {
            return new Semaphore(this.f15799do, false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$super, reason: invalid class name */
    public static final class Csuper implements ReadWriteLock {

        /* renamed from: do, reason: not valid java name */
        private final ReadWriteLock f15800do = new ReentrantReadWriteLock();

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new Cfinal(this.f15800do.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new Cfinal(this.f15800do.writeLock(), this);
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$this, reason: invalid class name */
    public static class Cthis extends ReentrantLock {
        public long unused1;
        public long unused2;
        public long unused3;

        public Cthis() {
            super(false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.h$try, reason: invalid class name */
    public static class Ctry implements Supplier<ReadWriteLock> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ReadWriteLock get() {
            return new ReentrantReadWriteLock();
        }
    }

    public /* synthetic */ h(Cdo cdo) {
        this();
    }

    /* renamed from: break, reason: not valid java name */
    public static h<Lock> m18170break(int i) {
        return m18179this(i, new Cif());
    }

    /* renamed from: catch, reason: not valid java name */
    public static h<ReadWriteLock> m18171catch(int i) {
        return m18179this(i, f15781for);
    }

    /* renamed from: class, reason: not valid java name */
    public static h<Semaphore> m18172class(int i, int i2) {
        return m18179this(i, new Cnew(i2));
    }

    /* renamed from: const, reason: not valid java name */
    public static h<Lock> m18173const(int i) {
        return m18180try(i, new Cdo());
    }

    /* renamed from: final, reason: not valid java name */
    public static h<ReadWriteLock> m18175final(int i) {
        return m18180try(i, f15782if);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static int m18177new(int i) {
        return 1 << com.google.common.math.Cnew.m17354throw(i, RoundingMode.CEILING);
    }

    /* renamed from: super, reason: not valid java name */
    public static h<Semaphore> m18178super(int i, int i2) {
        return m18180try(i, new Cfor(i2));
    }

    /* renamed from: this, reason: not valid java name */
    private static <L> h<L> m18179this(int i, Supplier<L> supplier) {
        return i < 1024 ? new Cclass(i, supplier) : new Cgoto(i, supplier);
    }

    /* renamed from: try, reason: not valid java name */
    public static <L> h<L> m18180try(int i, Supplier<L> supplier) {
        return new Celse(i, supplier, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public static int m18181while(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    /* renamed from: case, reason: not valid java name */
    public abstract L mo18182case(Object obj);

    /* renamed from: else, reason: not valid java name */
    public abstract L mo18183else(int i);

    /* renamed from: for, reason: not valid java name */
    public Iterable<L> m18184for(Iterable<?> iterable) {
        Object[] objArrD = r1.d(iterable, Object.class);
        if (objArrD.length == 0) {
            return v0.of();
        }
        int[] iArr = new int[objArrD.length];
        for (int i = 0; i < objArrD.length; i++) {
            iArr[i] = mo18185goto(objArrD[i]);
        }
        Arrays.sort(iArr);
        int i2 = iArr[0];
        objArrD[0] = mo18183else(i2);
        for (int i3 = 1; i3 < objArrD.length; i3++) {
            int i4 = iArr[i3];
            if (i4 == i2) {
                objArrD[i3] = objArrD[i3 - 1];
            } else {
                objArrD[i3] = mo18183else(i4);
                i2 = i4;
            }
        }
        return Collections.unmodifiableList(Arrays.asList(objArrD));
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract int mo18185goto(Object obj);

    /* renamed from: throw, reason: not valid java name */
    public abstract int mo18186throw();

    private h() {
    }
}
