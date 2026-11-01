package rx.observers;

import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import rx.Observer;

/* renamed from: rx.observers.case, reason: invalid class name */
/* loaded from: classes4.dex */
public class Ccase<T> extends y22<T> {

    /* renamed from: goto, reason: not valid java name */
    private static final Observer<Object> f36085goto = new Cdo();

    /* renamed from: case, reason: not valid java name */
    private volatile int f36086case;

    /* renamed from: do, reason: not valid java name */
    private final Observer<T> f36087do;

    /* renamed from: else, reason: not valid java name */
    private volatile Thread f36088else;

    /* renamed from: for, reason: not valid java name */
    private final List<Throwable> f36089for;

    /* renamed from: if, reason: not valid java name */
    private final List<T> f36090if;

    /* renamed from: new, reason: not valid java name */
    private int f36091new;

    /* renamed from: try, reason: not valid java name */
    private final CountDownLatch f36092try;

    /* renamed from: rx.observers.case$do, reason: invalid class name */
    public static class Cdo implements Observer<Object> {
        @Override // rx.Observer
        public void onCompleted() {
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
        }

        @Override // rx.Observer
        public void onNext(Object obj) {
        }
    }

    public Ccase(long j) {
        this(f36085goto, j);
    }

    /* renamed from: default, reason: not valid java name */
    public static <T> Ccase<T> m39079default(Observer<T> observer, long j) {
        return new Ccase<>(observer, j);
    }

