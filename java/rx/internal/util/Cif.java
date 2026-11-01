package rx.internal.util;

import android.support.v4.yd1;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.Subscription;
import rx.functions.Func1;

/* renamed from: rx.internal.util.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif<E> implements Subscription {

    /* renamed from: try, reason: not valid java name */
    public static final int f35851try;

    /* renamed from: do, reason: not valid java name */
    private final Cdo<E> f35852do = new Cdo<>();

    /* renamed from: if, reason: not valid java name */
    private final C0557if f35854if = new C0557if();

    /* renamed from: for, reason: not valid java name */
    public final AtomicInteger f35853for = new AtomicInteger();

    /* renamed from: new, reason: not valid java name */
    public final AtomicInteger f35855new = new AtomicInteger();

    /* renamed from: rx.internal.util.if$do, reason: invalid class name */
    public static final class Cdo<E> {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReferenceArray<E> f35856do = new AtomicReferenceArray<>(Cif.f35851try);

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Cdo<E>> f35857if = new AtomicReference<>();

        /* renamed from: do, reason: not valid java name */
        public Cdo<E> m38917do() {
            if (this.f35857if.get() != null) {
                return this.f35857if.get();
            }
            Cdo<E> cdo = new Cdo<>();
            return this.f35857if.compareAndSet(null, cdo) ? cdo : this.f35857if.get();
        }
    }

    /* renamed from: rx.internal.util.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0557if {

        /* renamed from: do, reason: not valid java name */
        private final AtomicIntegerArray f35858do = new AtomicIntegerArray(Cif.f35851try);

        /* renamed from: if, reason: not valid java name */
        private final AtomicReference<C0557if> f35859if = new AtomicReference<>();

        /* renamed from: do, reason: not valid java name */
        public int m38918do(int i, int i2) {
            return this.f35858do.getAndSet(i, i2);
        }

        /* renamed from: for, reason: not valid java name */
        public void m38919for(int i, int i2) {
            this.f35858do.set(i, i2);
        }

        /* renamed from: if, reason: not valid java name */
        public C0557if m38920if() {
            if (this.f35859if.get() != null) {
                return this.f35859if.get();
            }
            C0557if c0557if = new C0557if();
            return this.f35859if.compareAndSet(null, c0557if) ? c0557if : this.f35859if.get();
        }
    }

    static {
        int i = yd1.m9814if() ? 8 : 128;
        String property = System.getProperty("rx.indexed-ring-buffer.size");
        if (property != null) {
            try {
                i = Integer.parseInt(property);
            } catch (NumberFormatException e) {
                System.err.println("Failed to set 'rx.indexed-ring-buffer.size' with value " + property + " => " + e.getMessage());
            }
        }
        f35851try = i;
    }

    /* renamed from: break, reason: not valid java name */
    private synchronized void m38905break(int i) {
        int andIncrement = this.f35855new.getAndIncrement();
        int i2 = f35851try;
        if (andIncrement < i2) {
            this.f35854if.m38919for(andIncrement, i);
        } else {
            m38908goto(andIncrement).m38919for(andIncrement % i2, i);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private synchronized int m38906case() {
        int andIncrement;
        int iM38907else = m38907else();
        if (iM38907else >= 0) {
            int i = f35851try;
            if (iM38907else < i) {
                andIncrement = this.f35854if.m38918do(iM38907else, -1);
            } else {
                andIncrement = m38908goto(iM38907else).m38918do(iM38907else % i, -1);
            }
            if (andIncrement == this.f35853for.get()) {
                this.f35853for.getAndIncrement();
            }
        } else {
            andIncrement = this.f35853for.getAndIncrement();
        }
        return andIncrement;
    }

    /* renamed from: else, reason: not valid java name */
    private synchronized int m38907else() {
        int i;
        int i2;
        do {
            i = this.f35855new.get();
            if (i <= 0) {
                return -1;
            }
            i2 = i - 1;
        } while (!this.f35855new.compareAndSet(i, i2));
        return i2;
    }

    /* renamed from: goto, reason: not valid java name */
    private C0557if m38908goto(int i) {
        int i2 = f35851try;
        if (i < i2) {
            return this.f35854if;
        }
        int i3 = i / i2;
        C0557if c0557ifM38920if = this.f35854if;
        for (int i4 = 0; i4 < i3; i4++) {
            c0557ifM38920if = c0557ifM38920if.m38920if();
        }
        return c0557ifM38920if;
    }

    /* renamed from: new, reason: not valid java name */
    private int m38909new(Func1<? super E, Boolean> func1, int i, int i2) {
        Cdo<E> cdo;
        int i3;
        int i4 = this.f35853for.get();
        Cdo<E> cdo2 = this.f35852do;
        int i5 = f35851try;
        if (i >= i5) {
            Cdo<E> cdoM38911try = m38911try(i);
            i3 = i;
            i %= i5;
            cdo = cdoM38911try;
        } else {
            cdo = cdo2;
            i3 = i;
        }
        loop0: while (cdo != null) {
            while (i < f35851try) {
                if (i3 >= i4 || i3 >= i2) {
                    break loop0;
                }
                E e = cdo.f35856do.get(i);
                if (e != null && !func1.call(e).booleanValue()) {
                    return i3;
                }
                i++;
                i3++;
            }
            cdo = cdo.f35857if.get();
            i = 0;
        }
        return i3;
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Cif<T> m38910this() {
        return new Cif<>();
    }

    /* renamed from: try, reason: not valid java name */
    private Cdo<E> m38911try(int i) {
        int i2 = f35851try;
        if (i < i2) {
            return this.f35852do;
        }
        int i3 = i / i2;
        Cdo<E> cdoM38917do = this.f35852do;
        for (int i4 = 0; i4 < i3; i4++) {
            cdoM38917do = cdoM38917do.m38917do();
        }
        return cdoM38917do;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m38912catch() {
        int i = this.f35853for.get();
        int i2 = 0;
        loop0: for (Cdo<E> cdo = this.f35852do; cdo != null; cdo = cdo.f35857if.get()) {
            int i3 = 0;
            while (i3 < f35851try) {
                if (i2 >= i) {
                    break loop0;
                }
                cdo.f35856do.set(i3, null);
                i3++;
                i2++;
            }
        }
        this.f35853for.set(0);
        this.f35855new.set(0);
    }

    /* renamed from: class, reason: not valid java name */
    public E m38913class(int i) {
        E andSet;
        int i2 = f35851try;
        if (i < i2) {
            andSet = this.f35852do.f35856do.getAndSet(i, null);
        } else {
            andSet = m38911try(i).f35856do.getAndSet(i % i2, null);
        }
        m38905break(i);
        return andSet;
    }

    /* renamed from: do, reason: not valid java name */
    public int m38914do(E e) {
        int iM38906case = m38906case();
        int i = f35851try;
        if (iM38906case < i) {
            this.f35852do.f35856do.set(iM38906case, e);
            return iM38906case;
        }
        m38911try(iM38906case).f35856do.set(iM38906case % i, e);
        return iM38906case;
    }

    /* renamed from: for, reason: not valid java name */
    public int m38915for(Func1<? super E, Boolean> func1, int i) {
        int iM38909new = m38909new(func1, i, this.f35853for.get());
        if (i > 0 && iM38909new == this.f35853for.get()) {
            return m38909new(func1, 0, i);
        }
        if (iM38909new == this.f35853for.get()) {
            return 0;
        }
        return iM38909new;
    }

    /* renamed from: if, reason: not valid java name */
    public int m38916if(Func1<? super E, Boolean> func1) {
        return m38915for(func1, 0);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return false;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        m38912catch();
    }
}
