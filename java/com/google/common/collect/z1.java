package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.o8;
import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

@ki0
@o8
/* loaded from: classes2.dex */
public final class z1<E> extends AbstractQueue<E> {

    /* renamed from: else, reason: not valid java name */
    private static final int f14886else = 1431655765;

    /* renamed from: goto, reason: not valid java name */
    private static final int f14887goto = -1431655766;

    /* renamed from: this, reason: not valid java name */
    private static final int f14888this = 11;

    /* renamed from: case, reason: not valid java name */
    private int f14889case;

    /* renamed from: do, reason: not valid java name */
    private final z1<E>.Cfor f14890do;

    /* renamed from: for, reason: not valid java name */
    @af2
    public final int f14891for;

    /* renamed from: if, reason: not valid java name */
    private final z1<E>.Cfor f14892if;

    /* renamed from: new, reason: not valid java name */
    private Object[] f14893new;

    /* renamed from: try, reason: not valid java name */
    private int f14894try;

    /* renamed from: com.google.common.collect.z1$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final k2<E> f14895do;

        /* renamed from: if, reason: not valid java name */
        @hf2
        @l01
        public z1<E>.Cfor f14897if;

        public Cfor(k2<E> k2Var) {
            this.f14895do = k2Var;
        }

        /* renamed from: catch, reason: not valid java name */
        private int m16564catch(int i) {
            return m16566const(m16566const(i));
        }

        /* renamed from: class, reason: not valid java name */
        private int m16565class(int i) {
            return (i * 2) + 1;
        }

        /* renamed from: const, reason: not valid java name */
        private int m16566const(int i) {
            return (i - 1) / 2;
        }

