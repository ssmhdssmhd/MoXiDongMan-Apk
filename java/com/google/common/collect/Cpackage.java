package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Cthrow;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

@li0
/* renamed from: com.google.common.collect.package, reason: invalid class name */
/* loaded from: classes2.dex */
class Cpackage<E> extends AbstractSet<E> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient Object f14497do;

    @af2
    @l01
    public transient Object[] elements;

    /* renamed from: for, reason: not valid java name */
    private transient int f14498for;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient int[] f14499if;

    /* renamed from: new, reason: not valid java name */
    private transient int f14500new;

    /* renamed from: com.google.common.collect.package$do, reason: invalid class name */
    public class Cdo implements Iterator<E> {

        /* renamed from: do, reason: not valid java name */
        public int f14501do;

        /* renamed from: for, reason: not valid java name */
        public int f14502for = -1;

        /* renamed from: if, reason: not valid java name */
        public int f14503if;

        public Cdo() {
            this.f14501do = Cpackage.this.f14498for;
            this.f14503if = Cpackage.this.firstEntryIndex();
        }

        /* renamed from: do, reason: not valid java name */
        private void m16126do() {
            if (Cpackage.this.f14498for != this.f14501do) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14503if >= 0;
        }

        /* renamed from: if, reason: not valid java name */
        public void m16127if() {
            this.f14501do += 32;
        }

        @Override // java.util.Iterator
        public E next() {
            m16126do();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.f14503if;
            this.f14502for = i;
            Cpackage cpackage = Cpackage.this;
            E e = (E) cpackage.elements[i];
            this.f14503if = cpackage.getSuccessor(i);
            return e;
        }

        @Override // java.util.Iterator
        public void remove() {
            m16126do();
            Cdefault.m15744try(this.f14502for >= 0);
            m16127if();
            Cpackage cpackage = Cpackage.this;
            cpackage.remove(cpackage.elements[this.f14502for]);
            this.f14503if = Cpackage.this.adjustAfterRemove(this.f14503if, this.f14502for);
            this.f14502for = -1;
        }
    }

    public Cpackage() {
        init(3);
    }

    public static <E> Cpackage<E> create() {
        return new Cpackage<>();
    }

    public static <E> Cpackage<E> createWithExpectedSize(int i) {
        return new Cpackage<>(i);
    }

    /* renamed from: do, reason: not valid java name */
    private int m16122do() {
        return (1 << (this.f14498for & 31)) - 1;
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    private int m16123for(int i, int i2, int i3, int i4) {
        Object objM16130do = Cprivate.m16130do(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            Cprivate.m16136this(objM16130do, i3 & i5, i4 + 1);
        }
        Object obj = this.f14497do;
        int[] iArr = this.f14499if;
        for (int i6 = 0; i6 <= i; i6++) {
            int iM16133goto = Cprivate.m16133goto(obj, i6);
            while (iM16133goto != 0) {
                int i7 = iM16133goto - 1;
                int i8 = iArr[i7];
                int iM16134if = Cprivate.m16134if(i8, i) | i6;
                int i9 = iM16134if & i5;
                int iM16133goto2 = Cprivate.m16133goto(objM16130do, i9);
                Cprivate.m16136this(objM16130do, i9, iM16133goto);
                iArr[i7] = Cprivate.m16135new(iM16134if, iM16133goto2, i5);
                iM16133goto = Cprivate.m16132for(i8, i);
            }
        }
        this.f14497do = objM16130do;
        m16125new(i5);
        return i5;
    }

    /* renamed from: if, reason: not valid java name */
    private void m16124if(int i) {
        int iMin;
        int length = this.f14499if.length;
        if (i <= length || (iMin = Math.min(Cprivate.f14515try, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    /* renamed from: new, reason: not valid java name */
    private void m16125new(int i) {
        this.f14498for = Cprivate.m16135new(this.f14498for, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid size: " + i);
        }
        init(i);
        for (int i2 = 0; i2 < i; i2++) {
            add(objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f14500new);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            objectOutputStream.writeObject(this.elements[iFirstEntryIndex]);
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @lf
    public boolean add(@b51 E e) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        int[] iArr = this.f14499if;
        Object[] objArr = this.elements;
        int i = this.f14500new;
        int i2 = i + 1;
        int iM16086new = n0.m16086new(e);
        int iM16122do = m16122do();
        int i3 = iM16086new & iM16122do;
        int iM16133goto = Cprivate.m16133goto(this.f14497do, i3);
        if (iM16133goto != 0) {
            int iM16134if = Cprivate.m16134if(iM16086new, iM16122do);
            while (true) {
                int i4 = iM16133goto - 1;
                int i5 = iArr[i4];
                if (Cprivate.m16134if(i5, iM16122do) == iM16134if && Cthrow.m15205do(e, objArr[i4])) {
                    return false;
                }
                int iM16132for = Cprivate.m16132for(i5, iM16122do);
                if (iM16132for != 0) {
                    iM16133goto = iM16132for;
                } else if (i2 > iM16122do) {
                    iM16122do = m16123for(iM16122do, Cprivate.m16137try(iM16122do), iM16086new, i);
                } else {
                    iArr[i4] = Cprivate.m16135new(i5, i2, iM16122do);
                }
            }
        } else if (i2 > iM16122do) {
            iM16122do = m16123for(iM16122do, Cprivate.m16137try(iM16122do), iM16086new, i);
        } else {
            Cprivate.m16136this(this.f14497do, i3, i2);
        }
        m16124if(i2);
        insertEntry(i, e, iM16086new, iM16122do);
        this.f14500new = i2;
        incrementModCount();
        return true;
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    @lf
    public int allocArrays() {
        af1.u(needsAllocArrays(), "Arrays already allocated");
        int i = this.f14498for;
        int iM16128break = Cprivate.m16128break(i);
        this.f14497do = Cprivate.m16130do(iM16128break);
        m16125new(iM16128break - 1);
        this.f14499if = new int[i];
        this.elements = new Object[i];
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Arrays.fill(this.elements, 0, this.f14500new, (Object) null);
        Cprivate.m16131else(this.f14497do);
        Arrays.fill(this.f14499if, 0, this.f14500new, 0);
        this.f14500new = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@b51 Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        int iM16086new = n0.m16086new(obj);
        int iM16122do = m16122do();
        int iM16133goto = Cprivate.m16133goto(this.f14497do, iM16086new & iM16122do);
        if (iM16133goto == 0) {
            return false;
        }
        int iM16134if = Cprivate.m16134if(iM16086new, iM16122do);
        do {
            int i = iM16133goto - 1;
            int i2 = this.f14499if[i];
            if (Cprivate.m16134if(i2, iM16122do) == iM16134if && Cthrow.m15205do(obj, this.elements[i])) {
                return true;
            }
            iM16133goto = Cprivate.m16132for(i2, iM16122do);
        } while (iM16133goto != 0);
        return false;
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.f14500new) {
            return i2;
        }
        return -1;
    }

    public void incrementModCount() {
        this.f14498for += 32;
    }

    public void init(int i) {
        af1.m235try(i >= 0, "Expected size must be >= 0");
        this.f14498for = Math.max(1, Math.min(Cprivate.f14515try, i));
    }

    public void insertEntry(int i, @b51 E e, int i2, int i3) {
        this.f14499if[i] = Cprivate.m16135new(i2, 0, i3);
        this.elements[i] = e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f14500new == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new Cdo();
    }

    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        if (i >= size) {
            this.elements[i] = null;
            this.f14499if[i] = 0;
            return;
        }
        Object[] objArr = this.elements;
        Object obj = objArr[size];
        objArr[i] = obj;
        objArr[size] = null;
        int[] iArr = this.f14499if;
        iArr[i] = iArr[size];
        iArr[size] = 0;
        int iM16086new = n0.m16086new(obj) & i2;
        int iM16133goto = Cprivate.m16133goto(this.f14497do, iM16086new);
        int i3 = size + 1;
        if (iM16133goto == i3) {
            Cprivate.m16136this(this.f14497do, iM16086new, i + 1);
            return;
        }
        while (true) {
            int i4 = iM16133goto - 1;
            int i5 = this.f14499if[i4];
            int iM16132for = Cprivate.m16132for(i5, i2);
            if (iM16132for == i3) {
                this.f14499if[i4] = Cprivate.m16135new(i5, i + 1, i2);
                return;
            }
            iM16133goto = iM16132for;
        }
    }

    @af2
    public boolean needsAllocArrays() {
        return this.f14497do == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @lf
    public boolean remove(@b51 Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        int iM16122do = m16122do();
        int iM16129case = Cprivate.m16129case(obj, null, iM16122do, this.f14497do, this.f14499if, this.elements, null);
        if (iM16129case == -1) {
            return false;
        }
        moveLastEntry(iM16129case, iM16122do);
        this.f14500new--;
        incrementModCount();
        return true;
    }

    public void resizeEntries(int i) {
        this.f14499if = Arrays.copyOf(this.f14499if, i);
        this.elements = Arrays.copyOf(this.elements, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f14500new;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return needsAllocArrays() ? new Object[0] : Arrays.copyOf(this.elements, this.f14500new);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        int i = this.f14500new;
        if (i < this.f14499if.length) {
            resizeEntries(i);
        }
        int iM16128break = Cprivate.m16128break(i);
        int iM16122do = m16122do();
        if (iM16128break < iM16122do) {
            m16123for(iM16122do, iM16128break, 0, 0);
        }
    }

    public static <E> Cpackage<E> create(Collection<? extends E> collection) {
        Cpackage<E> cpackageCreateWithExpectedSize = createWithExpectedSize(collection.size());
        cpackageCreateWithExpectedSize.addAll(collection);
        return cpackageCreateWithExpectedSize;
    }

    public Cpackage(int i) {
        init(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @lf
    public <T> T[] toArray(T[] tArr) {
        if (needsAllocArrays()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        return (T[]) h2.m15840final(this.elements, 0, this.f14500new, tArr);
    }

    @SafeVarargs
    public static <E> Cpackage<E> create(E... eArr) {
        Cpackage<E> cpackageCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(cpackageCreateWithExpectedSize, eArr);
        return cpackageCreateWithExpectedSize;
    }
}
