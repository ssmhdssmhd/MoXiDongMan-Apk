package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import com.google.common.primitives.Cthis;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class l<E extends Enum<E>> extends Cthis<E> implements Serializable {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: case, reason: not valid java name */
    private transient int f14433case;

    /* renamed from: else, reason: not valid java name */
    private transient long f14434else;

    /* renamed from: for, reason: not valid java name */
    private transient Class<E> f14435for;

    /* renamed from: new, reason: not valid java name */
    private transient E[] f14436new;

    /* renamed from: try, reason: not valid java name */
    private transient int[] f14437try;

    /* renamed from: com.google.common.collect.l$do, reason: invalid class name */
    public class Cdo extends l<E>.Cfor<E> {
        public Cdo() {
            super();
        }

        @Override // com.google.common.collect.l.Cfor
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public E mo15982do(int i) {
            return (E) l.this.f14436new[i];
        }
    }

    /* renamed from: com.google.common.collect.l$for, reason: invalid class name */
    public abstract class Cfor<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        public int f14439do = 0;

        /* renamed from: if, reason: not valid java name */
        public int f14441if = -1;

        public Cfor() {
        }

        /* renamed from: do */
        public abstract T mo15982do(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f14439do < l.this.f14436new.length) {
                int[] iArr = l.this.f14437try;
                int i = this.f14439do;
                if (iArr[i] > 0) {
                    return true;
                }
                this.f14439do = i + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T tMo15982do = mo15982do(this.f14439do);
            int i = this.f14439do;
            this.f14441if = i;
            this.f14439do = i + 1;
            return tMo15982do;
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14441if >= 0);
            if (l.this.f14437try[this.f14441if] > 0) {
                l.access$210(l.this);
                l.this.f14434else -= l.this.f14437try[this.f14441if];
                l.this.f14437try[this.f14441if] = 0;
            }
            this.f14441if = -1;
        }
    }

    /* renamed from: com.google.common.collect.l$if, reason: invalid class name */
    public class Cif extends l<E>.Cfor<Multiset.Entry<E>> {

        /* renamed from: com.google.common.collect.l$if$do, reason: invalid class name */
        public class Cdo extends c2.Ccase<E> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f14443do;

            public Cdo(int i) {
                this.f14443do = i;
            }

            @Override // com.google.common.collect.Multiset.Entry
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public E getElement() {
                return (E) l.this.f14436new[this.f14443do];
            }

            @Override // com.google.common.collect.Multiset.Entry
            public int getCount() {
                return l.this.f14437try[this.f14443do];
            }
        }

        public Cif() {
            super();
        }

        @Override // com.google.common.collect.l.Cfor
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Multiset.Entry<E> mo15982do(int i) {
            return new Cdo(i);
        }
    }

    private l(Class<E> cls) {
        this.f14435for = cls;
        af1.m220new(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.f14436new = enumConstants;
        this.f14437try = new int[enumConstants.length];
    }

    public static /* synthetic */ int access$210(l lVar) {
        int i = lVar.f14433case;
        lVar.f14433case = i - 1;
        return i;
    }

    public static <E extends Enum<E>> l<E> create(Class<E> cls) {
        return new l<>(cls);
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m15981do(@b51 Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r5 = (Enum) obj;
        int iOrdinal = r5.ordinal();
        E[] eArr = this.f14436new;
        return iOrdinal < eArr.length && eArr[iOrdinal] == r5;
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.f14435for = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.f14436new = enumConstants;
        this.f14437try = new int[enumConstants.length];
        b3.m15605case(this, objectInputStream);
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f14435for);
        b3.m15606catch(this, objectOutputStream);
    }

    public void checkIsE(@b51 Object obj) {
        af1.m205continue(obj);
        if (m15981do(obj)) {
            return;
        }
        throw new ClassCastException("Expected an " + this.f14435for + " but got " + obj);
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.f14437try, 0);
        this.f14434else = 0L;
        this.f14433case = 0;
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@b51 Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@b51 Object obj) {
        if (m15981do(obj)) {
            return this.f14437try[((Enum) obj).ordinal()];
        }
        return 0;
    }

    @Override // com.google.common.collect.Cthis
    public int distinctElements() {
        return this.f14433case;
    }

    @Override // com.google.common.collect.Cthis
    public Iterator<E> elementIterator() {
        return new Cdo();
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.Cthis
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new Cif();
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return c2.m15652final(this);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int remove(@b51 Object obj, int i) {
        if (!m15981do(obj)) {
            return 0;
        }
        Enum r0 = (Enum) obj;
        Cdefault.m15742if(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        int iOrdinal = r0.ordinal();
        int[] iArr = this.f14437try;
        int i2 = iArr[iOrdinal];
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= i) {
            iArr[iOrdinal] = 0;
            this.f14433case--;
            this.f14434else -= i2;
        } else {
            iArr[iOrdinal] = i2 - i;
            this.f14434else -= i;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Cthis.m17704throws(this.f14434else);
    }

    public static <E extends Enum<E>> l<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        af1.m235try(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        l<E> lVar = new l<>(it.next().getDeclaringClass());
        r1.m16182do(lVar, iterable);
        return lVar;
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int add(E e, int i) {
        checkIsE(e);
        Cdefault.m15742if(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        int iOrdinal = e.ordinal();
        int i2 = this.f14437try[iOrdinal];
        long j = i;
        long j2 = i2 + j;
        af1.m232throw(j2 <= 2147483647L, "too many occurrences: %s", j2);
        this.f14437try[iOrdinal] = (int) j2;
        if (i2 == 0) {
            this.f14433case++;
        }
        this.f14434else += j;
        return i2;
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int setCount(E e, int i) {
        checkIsE(e);
        Cdefault.m15742if(i, "count");
        int iOrdinal = e.ordinal();
        int[] iArr = this.f14437try;
        int i2 = iArr[iOrdinal];
        iArr[iOrdinal] = i;
        this.f14434else += i - i2;
        if (i2 == 0 && i > 0) {
            this.f14433case++;
        } else if (i2 > 0 && i == 0) {
            this.f14433case--;
        }
        return i2;
    }

    public static <E extends Enum<E>> l<E> create(Iterable<E> iterable, Class<E> cls) {
        l<E> lVarCreate = create(cls);
        r1.m16182do(lVarCreate, iterable);
        return lVarCreate;
    }
}
