package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Csuper;
import com.google.common.collect.Maps;
import com.google.common.collect.c3;
import com.google.common.collect.g1;
import com.google.common.collect.x1;
import com.google.common.collect.y1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;

@lf
@li0
@o8
/* loaded from: classes2.dex */
public class CycleDetectingLockFactory {

    /* renamed from: do, reason: not valid java name */
    public final Policy f15640do;

    /* renamed from: if, reason: not valid java name */
    private static final ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, Celse>> f15638if = new y1().m16531class().m16539this();

    /* renamed from: for, reason: not valid java name */
    private static final Logger f15637for = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: new, reason: not valid java name */
    private static final ThreadLocal<ArrayList<Celse>> f15639new = new Cdo();

    public interface CycleDetectingLock {
        Celse getLockGraphNode();

        boolean isAcquiredByCurrentThread();
    }

    @o8
    public interface Policy {
        void handlePotentialDeadlock(Cthis cthis);
    }

    @o8
    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$break, reason: invalid class name */
    public static final class Cbreak<E extends Enum<E>> extends CycleDetectingLockFactory {

        /* renamed from: try, reason: not valid java name */
        private final Map<E, Celse> f15641try;

        @af2
        public Cbreak(Policy policy, Map<E, Celse> map) {
            super(policy, null);
            this.f15641try = map;
        }

        /* renamed from: import, reason: not valid java name */
        public ReentrantReadWriteLock m18005import(E e, boolean z) {
            return this.f15640do == Cgoto.DISABLED ? new ReentrantReadWriteLock(z) : new Cnew(this, this.f15641try.get(e), z, null);
        }

        /* renamed from: super, reason: not valid java name */
        public ReentrantLock m18006super(E e) {
            return m18007throw(e, false);
        }

        /* renamed from: throw, reason: not valid java name */
        public ReentrantLock m18007throw(E e, boolean z) {
            return this.f15640do == Cgoto.DISABLED ? new ReentrantLock(z) : new Cif(this, this.f15641try.get(e), z, null);
        }

