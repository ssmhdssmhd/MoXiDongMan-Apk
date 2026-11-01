package android.support.v4;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.lang3.Cclass;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class i3<T> implements Set<T> {

    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ boolean f2606break = false;

    /* renamed from: else, reason: not valid java name */
    public static final int f2607else = 16;

    /* renamed from: goto, reason: not valid java name */
    public static final int f2608goto = 8;

    /* renamed from: this, reason: not valid java name */
    public static final double f2609this = 0.75d;

    /* renamed from: case, reason: not valid java name */
    public int f2610case;

    /* renamed from: do, reason: not valid java name */
    public final Cinterface<? super T> f2611do;

    /* renamed from: for, reason: not valid java name */
    public int f2612for;

    /* renamed from: if, reason: not valid java name */
    public T[][] f2613if;

    /* renamed from: new, reason: not valid java name */
    public int f2614new;

    /* renamed from: try, reason: not valid java name */
    public int f2615try;

    /* renamed from: android.support.v4.i3$do, reason: invalid class name */
    public class Cdo implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        public final T[] f2616do;

        /* renamed from: if, reason: not valid java name */
        public int f2618if = 0;

        /* renamed from: for, reason: not valid java name */
        public boolean f2617for = true;

        public Cdo(T[] tArr) {
            this.f2616do = tArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2618if < this.f2616do.length;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f2617for = false;
            T[] tArr = this.f2616do;
            int i = this.f2618if;
            this.f2618if = i + 1;
            return tArr[i];
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f2617for) {
                throw new IllegalStateException();
            }
            i3.this.remove(this.f2616do[this.f2618if - 1]);
            this.f2617for = true;
        }
    }

    public i3() {
        this(null, 16, 8);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(T t) {
        return m3252goto(t) == t;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        boolean z = false;
        for (T t : collection) {
            if (m3252goto(t) != t) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m3246break(T t) {
        T t2;
        if (t == null) {
            return false;
        }
        T[] tArr = this.f2613if[m3250else(t)];
        if (tArr == null) {
            return false;
        }
        for (int i = 0; i < tArr.length && (t2 = tArr[i]) != null; i++) {
            if (this.f2611do.equals(t2, t)) {
                System.arraycopy(tArr, i + 1, tArr, i, (tArr.length - i) - 1);
                tArr[tArr.length - 1] = null;
                this.f2612for--;
                return true;
            }
        }
        return false;
    }

    /* renamed from: case, reason: not valid java name */
    public T m3247case(T t) {
        if (t == null) {
            return t;
        }
        T[] tArr = this.f2613if[m3250else(t)];
        if (tArr == null) {
            return null;
        }
        for (T t2 : tArr) {
            if (t2 == null) {
                return null;
            }
            if (this.f2611do.equals(t2, t)) {
                return t2;
            }
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m3248catch() {
        StringBuilder sb = new StringBuilder();
        for (T[] tArr : this.f2613if) {
            if (tArr == null) {
                sb.append("null\n");
            } else {
                sb.append('[');
                boolean z = true;
                for (T t : tArr) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(Cclass.f28652do);
                    }
                    if (t == null) {
                        sb.append("_");
                    } else {
                        sb.append(t.toString());
                    }
                }
                sb.append("]\n");
            }
        }
        return sb.toString();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f2613if = mo3254new(16);
        this.f2612for = 0;
        this.f2614new = (int) Math.floor(12.0d);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        return m3253if(mo3249do(obj));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0029, code lost:
    
        continue;
     */
    @Override // java.util.Set, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsAll(Collection<?> collection) {
        if (!(collection instanceof i3)) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!m3253if(mo3249do(it.next()))) {
                    return false;
                }
            }
            return true;
        }
        for (T[] tArr : ((i3) collection).f2613if) {
            if (tArr != null) {
                for (T t : tArr) {
                    if (t == null) {
                        break;
                    }
                    if (!m3253if(mo3249do(t))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public T mo3249do(Object obj) {
        return obj;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m3250else(T t) {
        return this.f2611do.hashCode(t) & (this.f2613if.length - 1);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i3)) {
            return false;
        }
        i3 i3Var = (i3) obj;
        if (i3Var.size() != size()) {
            return false;
        }
        return containsAll(i3Var);
    }

    /* renamed from: for, reason: not valid java name */
    public T[] mo3251for(int i) {
        return (T[]) new Object[i];
    }

    /* renamed from: goto, reason: not valid java name */
    public final T m3252goto(T t) {
        if (this.f2612for > this.f2614new) {
            m3256try();
        }
        return m3255this(t);
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        int iM9665for = y01.m9665for();
        for (T[] tArr : this.f2613if) {
            if (tArr != null) {
                for (T t : tArr) {
                    if (t == null) {
                        break;
                    }
                    iM9665for = y01.m9668try(iM9665for, this.f2611do.hashCode(t));
                }
            }
        }
        return y01.m9664do(iM9665for, size());
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m3253if(T t) {
        return (t == null || m3247case(t) == null) ? false : true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f2612for == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new Cdo(toArray());
    }

    /* renamed from: new, reason: not valid java name */
    public T[][] mo3254new(int i) {
        return (T[][]) new Object[i][];
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        return m3246break(mo3249do(obj));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zM3246break = false;
        while (it.hasNext()) {
            zM3246break |= m3246break(mo3249do(it.next()));
        }
        return zM3246break;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        int i = 0;
        for (T[] tArr : this.f2613if) {
            if (tArr != null) {
                int i2 = 0;
                int i3 = 0;
                while (i2 < tArr.length && tArr[i2] != null) {
                    if (collection.contains(tArr[i2])) {
                        if (i2 != i3) {
                            tArr[i3] = tArr[i2];
                        }
                        i3++;
                        i++;
                    }
                    i2++;
                }
                i += i3;
                while (i3 < i2) {
                    tArr[i3] = null;
                    i3++;
                }
            }
        }
        boolean z = i != this.f2612for;
        this.f2612for = i;
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f2612for;
    }

    /* renamed from: this, reason: not valid java name */
    public T m3255this(T t) {
        int iM3250else = m3250else(t);
        T[] tArr = this.f2613if[iM3250else];
        if (tArr == null) {
            T[] tArrMo3251for = mo3251for(this.f2610case);
            tArrMo3251for[0] = t;
            this.f2613if[iM3250else] = tArrMo3251for;
            this.f2612for++;
            return t;
        }
        for (int i = 0; i < tArr.length; i++) {
            T t2 = tArr[i];
            if (t2 == null) {
                tArr[i] = t;
                this.f2612for++;
                return t;
            }
            if (this.f2611do.equals(t2, t)) {
                return t2;
            }
        }
        int length = tArr.length;
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length * 2);
        ((T[][]) this.f2613if)[iM3250else] = objArrCopyOf;
        objArrCopyOf[length] = t;
        this.f2612for++;
        return t;
    }

    @Override // java.util.Set, java.util.Collection
    public T[] toArray() {
        T[] tArrMo3251for = mo3251for(size());
        int i = 0;
        for (T[] tArr : this.f2613if) {
            if (tArr != null) {
                int length = tArr.length;
                int i2 = 0;
                while (i2 < length) {
                    T t = tArr[i2];
                    if (t == null) {
                        break;
                    }
                    tArrMo3251for[i] = t;
                    i2++;
                    i++;
                }
            }
        }
        return tArrMo3251for;
    }

    public String toString() {
        if (size() == 0) {
            return MessageFormatter.DELIM_STR;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(MessageFormatter.DELIM_START);
        boolean z = true;
        for (T[] tArr : this.f2613if) {
            if (tArr != null) {
                for (T t : tArr) {
                    if (t == null) {
                        break;
                    }
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(t.toString());
                }
            }
        }
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m3256try() {
        T[] tArrMo3251for;
        T[][] tArr = this.f2613if;
        this.f2615try += 4;
        int length = tArr.length * 2;
        T[][] tArrMo3254new = mo3254new(length);
        int[] iArr = new int[tArrMo3254new.length];
        this.f2613if = tArrMo3254new;
        double d = length;
        Double.isNaN(d);
        this.f2614new = (int) (d * 0.75d);
        size();
        for (T[] tArr2 : tArr) {
            if (tArr2 != null) {
                for (T t : tArr2) {
                    if (t == null) {
                        break;
                    }
                    int iM3250else = m3250else(t);
                    int i = iArr[iM3250else];
                    if (i == 0) {
                        tArrMo3251for = mo3251for(this.f2610case);
                        tArrMo3254new[iM3250else] = tArrMo3251for;
                    } else {
                        tArrMo3251for = tArrMo3254new[iM3250else];
                        if (i == tArrMo3251for.length) {
                            tArrMo3251for = (T[]) Arrays.copyOf(tArrMo3251for, tArrMo3251for.length * 2);
                            tArrMo3254new[iM3250else] = tArrMo3251for;
                        }
                    }
                    tArrMo3251for[i] = t;
                    iArr[iM3250else] = iArr[iM3250else] + 1;
                }
            }
        }
    }

    public i3(Cinterface<? super T> cinterface) {
        this(cinterface, 16, 8);
    }

    public i3(Cinterface<? super T> cinterface, int i, int i2) {
        this.f2612for = 0;
        this.f2614new = (int) Math.floor(12.0d);
        this.f2615try = 1;
        this.f2610case = 8;
        this.f2611do = cinterface == null ? r51.f5664do : cinterface;
        this.f2613if = mo3254new(i);
        this.f2610case = i2;
    }

    @Override // java.util.Set, java.util.Collection
    public <U> U[] toArray(U[] uArr) {
        if (uArr.length < size()) {
            uArr = (U[]) Arrays.copyOf(uArr, size());
        }
        int i = 0;
        for (T[] tArr : this.f2613if) {
            if (tArr != null) {
                int length = tArr.length;
                int i2 = 0;
                while (i2 < length) {
                    T t = tArr[i2];
                    if (t == null) {
                        break;
                    }
                    uArr[i] = t;
                    i2++;
                    i++;
                }
            }
        }
        return uArr;
    }
}