        /* renamed from: final, reason: not valid java name */
        private int m16568final(int i) {
            return (i * 2) + 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: while, reason: not valid java name */
        public boolean m16569while(int i) {
            if (m16565class(i) < z1.this.f14894try && m16576new(i, m16565class(i)) > 0) {
                return false;
            }
            if (m16568final(i) < z1.this.f14894try && m16576new(i, m16568final(i)) > 0) {
                return false;
            }
            if (i <= 0 || m16576new(i, m16566const(i)) <= 0) {
                return i <= 2 || m16576new(m16564catch(i), i) <= 0;
            }
            return false;
        }

        /* renamed from: break, reason: not valid java name */
        public int m16570break(int i) {
            int iM16565class = m16565class(i);
            if (iM16565class < 0) {
                return -1;
            }
            return m16574goto(m16565class(iM16565class), 4);
        }

        /* renamed from: case, reason: not valid java name */
        public int m16571case(int i, E e) {
            int iM16568final;
            if (i == 0) {
                z1.this.f14893new[0] = e;
                return 0;
            }
            int iM16566const = m16566const(i);
            Object objM16562this = z1.this.m16562this(iM16566const);
            if (iM16566const != 0 && (iM16568final = m16568final(m16566const(iM16566const))) != iM16566const && m16565class(iM16568final) >= z1.this.f14894try) {
                Object objM16562this2 = z1.this.m16562this(iM16568final);
                if (this.f14895do.compare(objM16562this2, objM16562this) < 0) {
                    iM16566const = iM16568final;
                    objM16562this = objM16562this2;
                }
            }
            if (this.f14895do.compare(objM16562this, e) >= 0) {
                z1.this.f14893new[i] = e;
                return i;
            }
            z1.this.f14893new[i] = objM16562this;
            z1.this.f14893new[iM16566const] = e;
            return iM16566const;
        }

        /* renamed from: else, reason: not valid java name */
        public int m16572else(int i) {
            while (true) {
                int iM16570break = m16570break(i);
                if (iM16570break <= 0) {
                    return i;
                }
                z1.this.f14893new[i] = z1.this.m16562this(iM16570break);
                i = iM16570break;
            }
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public int m16573for(int i, E e) {
            while (i > 2) {
                int iM16564catch = m16564catch(i);
                Object objM16562this = z1.this.m16562this(iM16564catch);
                if (this.f14895do.compare(objM16562this, e) <= 0) {
                    break;
                }
                z1.this.f14893new[i] = objM16562this;
                i = iM16564catch;
            }
            z1.this.f14893new[i] = e;
            return i;
        }

        /* renamed from: goto, reason: not valid java name */
        public int m16574goto(int i, int i2) {
            if (i >= z1.this.f14894try) {
                return -1;
            }
            af1.t(i > 0);
            int iMin = Math.min(i, z1.this.f14894try - i2) + i2;
            for (int i3 = i + 1; i3 < iMin; i3++) {
                if (m16576new(i3, i) < 0) {
                    i = i3;
                }
            }
            return i;
        }

        /* renamed from: if, reason: not valid java name */
        public void m16575if(int i, E e) {
            Cfor cfor;
            int iM16571case = m16571case(i, e);
            if (iM16571case == i) {
                iM16571case = i;
                cfor = this;
            } else {
                cfor = this.f14897if;
            }
            cfor.m16573for(iM16571case, e);
        }

        /* renamed from: new, reason: not valid java name */
        public int m16576new(int i, int i2) {
            return this.f14895do.compare(z1.this.m16562this(i), z1.this.m16562this(i2));
        }

        /* renamed from: super, reason: not valid java name */
        public int m16577super(E e) {
            int iM16568final;
            int iM16566const = m16566const(z1.this.f14894try);
            if (iM16566const != 0 && (iM16568final = m16568final(m16566const(iM16566const))) != iM16566const && m16565class(iM16568final) >= z1.this.f14894try) {
                Object objM16562this = z1.this.m16562this(iM16568final);
                if (this.f14895do.compare(objM16562this, e) < 0) {
                    z1.this.f14893new[iM16568final] = e;
                    z1.this.f14893new[z1.this.f14894try] = objM16562this;
                    return iM16568final;
                }
            }
            return z1.this.f14894try;
        }

        /* renamed from: this, reason: not valid java name */
        public int m16578this(int i) {
            return m16574goto(m16565class(i), 2);
        }

        /* renamed from: throw, reason: not valid java name */
        public Cnew<E> m16579throw(int i, int i2, E e) {
            int iM16580try = m16580try(i2, e);
            if (iM16580try == i2) {
                return null;
            }
            Object objM16562this = iM16580try < i ? z1.this.m16562this(i) : z1.this.m16562this(m16566const(i));
            if (this.f14897if.m16573for(iM16580try, e) < i) {
                return new Cnew<>(e, objM16562this);
            }
            return null;
        }

        /* renamed from: try, reason: not valid java name */
        public int m16580try(int i, E e) {
            int iM16578this = m16578this(i);
            if (iM16578this <= 0 || this.f14895do.compare(z1.this.m16562this(iM16578this), e) >= 0) {
                return m16571case(i, e);
            }
            z1.this.f14893new[i] = z1.this.m16562this(iM16578this);
            z1.this.f14893new[iM16578this] = e;
            return iM16578this;
        }
    }

    @o8
    /* renamed from: com.google.common.collect.z1$if, reason: invalid class name */
    public static final class Cif<B> {

        /* renamed from: new, reason: not valid java name */
        private static final int f14898new = -1;

        /* renamed from: do, reason: not valid java name */
        private final Comparator<B> f14899do;

        /* renamed from: for, reason: not valid java name */
        private int f14900for;

        /* renamed from: if, reason: not valid java name */
        private int f14901if;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public <T extends B> k2<T> m16582else() {
            return k2.from(this.f14899do);
        }

        @lf
        /* renamed from: case, reason: not valid java name */
        public Cif<B> m16584case(int i) {
            af1.m220new(i > 0);
            this.f14900for = i;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public <T extends B> z1<T> m16585for() {
            return m16586new(Collections.emptySet());
        }

        /* renamed from: new, reason: not valid java name */
        public <T extends B> z1<T> m16586new(Iterable<? extends T> iterable) {
            z1<T> z1Var = new z1<>(this, z1.m16557super(this.f14901if, this.f14900for, iterable));
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                z1Var.offer(it.next());
            }
            return z1Var;
        }

        @lf
        /* renamed from: try, reason: not valid java name */
        public Cif<B> m16587try(int i) {
            af1.m220new(i >= 0);
            this.f14901if = i;
            return this;
        }

        private Cif(Comparator<B> comparator) {
            this.f14901if = -1;
            this.f14900for = Integer.MAX_VALUE;
            this.f14899do = (Comparator) af1.m205continue(comparator);
        }
    }

    /* renamed from: com.google.common.collect.z1$new, reason: invalid class name */
    public static class Cnew<E> {

        /* renamed from: do, reason: not valid java name */
        public final E f14902do;

        /* renamed from: if, reason: not valid java name */
        public final E f14903if;

        public Cnew(E e, E e2) {
            this.f14902do = e;
            this.f14903if = e2;
        }
    }

    /* renamed from: com.google.common.collect.z1$try, reason: invalid class name */
    public class Ctry implements Iterator<E> {

        /* renamed from: case, reason: not valid java name */
        @b51
        private E f14904case;

        /* renamed from: do, reason: not valid java name */
        private int f14905do;

        /* renamed from: else, reason: not valid java name */
        private boolean f14906else;

        /* renamed from: for, reason: not valid java name */
        private int f14907for;

        /* renamed from: if, reason: not valid java name */
        private int f14909if;

        /* renamed from: new, reason: not valid java name */
        @l01
        private Queue<E> f14910new;

        /* renamed from: try, reason: not valid java name */
        @l01
        private List<E> f14911try;

        private Ctry() {
            this.f14905do = -1;
            this.f14909if = -1;
            this.f14907for = z1.this.f14889case;
        }

        /* renamed from: do, reason: not valid java name */
        private void m16588do() {
            if (z1.this.f14889case != this.f14907for) {
                throw new ConcurrentModificationException();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: for, reason: not valid java name */
        private void m16589for(int i) {
            if (this.f14909if < i) {
                if (this.f14911try != null) {
                    while (i < z1.this.size() && m16590if(this.f14911try, z1.this.m16562this(i))) {
                        i++;
                    }
                }
                this.f14909if = i;
            }
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m16590if(Iterable<E> iterable, E e) {
            Iterator<E> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next() == e) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        /* renamed from: new, reason: not valid java name */
        private boolean m16591new(Object obj) {
            for (int i = 0; i < z1.this.f14894try; i++) {
                if (z1.this.f14893new[i] == obj) {
                    z1.this.m16561return(i);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m16588do();
            m16589for(this.f14905do + 1);
            if (this.f14909if < z1.this.size()) {
                return true;
            }
            Queue<E> queue = this.f14910new;
            return (queue == null || queue.isEmpty()) ? false : true;
        }

        @Override // java.util.Iterator
        public E next() {
            m16588do();
            m16589for(this.f14905do + 1);
            if (this.f14909if < z1.this.size()) {
                int i = this.f14909if;
                this.f14905do = i;
                this.f14906else = true;
                return (E) z1.this.m16562this(i);
            }
            if (this.f14910new != null) {
                this.f14905do = z1.this.size();
                E ePoll = this.f14910new.poll();
                this.f14904case = ePoll;
                if (ePoll != null) {
                    this.f14906else = true;
                    return ePoll;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14906else);
            m16588do();
            this.f14906else = false;
            this.f14907for++;
            if (this.f14905do >= z1.this.size()) {
                af1.t(m16591new(this.f14904case));
                this.f14904case = null;
                return;
            }
            Cnew<E> cnewM16561return = z1.this.m16561return(this.f14905do);
            if (cnewM16561return != null) {
                if (this.f14910new == null) {
                    this.f14910new = new ArrayDeque();
                    this.f14911try = new ArrayList(3);
                }
                if (!m16590if(this.f14911try, cnewM16561return.f14902do)) {
                    this.f14910new.add(cnewM16561return.f14902do);
                }
                if (!m16590if(this.f14910new, cnewM16561return.f14903if)) {
                    this.f14911try.add(cnewM16561return.f14903if);
                }
            }
            this.f14905do--;
            this.f14909if--;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Cif<Comparable> m16543break(int i) {
        return new Cif(k2.natural()).m16587try(i);
    }

    /* renamed from: catch, reason: not valid java name */
    private Cnew<E> m16544catch(int i, E e) {
        z1<E>.Cfor cforM16549final = m16549final(i);
        int iM16572else = cforM16549final.m16572else(i);
        int iM16573for = cforM16549final.m16573for(iM16572else, e);
        if (iM16573for == iM16572else) {
            return cforM16549final.m16579throw(i, iM16572else, e);
        }
        if (iM16573for < i) {
            return new Cnew<>(e, m16562this(i));
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    private int m16545class() {
        int i = this.f14894try;
        if (i != 1) {
            return (i == 2 || this.f14892if.m16576new(1, 2) <= 0) ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: const, reason: not valid java name */
    private void m16546const() {
        if (this.f14894try > this.f14893new.length) {
            Object[] objArr = new Object[m16555new()];
            Object[] objArr2 = this.f14893new;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f14893new = objArr;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static <E extends Comparable<E>> z1<E> m16548else() {
        return new Cif(k2.natural()).m16585for();
    }

    /* renamed from: final, reason: not valid java name */
    private z1<E>.Cfor m16549final(int i) {
        return m16558throw(i) ? this.f14890do : this.f14892if;
    }

    /* renamed from: goto, reason: not valid java name */
    public static <E extends Comparable<E>> z1<E> m16551goto(Iterable<? extends E> iterable) {
        return new Cif(k2.natural()).m16586new(iterable);
    }

    /* renamed from: import, reason: not valid java name */
    public static Cif<Comparable> m16553import(int i) {
        return new Cif(k2.natural()).m16584case(i);
    }

    /* renamed from: native, reason: not valid java name */
    public static <B> Cif<B> m16554native(Comparator<B> comparator) {
        return new Cif<>(comparator);
    }

    /* renamed from: new, reason: not valid java name */
    private int m16555new() {
        int length = this.f14893new.length;
        return m16559try(length < 64 ? (length + 1) * 2 : com.google.common.math.Cnew.m17347new(length / 2, 3), this.f14891for);
    }

    /* renamed from: public, reason: not valid java name */
    private E m16556public(int i) {
        E eM16562this = m16562this(i);
        m16561return(i);
        return eM16562this;
    }

    @af2
    /* renamed from: super, reason: not valid java name */
    public static int m16557super(int i, int i2, Iterable<?> iterable) {
        if (i == -1) {
            i = 11;
        }
        if (iterable instanceof Collection) {
            i = Math.max(i, ((Collection) iterable).size());
        }
        return m16559try(i, i2);
    }

    @af2
    /* renamed from: throw, reason: not valid java name */
    public static boolean m16558throw(int i) {
        int i2 = ((i + 1) ^ (-1)) ^ (-1);
        af1.u(i2 > 0, "negative index");
        return (f14886else & i2) > (i2 & f14887goto);
    }

    /* renamed from: try, reason: not valid java name */
    private static int m16559try(int i, int i2) {
        return Math.min(i - 1, i2) + 1;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    @lf
    public boolean add(E e) {
        offer(e);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    @lf
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            offer(it.next());
            z = true;
        }
        return z;
    }

    @af2
    /* renamed from: case, reason: not valid java name */
    public int m16560case() {
        return this.f14893new.length;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i = 0; i < this.f14894try; i++) {
            this.f14893new[i] = null;
        }
        this.f14894try = 0;
    }

    public Comparator<? super E> comparator() {
        return this.f14890do.f14895do;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new Ctry();
    }

    @Override // java.util.Queue
    @lf
    public boolean offer(E e) {
        af1.m205continue(e);
        this.f14889case++;
        int i = this.f14894try;
        this.f14894try = i + 1;
        m16546const();
        m16549final(i).m16575if(i, e);
        return this.f14894try <= this.f14891for || pollLast() != e;
    }

    @Override // java.util.Queue
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return m16562this(0);
    }

    public E peekFirst() {
        return peek();
    }

    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return m16562this(m16545class());
    }

    @Override // java.util.Queue
    @lf
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return m16556public(0);
    }

    @lf
    public E pollFirst() {
        return poll();
    }

    @lf
    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return m16556public(m16545class());
    }

    @lf
    public E removeFirst() {
        return remove();
    }

    @lf
    public E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return m16556public(m16545class());
    }

    @af2
    @lf
    /* renamed from: return, reason: not valid java name */
    public Cnew<E> m16561return(int i) {
        af1.q(i, this.f14894try);
        this.f14889case++;
        int i2 = this.f14894try - 1;
        this.f14894try = i2;
        if (i2 == i) {
            this.f14893new[i2] = null;
            return null;
        }
        E eM16562this = m16562this(i2);
        int iM16577super = m16549final(this.f14894try).m16577super(eM16562this);
        if (iM16577super == i) {
            this.f14893new[this.f14894try] = null;
            return null;
        }
        E eM16562this2 = m16562this(this.f14894try);
        this.f14893new[this.f14894try] = null;
        Cnew<E> cnewM16544catch = m16544catch(i, eM16562this2);
        return iM16577super < i ? cnewM16544catch == null ? new Cnew<>(eM16562this, eM16562this2) : new Cnew<>(eM16562this, cnewM16544catch.f14903if) : cnewM16544catch;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f14894try;
    }

    /* renamed from: this, reason: not valid java name */
    public E m16562this(int i) {
        return (E) this.f14893new[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        int i = this.f14894try;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f14893new, 0, objArr, 0, i);
        return objArr;
    }

    @af2
    /* renamed from: while, reason: not valid java name */
    public boolean m16563while() {
        for (int i = 1; i < this.f14894try; i++) {
            if (!m16549final(i).m16569while(i)) {
                return false;
            }
        }
        return true;
    }

    private z1(Cif<? super E> cif, int i) {
        k2 k2VarM16582else = cif.m16582else();
        z1<E>.Cfor cfor = new Cfor(k2VarM16582else);
        this.f14890do = cfor;
        z1<E>.Cfor cfor2 = new Cfor(k2VarM16582else.reverse());
        this.f14892if = cfor2;
        cfor.f14897if = cfor2;
        cfor2.f14897if = cfor;
        this.f14891for = ((Cif) cif).f14900for;
        this.f14893new = new Object[i];
    }
}