        /* renamed from: while, reason: not valid java name */
        public ReentrantReadWriteLock m18008while(E e) {
            return m18005import(e, false);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$case, reason: invalid class name */
    public static class Ccase extends IllegalStateException {
        public static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        public static final g1<String> EXCLUDED_CLASS_NAMES = g1.of(CycleDetectingLockFactory.class.getName(), Ccase.class.getName(), Celse.class.getName());

        public Ccase(Celse celse, Celse celse2) {
            super(celse.m18013new() + " -> " + celse2.m18013new());
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                if (Cbreak.class.getName().equals(stackTrace[i].getClassName())) {
                    setStackTrace(EMPTY_STACK_TRACE);
                    return;
                } else {
                    if (!EXCLUDED_CLASS_NAMES.contains(stackTrace[i].getClassName())) {
                        setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i, length));
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$do, reason: invalid class name */
    public static class Cdo extends ThreadLocal<ArrayList<Celse>> {
        @Override // java.lang.ThreadLocal
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ArrayList<Celse> initialValue() {
            return x1.m16512return(3);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: for, reason: not valid java name */
        public final String f15643for;

        /* renamed from: do, reason: not valid java name */
        public final Map<Celse, Ccase> f15642do = new y1().m16531class().m16539this();

        /* renamed from: if, reason: not valid java name */
        public final Map<Celse, Cthis> f15644if = new y1().m16531class().m16539this();

        public Celse(String str) {
            this.f15643for = (String) af1.m205continue(str);
        }

        @b51
        /* renamed from: for, reason: not valid java name */
        private Ccase m18010for(Celse celse, Set<Celse> set) {
            if (!set.add(this)) {
                return null;
            }
            Ccase ccase = this.f15642do.get(celse);
            if (ccase != null) {
                return ccase;
            }
            for (Map.Entry<Celse, Ccase> entry : this.f15642do.entrySet()) {
                Celse key = entry.getKey();
                Ccase ccaseM18010for = key.m18010for(celse, set);
                if (ccaseM18010for != null) {
                    Ccase ccase2 = new Ccase(key, this);
                    ccase2.setStackTrace(entry.getValue().getStackTrace());
                    ccase2.initCause(ccaseM18010for);
                    return ccase2;
                }
            }
            return null;
        }

        /* renamed from: do, reason: not valid java name */
        public void m18011do(Policy policy, Celse celse) {
            af1.K(this != celse, "Attempted to acquire multiple locks with the same rank %s", celse.m18013new());
            if (this.f15642do.containsKey(celse)) {
                return;
            }
            Cthis cthis = this.f15644if.get(celse);
            Cdo cdo = null;
            if (cthis != null) {
                policy.handlePotentialDeadlock(new Cthis(celse, this, cthis.getConflictingStackTrace(), cdo));
                return;
            }
            Ccase ccaseM18010for = celse.m18010for(this, c3.m15690extends());
            if (ccaseM18010for == null) {
                this.f15642do.put(celse, new Ccase(celse, this));
                return;
            }
            Cthis cthis2 = new Cthis(celse, this, ccaseM18010for, cdo);
            this.f15644if.put(celse, cthis2);
            policy.handlePotentialDeadlock(cthis2);
        }

        /* renamed from: if, reason: not valid java name */
        public void m18012if(Policy policy, List<Celse> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                m18011do(policy, list.get(i));
            }
        }

        /* renamed from: new, reason: not valid java name */
        public String m18013new() {
            return this.f15643for;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @o8
    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$goto, reason: invalid class name */
    public static abstract class Cgoto implements Policy {
        public static final Cgoto DISABLED;
        public static final Cgoto THROW;
        public static final Cgoto WARN;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cgoto[] f15645do;

        /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$goto$do, reason: invalid class name */
        public enum Cdo extends Cgoto {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(Cthis cthis) {
                throw cthis;
            }
        }

        /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$goto$for, reason: invalid class name */
        public enum Cfor extends Cgoto {
            public Cfor(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(Cthis cthis) {
            }
        }

        /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$goto$if, reason: invalid class name */
        public enum Cif extends Cgoto {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(Cthis cthis) {
                CycleDetectingLockFactory.f15637for.log(Level.SEVERE, "Detected potential deadlock", (Throwable) cthis);
            }
        }

        static {
            Cdo cdo = new Cdo("THROW", 0);
            THROW = cdo;
            Cif cif = new Cif("WARN", 1);
            WARN = cif;
            Cfor cfor = new Cfor("DISABLED", 2);
            DISABLED = cfor;
            f15645do = new Cgoto[]{cdo, cif, cfor};
        }

        private Cgoto(String str, int i) {
        }

        public static Cgoto valueOf(String str) {
            return (Cgoto) Enum.valueOf(Cgoto.class, str);
        }

        public static Cgoto[] values() {
            return (Cgoto[]) f15645do.clone();
        }

        public /* synthetic */ Cgoto(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$if, reason: invalid class name */
    public final class Cif extends ReentrantLock implements CycleDetectingLock {
        private final Celse lockGraphNode;

        public /* synthetic */ Cif(CycleDetectingLockFactory cycleDetectingLockFactory, Celse celse, boolean z, Cdo cdo) {
            this(celse, z);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public Celse getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public boolean isAcquiredByCurrentThread() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m17993do(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m17993do(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m17996goto(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m17993do(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this);
            }
        }

        private Cif(Celse celse, boolean z) {
            super(z);
            this.lockGraphNode = (Celse) af1.m205continue(celse);
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m17993do(this);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m17996goto(this);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$new, reason: invalid class name */
    public final class Cnew extends ReentrantReadWriteLock implements CycleDetectingLock {
        private final Celse lockGraphNode;
        private final Cfor readLock;
        private final Ctry writeLock;

        public /* synthetic */ Cnew(CycleDetectingLockFactory cycleDetectingLockFactory, Celse celse, boolean z, Cdo cdo) {
            this(celse, z);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public Celse getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public boolean isAcquiredByCurrentThread() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }

        private Cnew(Celse celse, boolean z) {
            super(z);
            this.readLock = CycleDetectingLockFactory.this.new Cfor(this);
            this.writeLock = CycleDetectingLockFactory.this.new Ctry(this);
            this.lockGraphNode = (Celse) af1.m205continue(celse);
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.readLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.writeLock;
        }
    }

    @o8
    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$this, reason: invalid class name */
    public static final class Cthis extends Ccase {
        private final Ccase conflictingStackTrace;

        public /* synthetic */ Cthis(Celse celse, Celse celse2, Ccase ccase, Cdo cdo) {
            this(celse, celse2, ccase);
        }

        public Ccase getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            for (Throwable cause = this.conflictingStackTrace; cause != null; cause = cause.getCause()) {
                sb.append(", ");
                sb.append(cause.getMessage());
            }
            return sb.toString();
        }

        private Cthis(Celse celse, Celse celse2, Ccase ccase) {
            super(celse, celse2);
            this.conflictingStackTrace = ccase;
            initCause(ccase);
        }
    }

    public /* synthetic */ CycleDetectingLockFactory(Policy policy, Cdo cdo) {
        this(policy);
    }

    /* renamed from: break, reason: not valid java name */
    public static <E extends Enum<E>> Cbreak<E> m17991break(Class<E> cls, Policy policy) {
        af1.m205continue(cls);
        af1.m205continue(policy);
        return new Cbreak<>(policy, m17994else(cls));
    }

    /* renamed from: case, reason: not valid java name */
    private static String m17992case(Enum<?> r2) {
        return r2.getDeclaringClass().getSimpleName() + "." + r2.name();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public void m17993do(CycleDetectingLock cycleDetectingLock) {
        if (cycleDetectingLock.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList<Celse> arrayList = f15639new.get();
        Celse lockGraphNode = cycleDetectingLock.getLockGraphNode();
        lockGraphNode.m18012if(this.f15640do, arrayList);
        arrayList.add(lockGraphNode);
    }

    /* renamed from: else, reason: not valid java name */
    private static Map<? extends Enum, Celse> m17994else(Class<? extends Enum> cls) {
        ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, Celse>> concurrentMap = f15638if;
        Map<? extends Enum, Celse> map = concurrentMap.get(cls);
        if (map != null) {
            return map;
        }
        Map<? extends Enum, Celse> mapM18000try = m18000try(cls);
        return (Map) Csuper.m15183do(concurrentMap.putIfAbsent(cls, mapM18000try), mapM18000try);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static void m17996goto(CycleDetectingLock cycleDetectingLock) {
        if (cycleDetectingLock.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList<Celse> arrayList = f15639new.get();
        Celse lockGraphNode = cycleDetectingLock.getLockGraphNode();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == lockGraphNode) {
                arrayList.remove(size);
                return;
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static CycleDetectingLockFactory m17999this(Policy policy) {
        return new CycleDetectingLockFactory(policy);
    }

    @af2
    /* renamed from: try, reason: not valid java name */
    public static <E extends Enum<E>> Map<E, Celse> m18000try(Class<E> cls) {
        EnumMap enumMapJ = Maps.j(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList arrayListM16512return = x1.m16512return(length);
        int i = 0;
        for (E e : enumConstants) {
            Celse celse = new Celse(m17992case(e));
            arrayListM16512return.add(celse);
            enumMapJ.put((EnumMap) e, (E) celse);
        }
        for (int i2 = 1; i2 < length; i2++) {
            ((Celse) arrayListM16512return.get(i2)).m18012if(Cgoto.THROW, arrayListM16512return.subList(0, i2));
        }
        while (i < length - 1) {
            i++;
            ((Celse) arrayListM16512return.get(i)).m18012if(Cgoto.DISABLED, arrayListM16512return.subList(i, length));
        }
        return Collections.unmodifiableMap(enumMapJ);
    }

    /* renamed from: catch, reason: not valid java name */
    public ReentrantLock m18001catch(String str) {
        return m18002class(str, false);
    }

    /* renamed from: class, reason: not valid java name */
    public ReentrantLock m18002class(String str, boolean z) {
        return this.f15640do == Cgoto.DISABLED ? new ReentrantLock(z) : new Cif(this, new Celse(str), z, null);
    }

    /* renamed from: const, reason: not valid java name */
    public ReentrantReadWriteLock m18003const(String str) {
        return m18004final(str, false);
    }

    /* renamed from: final, reason: not valid java name */
    public ReentrantReadWriteLock m18004final(String str, boolean z) {
        return this.f15640do == Cgoto.DISABLED ? new ReentrantReadWriteLock(z) : new Cnew(this, new Celse(str), z, null);
    }

    private CycleDetectingLockFactory(Policy policy) {
        this.f15640do = (Policy) af1.m205continue(policy);
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$for, reason: invalid class name */
    public class Cfor extends ReentrantReadWriteLock.ReadLock {

        @hf2
        public final Cnew readWriteLock;

        public Cfor(Cnew cnew) {
            super(cnew);
            this.readWriteLock = cnew;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$try, reason: invalid class name */
    public class Ctry extends ReentrantReadWriteLock.WriteLock {

        @hf2
        public final Cnew readWriteLock;

        public Ctry(Cnew cnew) {
            super(cnew);
            this.readWriteLock = cnew;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.m17993do(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.m17996goto(this.readWriteLock);
            }
        }
    }
}
