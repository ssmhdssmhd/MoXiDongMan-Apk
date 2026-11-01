package rx.observers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Observer;

@Deprecated
/* renamed from: rx.observers.try, reason: invalid class name */
/* loaded from: classes4.dex */
public class Ctry<T> implements Observer<T> {

    /* renamed from: try, reason: not valid java name */
    private static final Observer<Object> f36116try = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final Observer<T> f36117do;

    /* renamed from: for, reason: not valid java name */
    private final List<Throwable> f36118for;

    /* renamed from: if, reason: not valid java name */
    private final List<T> f36119if;

    /* renamed from: new, reason: not valid java name */
    private final List<rx.Cdo<T>> f36120new;

    /* renamed from: rx.observers.try$do, reason: invalid class name */
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

    public Ctry(Observer<T> observer) {
        this.f36119if = new ArrayList();
        this.f36118for = new ArrayList();
        this.f36120new = new ArrayList();
        this.f36117do = observer;
    }

    /* renamed from: do, reason: not valid java name */
    public void m39118do(List<T> list) {
        if (this.f36119if.size() != list.size()) {
            m39119for("Number of items does not match. Provided: " + list.size() + "  Actual: " + this.f36119if.size() + ".\nProvided values: " + list + "\nActual values: " + this.f36119if + "\n");
        }
        for (int i = 0; i < list.size(); i++) {
            T t = list.get(i);
            T t2 = this.f36119if.get(i);
            if (t == null) {
                if (t2 != null) {
                    m39119for("Value at index: " + i + " expected to be [null] but was: [" + t2 + "]\n");
                }
            } else if (!t.equals(t2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Value at index: ");
                sb.append(i);
                sb.append(" expected to be [");
                sb.append(t);
                sb.append("] (");
                sb.append(t.getClass().getSimpleName());
                sb.append(") but was: [");
                sb.append(t2);
                sb.append("] (");
                sb.append(t2 != null ? t2.getClass().getSimpleName() : "null");
                sb.append(")\n");
                m39119for(sb.toString());
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m39119for(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 32);
        sb.append(str);
        sb.append(" (");
        int size = this.f36120new.size();
        sb.append(size);
        sb.append(" completion");
        if (size != 1) {
            sb.append('s');
        }
        sb.append(')');
        if (!this.f36118for.isEmpty()) {
            int size2 = this.f36118for.size();
            sb.append(" (+");
            sb.append(size2);
            sb.append(" error");
            if (size2 != 1) {
                sb.append('s');
            }
            sb.append(')');
        }
        AssertionError assertionError = new AssertionError(sb.toString());
        if (this.f36118for.isEmpty()) {
            throw assertionError;
        }
        if (this.f36118for.size() == 1) {
            assertionError.initCause(this.f36118for.get(0));
            throw assertionError;
        }
        assertionError.initCause(new rx.exceptions.Cdo(this.f36118for));
        throw assertionError;
    }

    public List<Throwable> getOnErrorEvents() {
        return Collections.unmodifiableList(this.f36118for);
    }

    public List<T> getOnNextEvents() {
        return Collections.unmodifiableList(this.f36119if);
    }

    /* renamed from: if, reason: not valid java name */
    public void m39120if() {
        if (this.f36118for.size() > 1) {
            m39119for("Too many onError events: " + this.f36118for.size());
        }
        if (this.f36120new.size() > 1) {
            m39119for("Too many onCompleted events: " + this.f36120new.size());
        }
        if (this.f36120new.size() == 1 && this.f36118for.size() == 1) {
            m39119for("Received both an onError and onCompleted. Should be one or the other.");
        }
        if (this.f36120new.isEmpty() && this.f36118for.isEmpty()) {
            m39119for("No terminal events received.");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public List<Object> m39121new() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f36119if);
        arrayList.add(this.f36118for);
        arrayList.add(this.f36120new);
        return Collections.unmodifiableList(arrayList);
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f36120new.add(rx.Cdo.m38310if());
        this.f36117do.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f36118for.add(th);
        this.f36117do.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36119if.add(t);
        this.f36117do.onNext(t);
    }

    /* renamed from: try, reason: not valid java name */
    public List<rx.Cdo<T>> m39122try() {
        return Collections.unmodifiableList(this.f36120new);
    }

    public Ctry() {
        this.f36119if = new ArrayList();
        this.f36118for = new ArrayList();
        this.f36120new = new ArrayList();
        this.f36117do = (Observer<T>) f36116try;
    }
}
