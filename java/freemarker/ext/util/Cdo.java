package freemarker.ext.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@Deprecated
/* renamed from: freemarker.ext.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends AbstractMap implements Map, Cloneable, Serializable {

    /* renamed from: break, reason: not valid java name */
    private static Cnew f24983break = new Cnew();

    /* renamed from: else, reason: not valid java name */
    private static final int f24984else = 0;

    /* renamed from: goto, reason: not valid java name */
    private static final int f24985goto = 1;
    public static final long serialVersionUID = 362498820763181265L;

    /* renamed from: this, reason: not valid java name */
    private static final int f24986this = 2;

    /* renamed from: case, reason: not valid java name */
    private transient Collection f24987case;

    /* renamed from: do, reason: not valid java name */
    private transient Ctry[] f24988do;

    /* renamed from: for, reason: not valid java name */
    private transient int f24989for;

    /* renamed from: if, reason: not valid java name */
    private transient int f24990if;
    private float loadFactor;

    /* renamed from: new, reason: not valid java name */
    private transient Set f24991new;
    private int threshold;

    /* renamed from: try, reason: not valid java name */
    private transient Set f24992try;

    /* renamed from: freemarker.ext.util.do$case, reason: invalid class name */
    public class Ccase implements Iterator {

        /* renamed from: case, reason: not valid java name */
        private int f24993case;

        /* renamed from: do, reason: not valid java name */
        public Ctry[] f24994do;

        /* renamed from: for, reason: not valid java name */
        public Ctry f24996for;

        /* renamed from: if, reason: not valid java name */
        public int f24997if;

        /* renamed from: new, reason: not valid java name */
        public Ctry f24998new;

        /* renamed from: try, reason: not valid java name */
        public int f24999try;

        public Ccase(int i) {
            Ctry[] ctryArr = Cdo.this.f24988do;
            this.f24994do = ctryArr;
            this.f24997if = ctryArr.length;
            this.f24996for = null;
            this.f24998new = null;
            this.f24993case = Cdo.this.f24989for;
            this.f24999try = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Ctry ctry = this.f24996for;
            int i = this.f24997if;
            Ctry[] ctryArr = this.f24994do;
            while (ctry == null && i > 0) {
                i--;
                ctry = ctryArr[i];
            }
            this.f24996for = ctry;
            this.f24997if = i;
            return ctry != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (Cdo.this.f24989for != this.f24993case) {
                throw new ConcurrentModificationException();
            }
            Ctry ctry = this.f24996for;
            int i = this.f24997if;
            Ctry[] ctryArr = this.f24994do;
            while (ctry == null && i > 0) {
                i--;
                ctry = ctryArr[i];
            }
            this.f24996for = ctry;
            this.f24997if = i;
            if (ctry == null) {
                throw new NoSuchElementException();
            }
            this.f24998new = ctry;
            this.f24996for = ctry.f25006new;
            int i2 = this.f24999try;
            return i2 == 0 ? ctry.f25005if : i2 == 1 ? ctry.f25004for : ctry;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f24998new == null) {
                throw new IllegalStateException();
            }
            if (Cdo.this.f24989for != this.f24993case) {
                throw new ConcurrentModificationException();
            }
            Ctry[] ctryArr = Cdo.this.f24988do;
            int length = (this.f24998new.f25003do & Integer.MAX_VALUE) % ctryArr.length;
            Ctry ctry = null;
            for (Ctry ctry2 = ctryArr[length]; ctry2 != null; ctry2 = ctry2.f25006new) {
                if (ctry2 == this.f24998new) {
                    Cdo.access$308(Cdo.this);
                    this.f24993case++;
                    if (ctry == null) {
                        ctryArr[length] = ctry2.f25006new;
                    } else {
                        ctry.f25006new = ctry2.f25006new;
                    }
                    Cdo.access$110(Cdo.this);
                    this.f24998new = null;
                    return;
                }
                ctry = ctry2;
            }
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: freemarker.ext.util.do$do, reason: invalid class name and collision with other inner class name */
    public class C0257do extends AbstractSet {
        public C0257do() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Cdo.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return Cdo.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return Cdo.this.m29128do(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i = Cdo.this.f24990if;
            Cdo.this.remove(obj);
            return Cdo.this.f24990if != i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cdo.this.f24990if;
        }
    }

    /* renamed from: freemarker.ext.util.do$for, reason: invalid class name */
    public class Cfor extends AbstractSet {
        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Cdo.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Ctry[] ctryArr = Cdo.this.f24988do;
            int iIdentityHashCode = key == null ? 0 : System.identityHashCode(key);
            for (Ctry ctry = ctryArr[(Integer.MAX_VALUE & iIdentityHashCode) % ctryArr.length]; ctry != null; ctry = ctry.f25006new) {
                if (ctry.f25003do == iIdentityHashCode && ctry.equals(entry)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return Cdo.this.m29128do(2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Ctry[] ctryArr = Cdo.this.f24988do;
            int iIdentityHashCode = key == null ? 0 : System.identityHashCode(key);
            int length = (Integer.MAX_VALUE & iIdentityHashCode) % ctryArr.length;
            Ctry ctry = null;
            for (Ctry ctry2 = ctryArr[length]; ctry2 != null; ctry2 = ctry2.f25006new) {
                if (ctry2.f25003do == iIdentityHashCode && ctry2.equals(entry)) {
                    Cdo.access$308(Cdo.this);
                    if (ctry != null) {
                        ctry.f25006new = ctry2.f25006new;
                    } else {
                        ctryArr[length] = ctry2.f25006new;
                    }
                    Cdo.access$110(Cdo.this);
                    ctry2.f25004for = null;
                    return true;
                }
                ctry = ctry2;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cdo.this.f24990if;
        }
    }

    /* renamed from: freemarker.ext.util.do$if, reason: invalid class name */
    public class Cif extends AbstractCollection {
        public Cif() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Cdo.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return Cdo.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return Cdo.this.m29128do(1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return Cdo.this.f24990if;
        }
    }

    /* renamed from: freemarker.ext.util.do$new, reason: invalid class name */
    public static class Cnew implements Iterator {
        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException();
        }
    }

    /* renamed from: freemarker.ext.util.do$try, reason: invalid class name */
    public static class Ctry implements Map.Entry {

        /* renamed from: do, reason: not valid java name */
        public int f25003do;

        /* renamed from: for, reason: not valid java name */
        public Object f25004for;

        /* renamed from: if, reason: not valid java name */
        public Object f25005if;

        /* renamed from: new, reason: not valid java name */
        public Ctry f25006new;

        public Ctry(int i, Object obj, Object obj2, Ctry ctry) {
            this.f25003do = i;
            this.f25005if = obj;
            this.f25004for = obj2;
            this.f25006new = ctry;
        }

        public Object clone() {
            int i = this.f25003do;
            Object obj = this.f25005if;
            Object obj2 = this.f25004for;
            Ctry ctry = this.f25006new;
            return new Ctry(i, obj, obj2, ctry == null ? null : (Ctry) ctry.clone());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (this.f25005if != entry.getKey()) {
                return false;
            }
            Object obj2 = this.f25004for;
            if (obj2 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!obj2.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f25005if;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f25004for;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int i = this.f25003do;
            Object obj = this.f25004for;
            return i ^ (obj == null ? 0 : obj.hashCode());
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f25004for;
            this.f25004for = obj;
            return obj2;
        }

        public String toString() {
            return this.f25005if + "=" + this.f25004for;
        }
    }

    public Cdo(int i, float f) {
        this.f24989for = 0;
        this.f24991new = null;
        this.f24992try = null;
        this.f24987case = null;
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Initial Capacity: " + i);
        }
        if (f <= 0.0f || Float.isNaN(f)) {
            throw new IllegalArgumentException("Illegal Load factor: " + f);
        }
        i = i == 0 ? 1 : i;
        this.loadFactor = f;
        this.f24988do = new Ctry[i];
        this.threshold = (int) (i * f);
    }

    public static /* synthetic */ int access$110(Cdo cdo) {
        int i = cdo.f24990if;
        cdo.f24990if = i - 1;
        return i;
    }

    public static /* synthetic */ int access$308(Cdo cdo) {
        int i = cdo.f24989for;
        cdo.f24989for = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public Iterator m29128do(int i) {
        return this.f24990if == 0 ? f24983break : new Ccase(i);
    }

    /* renamed from: if, reason: not valid java name */
    private void m29129if() {
        Ctry[] ctryArr = this.f24988do;
        int length = ctryArr.length;
        int i = (length * 2) + 1;
        Ctry[] ctryArr2 = new Ctry[i];
        this.f24989for++;
        this.threshold = (int) (i * this.loadFactor);
        this.f24988do = ctryArr2;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            Ctry ctry = ctryArr[i2];
            while (ctry != null) {
                Ctry ctry2 = ctry.f25006new;
                int i3 = (ctry.f25003do & Integer.MAX_VALUE) % i;
                ctry.f25006new = ctryArr2[i3];
                ctryArr2[i3] = ctry;
                ctry = ctry2;
            }
            length = i2;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f24988do = new Ctry[objectInputStream.readInt()];
        int i = objectInputStream.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f24988do.length);
        objectOutputStream.writeInt(this.f24990if);
        for (int length = this.f24988do.length - 1; length >= 0; length--) {
            for (Ctry ctry = this.f24988do[length]; ctry != null; ctry = ctry.f25006new) {
                objectOutputStream.writeObject(ctry.f25005if);
                objectOutputStream.writeObject(ctry.f25004for);
            }
        }
    }

    public int capacity() {
        return this.f24988do.length;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Ctry[] ctryArr = this.f24988do;
        this.f24989for++;
        int length = ctryArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.f24990if = 0;
                return;
            }
            ctryArr[length] = null;
        }
    }

    @Override // java.util.AbstractMap
    public Object clone() {
        try {
            Cdo cdo = (Cdo) super.clone();
            cdo.f24988do = new Ctry[this.f24988do.length];
            int length = this.f24988do.length;
            while (true) {
                int i = length - 1;
                Ctry ctry = null;
                if (length <= 0) {
                    cdo.f24991new = null;
                    cdo.f24992try = null;
                    cdo.f24987case = null;
                    cdo.f24989for = 0;
                    return cdo;
                }
                Ctry[] ctryArr = cdo.f24988do;
                Ctry[] ctryArr2 = this.f24988do;
                if (ctryArr2[i] != null) {
                    ctry = (Ctry) ctryArr2[i].clone();
                }
                ctryArr[i] = ctry;
                length = i;
            }
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Ctry[] ctryArr = this.f24988do;
        if (obj != null) {
            int iIdentityHashCode = System.identityHashCode(obj);
            for (Ctry ctry = ctryArr[(Integer.MAX_VALUE & iIdentityHashCode) % ctryArr.length]; ctry != null; ctry = ctry.f25006new) {
                if (ctry.f25003do == iIdentityHashCode && obj == ctry.f25005if) {
                    return true;
                }
            }
        } else {
            for (Ctry ctry2 = ctryArr[0]; ctry2 != null; ctry2 = ctry2.f25006new) {
                if (ctry2.f25005if == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Ctry[] ctryArr = this.f24988do;
        if (obj == null) {
            int length = ctryArr.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    return false;
                }
                for (Ctry ctry = ctryArr[i]; ctry != null; ctry = ctry.f25006new) {
                    if (ctry.f25004for == null) {
                        return true;
                    }
                }
                length = i;
            }
        } else {
            int length2 = ctryArr.length;
            while (true) {
                int i2 = length2 - 1;
                if (length2 <= 0) {
                    return false;
                }
                for (Ctry ctry2 = ctryArr[i2]; ctry2 != null; ctry2 = ctry2.f25006new) {
                    if (obj.equals(ctry2.f25004for)) {
                        return true;
                    }
                }
                length2 = i2;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        if (this.f24992try == null) {
            this.f24992try = new Cfor();
        }
        return this.f24992try;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Ctry[] ctryArr = this.f24988do;
        if (obj == null) {
            for (Ctry ctry = ctryArr[0]; ctry != null; ctry = ctry.f25006new) {
                if (ctry.f25005if == null) {
                    return ctry.f25004for;
                }
            }
            return null;
        }
        int iIdentityHashCode = System.identityHashCode(obj);
        for (Ctry ctry2 = ctryArr[(Integer.MAX_VALUE & iIdentityHashCode) % ctryArr.length]; ctry2 != null; ctry2 = ctry2.f25006new) {
            if (ctry2.f25003do == iIdentityHashCode && obj == ctry2.f25005if) {
                return ctry2.f25004for;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.f24990if == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        if (this.f24991new == null) {
            this.f24991new = new C0257do();
        }
        return this.f24991new;
    }

    public float loadFactor() {
        return this.loadFactor;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        int length;
        Ctry[] ctryArr = this.f24988do;
        int iIdentityHashCode = 0;
        if (obj != null) {
            iIdentityHashCode = System.identityHashCode(obj);
            length = (iIdentityHashCode & Integer.MAX_VALUE) % ctryArr.length;
            for (Ctry ctry = ctryArr[length]; ctry != null; ctry = ctry.f25006new) {
                if (ctry.f25003do == iIdentityHashCode && obj == ctry.f25005if) {
                    Object obj3 = ctry.f25004for;
                    ctry.f25004for = obj2;
                    return obj3;
                }
            }
        } else {
            for (Ctry ctry2 = ctryArr[0]; ctry2 != null; ctry2 = ctry2.f25006new) {
                if (ctry2.f25005if == null) {
                    Object obj4 = ctry2.f25004for;
                    ctry2.f25004for = obj2;
                    return obj4;
                }
            }
            length = 0;
        }
        this.f24989for++;
        if (this.f24990if >= this.threshold) {
            m29129if();
            ctryArr = this.f24988do;
            length = (Integer.MAX_VALUE & iIdentityHashCode) % ctryArr.length;
        }
        ctryArr[length] = new Ctry(iIdentityHashCode, obj, obj2, ctryArr[length]);
        this.f24990if++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        Ctry[] ctryArr = this.f24988do;
        if (obj != null) {
            int iIdentityHashCode = System.identityHashCode(obj);
            int length = (Integer.MAX_VALUE & iIdentityHashCode) % ctryArr.length;
            Ctry ctry = null;
            for (Ctry ctry2 = ctryArr[length]; ctry2 != null; ctry2 = ctry2.f25006new) {
                if (ctry2.f25003do == iIdentityHashCode && obj == ctry2.f25005if) {
                    this.f24989for++;
                    if (ctry != null) {
                        ctry.f25006new = ctry2.f25006new;
                    } else {
                        ctryArr[length] = ctry2.f25006new;
                    }
                    this.f24990if--;
                    Object obj2 = ctry2.f25004for;
                    ctry2.f25004for = null;
                    return obj2;
                }
                ctry = ctry2;
            }
        } else {
            Ctry ctry3 = null;
            for (Ctry ctry4 = ctryArr[0]; ctry4 != null; ctry4 = ctry4.f25006new) {
                if (ctry4.f25005if == null) {
                    this.f24989for++;
                    if (ctry3 != null) {
                        ctry3.f25006new = ctry4.f25006new;
                    } else {
                        ctryArr[0] = ctry4.f25006new;
                    }
                    this.f24990if--;
                    Object obj3 = ctry4.f25004for;
                    ctry4.f25004for = null;
                    return obj3;
                }
                ctry3 = ctry4;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f24990if;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection values() {
        if (this.f24987case == null) {
            this.f24987case = new Cif();
        }
        return this.f24987case;
    }

    public Cdo(int i) {
        this(i, 0.75f);
    }

    public Cdo() {
        this(11, 0.75f);
    }

    public Cdo(Map map) {
        this(Math.max(map.size() * 2, 11), 0.75f);
        putAll(map);
    }
}