    /* renamed from: new, reason: not valid java name */
    private void m39080new(T t, int i) {
        T t2 = this.f36090if.get(i);
        if (t == null) {
            if (t2 != null) {
                m39103throw("Value at index: " + i + " expected: [null] but was: [" + t2 + "]\n");
                return;
            }
            return;
        }
        if (t.equals(t2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Value at index: ");
        sb.append(i);
        sb.append(" expected: [");
        sb.append(t);
        sb.append("] (");
        sb.append(t.getClass().getSimpleName());
        sb.append(") but was: [");
        sb.append(t2);
        sb.append("] (");
        sb.append(t2 != null ? t2.getClass().getSimpleName() : "null");
        sb.append(")\n");
        m39103throw(sb.toString());
    }

    /* renamed from: return, reason: not valid java name */
    public static <T> Ccase<T> m39081return() {
        return new Ccase<>();
    }

    /* renamed from: static, reason: not valid java name */
    public static <T> Ccase<T> m39082static(long j) {
        return new Ccase<>(j);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T> Ccase<T> m39083switch(y22<T> y22Var) {
        return new Ccase<>((y22) y22Var);
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T> Ccase<T> m39084throws(Observer<T> observer) {
        return new Ccase<>(observer);
    }

    /* renamed from: break, reason: not valid java name */
    public void m39085break() {
        if (this.f36089for.size() > 1) {
            m39103throw("Too many onError events: " + this.f36089for.size());
        }
        if (this.f36091new > 1) {
            m39103throw("Too many onCompleted events: " + this.f36091new);
        }
        if (this.f36091new == 1 && this.f36089for.size() == 1) {
            m39103throw("Received both an onError and onCompleted. Should be one or the other.");
        }
        if (this.f36091new == 0 && this.f36089for.isEmpty()) {
            m39103throw("No terminal events received.");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m39086case() {
        List<Throwable> list = this.f36089for;
        int i = this.f36091new;
        if (!list.isEmpty() || i > 0) {
            if (list.isEmpty()) {
                m39103throw("Found " + list.size() + " errors and " + i + " completion events instead of none");
                return;
            }
            if (list.size() == 1) {
                m39103throw("Found " + list.size() + " errors and " + i + " completion events instead of none");
                return;
            }
            m39103throw("Found " + list.size() + " errors and " + i + " completion events instead of none");
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m39087catch() {
        if (isUnsubscribed()) {
            return;
        }
        m39103throw("Not unsubscribed.");
    }

    /* renamed from: class, reason: not valid java name */
    public void m39088class(T t) {
        m39102this(Collections.singletonList(t));
    }

    /* renamed from: const, reason: not valid java name */
    public void m39089const(int i) {
        int size = this.f36090if.size();
        if (size != i) {
            m39103throw("Number of onNext events differ; expected: " + i + ", actual: " + size);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m39090do() {
        int i = this.f36091new;
        if (i == 0) {
            m39103throw("Not completed!");
        } else if (i > 1) {
            m39103throw("Completed multiple times: " + i);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m39091else() {
        int size = this.f36090if.size();
        if (size != 0) {
            m39103throw("No onNext events expected yet some received: " + size);
        }
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public List<rx.Cdo<T>> m39092extends() {
        int i = this.f36091new;
        ArrayList arrayList = new ArrayList(i != 0 ? i : 1);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(rx.Cdo.m38310if());
        }
        return arrayList;
    }

    /* renamed from: final, reason: not valid java name */
    public void m39093final(T... tArr) {
        m39102this(Arrays.asList(tArr));
    }

    /* renamed from: finally, reason: not valid java name */
    public void m39094finally(long j) {
        request(j);
    }

    /* renamed from: for, reason: not valid java name */
    public void m39095for(Throwable th) {
        List<Throwable> list = this.f36089for;
        if (list.isEmpty()) {
            m39103throw("No errors");
            return;
        }
        if (list.size() > 1) {
            m39103throw("Multiple errors");
            return;
        }
        if (th.equals(list.get(0))) {
            return;
        }
        m39103throw("Exceptions differ; expected: " + th + ", actual: " + list.get(0));
    }

    public final int getCompletions() {
        return this.f36091new;
    }

    public Thread getLastSeenThread() {
        return this.f36088else;
    }

    public List<Throwable> getOnErrorEvents() {
        return this.f36089for;
    }

    public List<T> getOnNextEvents() {
        return this.f36090if;
    }

    public final int getValueCount() {
        return this.f36086case;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m39096goto() {
        int i = this.f36091new;
        if (i == 1) {
            m39103throw("Completed!");
        } else if (i > 1) {
            m39103throw("Completed multiple times: " + i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m39097if(Class<? extends Throwable> cls) {
        List<Throwable> list = this.f36089for;
        if (list.isEmpty()) {
            m39103throw("No errors");
            return;
        }
        if (list.size() > 1) {
            AssertionError assertionError = new AssertionError("Multiple errors: " + list.size());
            assertionError.initCause(new rx.exceptions.Cdo(list));
            throw assertionError;
        }
        if (cls.isInstance(list.get(0))) {
            return;
        }
        AssertionError assertionError2 = new AssertionError("Exceptions differ; expected: " + cls + ", actual: " + list.get(0));
        assertionError2.initCause(list.get(0));
        throw assertionError2;
    }

    /* renamed from: import, reason: not valid java name */
    public void m39098import(long j, TimeUnit timeUnit) throws InterruptedException {
        try {
            this.f36092try.await(j, timeUnit);
        } catch (InterruptedException e) {
            throw new IllegalStateException("Interrupted", e);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m39099native(long j, TimeUnit timeUnit) {
        try {
            if (this.f36092try.await(j, timeUnit)) {
                return;
            }
            unsubscribe();
        } catch (InterruptedException unused) {
            unsubscribe();
        }
    }

    @Override // rx.Observer
    public void onCompleted() {
        try {
            this.f36091new++;
            this.f36088else = Thread.currentThread();
            this.f36087do.onCompleted();
        } finally {
            this.f36092try.countDown();
        }
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        try {
            this.f36088else = Thread.currentThread();
            this.f36089for.add(th);
            this.f36087do.onError(th);
        } finally {
            this.f36092try.countDown();
        }
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36088else = Thread.currentThread();
        this.f36090if.add(t);
        this.f36086case = this.f36090if.size();
        this.f36087do.onNext(t);
    }

    /* renamed from: public, reason: not valid java name */
    public final boolean m39100public(int i, long j, TimeUnit timeUnit) throws InterruptedException {
        while (j != 0 && this.f36086case < i) {
            try {
                timeUnit.sleep(1L);
                j--;
            } catch (InterruptedException e) {
                throw new IllegalStateException("Interrupted", e);
            }
        }
        return this.f36086case >= i;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m39101super(T t, T... tArr) {
        m39089const(tArr.length + 1);
        int i = 0;
        m39080new(t, 0);
        while (i < tArr.length) {
            T t2 = tArr[i];
            i++;
            m39080new(t2, i);
        }
        this.f36090if.clear();
    }

    /* renamed from: this, reason: not valid java name */
    public void m39102this(List<T> list) {
        if (this.f36090if.size() != list.size()) {
            m39103throw("Number of items does not match. Provided: " + list.size() + "  Actual: " + this.f36090if.size() + ".\nProvided values: " + list + "\nActual values: " + this.f36090if + "\n");
        }
        for (int i = 0; i < list.size(); i++) {
            m39080new(list.get(i), i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m39103throw(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 32);
        sb.append(str);
        sb.append(" (");
        int i = this.f36091new;
        sb.append(i);
        sb.append(" completion");
        if (i != 1) {
            sb.append('s');
        }
        sb.append(')');
        if (!this.f36089for.isEmpty()) {
            int size = this.f36089for.size();
            sb.append(" (+");
            sb.append(size);
            sb.append(" error");
            if (size != 1) {
                sb.append('s');
            }
            sb.append(')');
        }
        AssertionError assertionError = new AssertionError(sb.toString());
        if (this.f36089for.isEmpty()) {
            throw assertionError;
        }
        if (this.f36089for.size() == 1) {
            assertionError.initCause(this.f36089for.get(0));
            throw assertionError;
        }
        assertionError.initCause(new rx.exceptions.Cdo(this.f36089for));
        throw assertionError;
    }

    /* renamed from: try, reason: not valid java name */
    public void m39104try() {
        if (getOnErrorEvents().isEmpty()) {
            return;
        }
        m39103throw("Unexpected onError events");
    }

    /* renamed from: while, reason: not valid java name */
    public void m39105while() throws InterruptedException {
        try {
            this.f36092try.await();
        } catch (InterruptedException e) {
            throw new IllegalStateException("Interrupted", e);
        }
    }

    public Ccase(Observer<T> observer, long j) {
        this.f36092try = new CountDownLatch(1);
        Objects.requireNonNull(observer);
        this.f36087do = observer;
        if (j >= 0) {
            request(j);
        }
        this.f36090if = new ArrayList();
        this.f36089for = new ArrayList();
    }

    public Ccase(y22<T> y22Var) {
        this(y22Var, -1L);
    }

    public Ccase(Observer<T> observer) {
        this(observer, -1L);
    }

    public Ccase() {
        this(-1L);
    }
}
