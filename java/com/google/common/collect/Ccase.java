package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Cthis;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

@ki0(emulated = true)
/* renamed from: com.google.common.collect.case, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ccase<E> extends Cthis<E> implements Serializable {

    @li0
    private static final long serialVersionUID = 0;
    public transient i2<E> backingMap;
    public transient long size;

    /* renamed from: com.google.common.collect.case$do, reason: invalid class name */
    public class Cdo extends Ccase<E>.Cfor<E> {
        public Cdo() {
            super();
        }

        @Override // com.google.common.collect.Ccase.Cfor
        /* renamed from: if, reason: not valid java name */
        public E mo15730if(int i) {
            return Ccase.this.backingMap.m15884break(i);
        }
    }

    /* renamed from: com.google.common.collect.case$for, reason: invalid class name */
    public abstract class Cfor<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        public int f14195do;

        /* renamed from: for, reason: not valid java name */
        public int f14196for;

        /* renamed from: if, reason: not valid java name */
        public int f14197if = -1;

        public Cfor() {
            this.f14195do = Ccase.this.backingMap.mo15885case();
            this.f14196for = Ccase.this.backingMap.f14337new;
        }

        /* renamed from: do, reason: not valid java name */
        private void m15731do() {
            if (Ccase.this.backingMap.f14337new != this.f14196for) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m15731do();
            return this.f14195do >= 0;
        }

        /* renamed from: if */
        public abstract T mo15730if(int i);

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tMo15730if = mo15730if(this.f14195do);
            int i = this.f14195do;
            this.f14197if = i;
            this.f14195do = Ccase.this.backingMap.mo15895public(i);
            return tMo15730if;
        }

        @Override // java.util.Iterator
        public void remove() {
            m15731do();
            Cdefault.m15744try(this.f14197if != -1);
            Ccase.this.size -= r0.backingMap.m15887default(this.f14197if);
            this.f14195do = Ccase.this.backingMap.mo15896return(this.f14195do, this.f14197if);
            this.f14197if = -1;
            this.f14196for = Ccase.this.backingMap.f14337new;
        }
    }

    /* renamed from: com.google.common.collect.case$if, reason: invalid class name */
    public class Cif extends Ccase<E>.Cfor<Multiset.Entry<E>> {
        public Cif() {
            super();
        }

        @Override // com.google.common.collect.Ccase.Cfor
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public Multiset.Entry<E> mo15730if(int i) {
            return Ccase.this.backingMap.m15892goto(i);
        }
    }

    public Ccase(int i) {
        init(i);
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iM15610goto = b3.m15610goto(objectInputStream);
        init(3);
        b3.m15608else(this, objectInputStream, iM15610goto);
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        b3.m15606catch(this, objectOutputStream);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public final int add(@b51 E e, int i) {
        if (i == 0) {
            return count(e);
        }
        af1.m202catch(i > 0, "occurrences cannot be negative: %s", i);
        int iM15891final = this.backingMap.m15891final(e);
        if (iM15891final == -1) {
            this.backingMap.m15897static(e, i);
            this.size += i;
            return 0;
        }
        int iM15886class = this.backingMap.m15886class(iM15891final);
        long j = i;
        long j2 = iM15886class + j;
        af1.m232throw(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.backingMap.m15894private(iM15891final, (int) j2);
        this.size += j;
        return iM15886class;
    }

    public void addTo(Multiset<? super E> multiset) {
        af1.m205continue(multiset);
        int iMo15885case = this.backingMap.mo15885case();
        while (iMo15885case >= 0) {
            multiset.add(this.backingMap.m15884break(iMo15885case), this.backingMap.m15886class(iMo15885case));
            iMo15885case = this.backingMap.mo15895public(iMo15885case);
        }
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.backingMap.mo15888do();
        this.size = 0L;
    }

    @Override // com.google.common.collect.Multiset
    public final int count(@b51 Object obj) {
        return this.backingMap.m15889else(obj);
    }

    @Override // com.google.common.collect.Cthis
    public final int distinctElements() {
        return this.backingMap.m15883abstract();
    }

    @Override // com.google.common.collect.Cthis
    public final Iterator<E> elementIterator() {
        return new Cdo();
    }

    @Override // com.google.common.collect.Cthis
    public final Iterator<Multiset.Entry<E>> entryIterator() {
        return new Cif();
    }

    public abstract void init(int i);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public final Iterator<E> iterator() {
        return c2.m15652final(this);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public final int remove(@b51 Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        af1.m202catch(i > 0, "occurrences cannot be negative: %s", i);
        int iM15891final = this.backingMap.m15891final(obj);
        if (iM15891final == -1) {
            return 0;
        }
        int iM15886class = this.backingMap.m15886class(iM15891final);
        if (iM15886class > i) {
            this.backingMap.m15894private(iM15891final, iM15886class - i);
        } else {
            this.backingMap.m15887default(iM15891final);
            i = iM15886class;
        }
        this.size -= i;
        return iM15886class;
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public final int setCount(@b51 E e, int i) {
        Cdefault.m15742if(i, "count");
        i2<E> i2Var = this.backingMap;
        int iM15899switch = i == 0 ? i2Var.m15899switch(e) : i2Var.m15897static(e, i);
        this.size += i - iM15899switch;
        return iM15899switch;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public final int size() {
        return Cthis.m17704throws(this.size);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public final boolean setCount(@b51 E e, int i, int i2) {
        Cdefault.m15742if(i, "oldCount");
        Cdefault.m15742if(i2, "newCount");
        int iM15891final = this.backingMap.m15891final(e);
        if (iM15891final == -1) {
            if (i != 0) {
                return false;
            }
            if (i2 > 0) {
                this.backingMap.m15897static(e, i2);
                this.size += i2;
            }
            return true;
        }
        if (this.backingMap.m15886class(iM15891final) != i) {
            return false;
        }
        if (i2 == 0) {
            this.backingMap.m15887default(iM15891final);
            this.size -= i;
        } else {
            this.backingMap.m15894private(iM15891final, i2);
            this.size += i2 - i;
        }
        return true;
    }
}
