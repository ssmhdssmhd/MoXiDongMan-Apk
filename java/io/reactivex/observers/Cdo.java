package io.reactivex.observers;

import android.support.v4.ef2;
import android.support.v4.t41;
import freemarker.cache.Cimport;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.util.Ccase;
import io.reactivex.observers.Cdo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Cclass;

/* renamed from: io.reactivex.observers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo<T, U extends Cdo<T, U>> implements Disposable {

    /* renamed from: break, reason: not valid java name */
    public boolean f27446break;

    /* renamed from: case, reason: not valid java name */
    public boolean f27447case;

    /* renamed from: else, reason: not valid java name */
    public int f27449else;

    /* renamed from: goto, reason: not valid java name */
    public int f27451goto;

    /* renamed from: new, reason: not valid java name */
    public long f27453new;

    /* renamed from: this, reason: not valid java name */
    public CharSequence f27454this;

    /* renamed from: try, reason: not valid java name */
    public Thread f27455try;

    /* renamed from: if, reason: not valid java name */
    public final List<T> f27452if = new ef2();

    /* renamed from: for, reason: not valid java name */
    public final List<Throwable> f27450for = new ef2();

    /* renamed from: do, reason: not valid java name */
    public final CountDownLatch f27448do = new CountDownLatch(1);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: io.reactivex.observers.do$if, reason: invalid class name */
    public static abstract class Cif implements Runnable {
        public static final Cif SLEEP_1000MS;
        public static final Cif SLEEP_100MS;
        public static final Cif SLEEP_10MS;
        public static final Cif SLEEP_1MS;
        public static final Cif SPIN;
        public static final Cif YIELD;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cif[] f27456do;

        /* renamed from: io.reactivex.observers.do$if$case, reason: invalid class name */
        public enum Ccase extends Cif {
            public Ccase(String str, int i) {
                super(str, i);
            }

            @Override // io.reactivex.observers.Cdo.Cif, java.lang.Runnable
            public void run() throws InterruptedException {
                Cif.sleep(1000);
            }
        }

        /* renamed from: io.reactivex.observers.do$if$do, reason: invalid class name and collision with other inner class name */
        public enum C0346do extends Cif {
            public C0346do(String str, int i) {
                super(str, i);
            }

            @Override // io.reactivex.observers.Cdo.Cif, java.lang.Runnable
            public void run() {
            }
        }

        /* renamed from: io.reactivex.observers.do$if$for, reason: invalid class name */
        public enum Cfor extends Cif {
            public Cfor(String str, int i) {
                super(str, i);
            }

            @Override // io.reactivex.observers.Cdo.Cif, java.lang.Runnable
            public void run() throws InterruptedException {
                Cif.sleep(1);
            }
        }

        /* renamed from: io.reactivex.observers.do$if$if, reason: invalid class name and collision with other inner class name */
        public enum C0347if extends Cif {
            public C0347if(String str, int i) {
                super(str, i);
            }

            @Override // io.reactivex.observers.Cdo.Cif, java.lang.Runnable
            public void run() {
                Thread.yield();
            }
        }

        /* renamed from: io.reactivex.observers.do$if$new, reason: invalid class name */
        public enum Cnew extends Cif {
            public Cnew(String str, int i) {
                super(str, i);
            }

            @Override // io.reactivex.observers.Cdo.Cif, java.lang.Runnable
            public void run() throws InterruptedException {
                Cif.sleep(10);
            }
        }

        /* renamed from: io.reactivex.observers.do$if$try, reason: invalid class name */
        public enum Ctry extends Cif {
            public Ctry(String str, int i) {
                super(str, i);
            }

            @Override // io.reactivex.observers.Cdo.Cif, java.lang.Runnable
            public void run() throws InterruptedException {
                Cif.sleep(100);
            }
        }

        static {
            C0346do c0346do = new C0346do("SPIN", 0);
            SPIN = c0346do;
            C0347if c0347if = new C0347if("YIELD", 1);
            YIELD = c0347if;
            Cfor cfor = new Cfor("SLEEP_1MS", 2);
            SLEEP_1MS = cfor;
            Cnew cnew = new Cnew("SLEEP_10MS", 3);
            SLEEP_10MS = cnew;
            Ctry ctry = new Ctry("SLEEP_100MS", 4);
            SLEEP_100MS = ctry;
            Ccase ccase = new Ccase("SLEEP_1000MS", 5);
            SLEEP_1000MS = ccase;
            f27456do = new Cif[]{c0346do, c0347if, cfor, cnew, ctry, ccase};
        }

        private Cif(String str, int i) {
        }

        public static void sleep(int i) throws InterruptedException {
            try {
                Thread.sleep(i);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

        public static Cif valueOf(String str) {
            return (Cif) Enum.valueOf(Cif.class, str);
        }

        public static Cif[] values() {
            return (Cif[]) f27456do.clone();
        }

        @Override // java.lang.Runnable
        public abstract void run();
    }

    public static String k(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj + " (class: " + obj.getClass().getSimpleName() + ")";
    }

    public final boolean a(long j, TimeUnit timeUnit) {
        try {
            return m29741interface(j, timeUnit);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public final U m29722abstract(Collection<? extends T> collection) {
        return (U) mo29742native().m29745private(collection).m29726class().m29751super();
    }

    public final U b() {
        this.f27446break = false;
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public final U m29723break(Predicate<? super T> predicate) {
        int size = this.f27452if.size();
        for (int i = 0; i < size; i++) {
            try {
                if (predicate.test(this.f27452if.get(i))) {
                    throw f("Value at position " + i + " matches predicate " + predicate.toString() + ", which was not expected.");
                }
            } catch (Exception e) {
                throw Ccase.m29712case(e);
            }
        }
        return this;
    }

    public final long c() {
        return this.f27453new;
    }

    /* renamed from: case, reason: not valid java name */
    public final U m29724case(String str) {
        int size = this.f27450for.size();
        if (size == 0) {
            throw f("No errors");
        }
        if (size != 1) {
            throw f("Multiple errors");
        }
        String message = this.f27450for.get(0).getMessage();
        if (io.reactivex.internal.functions.Cif.m29469for(str, message)) {
            return this;
        }
        throw f("Error message differs; exptected: " + str + " but was: " + message);
    }

    /* renamed from: catch, reason: not valid java name */
    public final U m29725catch(T t) {
        int size = this.f27452if.size();
        for (int i = 0; i < size; i++) {
            if (io.reactivex.internal.functions.Cif.m29469for(this.f27452if.get(i), t)) {
                throw f("Value at position " + i + " is equal to " + k(t) + "; Expected them to be different");
            }
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public final U m29726class() {
        if (this.f27450for.size() == 0) {
            return this;
        }
        throw f("Error(s) present: " + this.f27450for);
    }

    /* renamed from: const, reason: not valid java name */
    public final U m29727const() {
        if (this.f27446break) {
            throw f("Timeout?!");
        }
        return this;
    }

    /* renamed from: continue, reason: not valid java name */
    public final U m29728continue(T... tArr) {
        int size = this.f27452if.size();
        if (size != tArr.length) {
            throw f("Value count differs; expected: " + tArr.length + Cclass.f28652do + Arrays.toString(tArr) + " but was: " + size + Cclass.f28652do + this.f27452if);
        }
        for (int i = 0; i < size; i++) {
            T t = this.f27452if.get(i);
            T t2 = tArr[i];
            if (!io.reactivex.internal.functions.Cif.m29469for(t2, t)) {
                throw f("Values at position " + i + " differ; expected: " + k(t2) + " but was: " + k(t));
            }
        }
        return this;
    }

    public final int d() {
        return this.f27450for.size();
    }

    /* renamed from: default, reason: not valid java name */
    public final U m29729default(int i, T t) {
        int size = this.f27452if.size();
        if (size == 0) {
            throw f("No values");
        }
        if (i >= size) {
            throw f("Invalid index: " + i);
        }
        T t2 = this.f27452if.get(i);
        if (io.reactivex.internal.functions.Cif.m29469for(t, t2)) {
            return this;
        }
        throw f("expected: " + k(t) + " but was: " + k(t2));
    }

    /* renamed from: do, reason: not valid java name */
    public final U m29730do() {
        long j = this.f27453new;
        if (j == 0) {
            throw f("Not completed");
        }
        if (j <= 1) {
            return this;
        }
        throw f("Multiple completions: " + j);
    }

    public final List<Throwable> e() {
        return this.f27450for;
    }

    /* renamed from: else, reason: not valid java name */
    public final U m29731else(Predicate<Throwable> predicate, T... tArr) {
        return (U) mo29742native().m29728continue(tArr).m29735for(predicate).m29751super();
    }

    /* renamed from: extends, reason: not valid java name */
    public final U m29732extends(int i) {
        int size = this.f27452if.size();
        if (size == i) {
            return this;
        }
        throw f("Value counts differ; expected: " + i + " but was: " + size);
    }

    public final AssertionError f(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 64);
        sb.append(str);
        sb.append(" (");
        sb.append("latch = ");
        sb.append(this.f27448do.getCount());
        sb.append(", ");
        sb.append("values = ");
        sb.append(this.f27452if.size());
        sb.append(", ");
        sb.append("errors = ");
        sb.append(this.f27450for.size());
        sb.append(", ");
        sb.append("completions = ");
        sb.append(this.f27453new);
        if (this.f27446break) {
            sb.append(", timeout!");
        }
        if (isDisposed()) {
            sb.append(", disposed!");
        }
        CharSequence charSequence = this.f27454this;
        if (charSequence != null) {
            sb.append(", tag = ");
            sb.append(charSequence);
        }
        sb.append(')');
        AssertionError assertionError = new AssertionError(sb.toString());
        if (!this.f27450for.isEmpty()) {
            if (this.f27450for.size() == 1) {
                assertionError.initCause(this.f27450for.get(0));
            } else {
                assertionError.initCause(new io.reactivex.exceptions.Cdo(this.f27450for));
            }
        }
        return assertionError;
    }

    /* renamed from: final, reason: not valid java name */
    public final U m29733final() {
        return (U) m29732extends(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0059, code lost:
    
        if (r3 != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        if (r2 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
    
        throw f("Fewer values received than expected (" + r1 + ")");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
    
        throw f("More values received than expected (" + r1 + ")");
     */
    /* renamed from: finally, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final U m29734finally(Iterable<? extends T> iterable) {
        Iterator<T> it = this.f27452if.iterator();
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (true) {
            boolean zHasNext = it2.hasNext();
            boolean zHasNext2 = it.hasNext();
            if (!zHasNext2 || !zHasNext) {
                break;
            }
            T next = it2.next();
            T next2 = it.next();
            if (!io.reactivex.internal.functions.Cif.m29469for(next, next2)) {
                throw f("Values at position " + i + " differ; expected: " + k(next) + " but was: " + k(next2));
            }
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final U m29735for(Predicate<Throwable> predicate) {
        int size = this.f27450for.size();
        if (size == 0) {
            throw f("No errors");
        }
        boolean z = false;
        Iterator<Throwable> it = this.f27450for.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            try {
                if (predicate.test(it.next())) {
                    z = true;
                    break;
                }
            } catch (Exception e) {
                throw Ccase.m29712case(e);
            }
        }
        if (!z) {
            throw f("Error not present");
        }
        if (size == 1) {
            return this;
        }
        throw f("Error present but other errors as well");
    }

    public final List<List<Object>> g() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m());
        arrayList.add(e());
        ArrayList arrayList2 = new ArrayList();
        for (long j = 0; j < this.f27453new; j++) {
            arrayList2.add(t41.m7720do());
        }
        arrayList.add(arrayList2);
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    public final U m29736goto(Class<? extends Throwable> cls, T... tArr) {
        return (U) mo29742native().m29728continue(tArr).m29743new(cls).m29751super();
    }

    public final boolean h() {
        return this.f27448do.getCount() == 0;
    }

    public final boolean i() {
        return this.f27446break;
    }

    /* renamed from: if, reason: not valid java name */
    public final U m29737if() {
        return (U) mo29742native().m29733final().m29726class().m29751super();
    }

    /* renamed from: implements, reason: not valid java name */
    public final U m29738implements(int i, Runnable runnable, long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (true) {
            if (j > 0 && System.currentTimeMillis() - jCurrentTimeMillis >= j) {
                this.f27446break = true;
                break;
            }
            if (this.f27448do.getCount() == 0 || this.f27452if.size() >= i) {
                break;
            }
            runnable.run();
        }
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public final U m29739import(T... tArr) {
        return (U) mo29742native().m29728continue(tArr).m29726class().m29730do();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final U m29740instanceof(long j, TimeUnit timeUnit) {
        try {
            if (!this.f27448do.await(j, timeUnit)) {
                this.f27446break = true;
                dispose();
            }
            return this;
        } catch (InterruptedException e) {
            dispose();
            throw Ccase.m29712case(e);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final boolean m29741interface(long j, TimeUnit timeUnit) throws InterruptedException {
        boolean z = this.f27448do.getCount() == 0 || this.f27448do.await(j, timeUnit);
        this.f27446break = !z;
        return z;
    }

    public final Thread j() {
        return this.f27455try;
    }

    public final int l() {
        return this.f27452if.size();
    }

    public final List<T> m() {
        return this.f27452if;
    }

    public final U n(CharSequence charSequence) {
        this.f27454this = charSequence;
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public abstract U mo29742native();

    /* renamed from: new, reason: not valid java name */
    public final U m29743new(Class<? extends Throwable> cls) {
        return (U) m29735for(io.reactivex.internal.functions.Cdo.m29417class(cls));
    }

    /* renamed from: package, reason: not valid java name */
    public final U m29744package(Iterable<? extends T> iterable) {
        return (U) mo29742native().m29734finally(iterable).m29726class().m29751super();
    }

    /* renamed from: private, reason: not valid java name */
    public final U m29745private(Collection<? extends T> collection) {
        if (collection.isEmpty()) {
            m29733final();
            return this;
        }
        for (T t : this.f27452if) {
            if (!collection.contains(t)) {
                throw f("Value not in the expected collection: " + k(t));
            }
        }
        return this;
    }

    /* renamed from: protected, reason: not valid java name */
    public final U m29746protected(int i) {
        return (U) m29738implements(i, Cif.SLEEP_10MS, Cimport.f23355break);
    }

    /* renamed from: public, reason: not valid java name */
    public final U m29747public() {
        if (this.f27448do.getCount() != 0) {
            throw f("Subscriber still running!");
        }
        long j = this.f27453new;
        if (j > 1) {
            throw f("Terminated with multiple completions: " + j);
        }
        int size = this.f27450for.size();
        if (size > 1) {
            throw f("Terminated with multiple errors: " + size);
        }
        if (j == 0 || size == 0) {
            return this;
        }
        throw f("Terminated with multiple completions and errors: " + j);
    }

    /* renamed from: return, reason: not valid java name */
    public final U m29748return() {
        if (this.f27446break) {
            return this;
        }
        throw f("No timeout?!");
    }

    /* renamed from: static, reason: not valid java name */
    public final U m29749static(Predicate<T> predicate) {
        m29756throws(0, predicate);
        if (this.f27452if.size() <= 1) {
            return this;
        }
        throw f("Value present but other values as well");
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final U m29750strictfp(T... tArr) {
        return (U) mo29742native().m29728continue(tArr).m29726class().m29751super();
    }

    /* renamed from: super, reason: not valid java name */
    public final U m29751super() {
        long j = this.f27453new;
        if (j == 1) {
            throw f("Completed!");
        }
        if (j <= 1) {
            return this;
        }
        throw f("Multiple completions: " + j);
    }

    /* renamed from: switch, reason: not valid java name */
    public final U m29752switch(T t) {
        if (this.f27452if.size() != 1) {
            throw f("expected: " + k(t) + " but was: " + this.f27452if);
        }
        T t2 = this.f27452if.get(0);
        if (io.reactivex.internal.functions.Cif.m29469for(t, t2)) {
            return this;
        }
        throw f("expected: " + k(t) + " but was: " + k(t2));
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final boolean m29753synchronized() {
        try {
            m29759volatile();
            return true;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final U m29754this(Class<? extends Throwable> cls, String str, T... tArr) {
        return (U) mo29742native().m29728continue(tArr).m29743new(cls).m29724case(str).m29751super();
    }

    /* renamed from: throw, reason: not valid java name */
    public abstract U mo29755throw();

    /* renamed from: throws, reason: not valid java name */
    public final U m29756throws(int i, Predicate<T> predicate) {
        if (this.f27452if.size() == 0) {
            throw f("No values");
        }
        if (i >= this.f27452if.size()) {
            throw f("Invalid index: " + i);
        }
        try {
            if (predicate.test(this.f27452if.get(i))) {
                return this;
            }
            throw f("Value not present");
        } catch (Exception e) {
            throw Ccase.m29712case(e);
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final U m29757transient(int i, Runnable runnable) {
        return (U) m29738implements(i, runnable, Cimport.f23355break);
    }

    /* renamed from: try, reason: not valid java name */
    public final U m29758try(Throwable th) {
        return (U) m29735for(io.reactivex.internal.functions.Cdo.m29441this(th));
    }

    /* renamed from: volatile, reason: not valid java name */
    public final U m29759volatile() throws InterruptedException {
        if (this.f27448do.getCount() == 0) {
            return this;
        }
        this.f27448do.await();
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public final U m29760while() {
        if (this.f27448do.getCount() != 0) {
            return this;
        }
        throw f("Subscriber terminated!");
    }
}
