package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.v4.cf1;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase implements ArrayPool {

    /* renamed from: else, reason: not valid java name */
    private static final int f9633else = 4194304;

    /* renamed from: goto, reason: not valid java name */
    @VisibleForTesting
    public static final int f9634goto = 8;

    /* renamed from: this, reason: not valid java name */
    private static final int f9635this = 2;

    /* renamed from: case, reason: not valid java name */
    private int f9636case;

    /* renamed from: do, reason: not valid java name */
    private final Cnew<Cdo, Object> f9637do;

    /* renamed from: for, reason: not valid java name */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f9638for;

    /* renamed from: if, reason: not valid java name */
    private final Cif f9639if;

    /* renamed from: new, reason: not valid java name */
    private final Map<Class<?>, ArrayAdapterInterface<?>> f9640new;

    /* renamed from: try, reason: not valid java name */
    private final int f9641try;

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.case$do, reason: invalid class name */
    public static final class Cdo implements Poolable {

        /* renamed from: do, reason: not valid java name */
        private final Cif f9642do;

        /* renamed from: for, reason: not valid java name */
        private Class<?> f9643for;

        /* renamed from: if, reason: not valid java name */
        public int f9644if;

        public Cdo(Cif cif) {
            this.f9642do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        public void m11387do(int i, Class<?> cls) {
            this.f9644if = i;
            this.f9643for = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return this.f9644if == cdo.f9644if && this.f9643for == cdo.f9643for;
        }

        public int hashCode() {
            int i = this.f9644if * 31;
            Class<?> cls = this.f9643for;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.f9642do.m11406for(this);
        }

        public String toString() {
            return "Key{size=" + this.f9644if + "array=" + this.f9643for + MessageFormatter.DELIM_STOP;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.case$if, reason: invalid class name */
    public static final class Cif extends com.bumptech.glide.load.engine.bitmap_recycle.Cif<Cdo> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Cif
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo11388do() {
            return new Cdo(this);
        }

        /* renamed from: try, reason: not valid java name */
        public Cdo m11390try(int i, Class<?> cls) {
            Cdo cdoM11407if = m11407if();
            cdoM11407if.m11387do(i, cls);
            return cdoM11407if;
        }
    }

    @VisibleForTesting
    public Ccase() {
        this.f9637do = new Cnew<>();
        this.f9639if = new Cif();
        this.f9638for = new HashMap();
        this.f9640new = new HashMap();
        this.f9641try = 4194304;
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m11375break() {
        int i = this.f9636case;
        return i == 0 || this.f9641try / i >= 2;
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    private <T> T m11376case(Cdo cdo) {
        return (T) this.f9637do.m11413do(cdo);
    }

    /* renamed from: catch, reason: not valid java name */
    private boolean m11377catch(int i) {
        return i <= this.f9641try / 2;
    }

    /* renamed from: class, reason: not valid java name */
    private boolean m11378class(int i, Integer num) {
        return num != null && (m11375break() || num.intValue() <= i * 8);
    }

    /* renamed from: do, reason: not valid java name */
    private void m11379do(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMapM11384this = m11384this(cls);
        Integer num = (Integer) navigableMapM11384this.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapM11384this.remove(Integer.valueOf(i));
                return;
            } else {
                navigableMapM11384this.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: for, reason: not valid java name */
    private void m11380for(int i) {
        while (this.f9636case > i) {
            Object objM11412case = this.f9637do.m11412case();
            cf1.m900new(objM11412case);
            ArrayAdapterInterface arrayAdapterInterfaceM11383new = m11383new(objM11412case);
            this.f9636case -= arrayAdapterInterfaceM11383new.getArrayLength(objM11412case) * arrayAdapterInterfaceM11383new.getElementSizeInBytes();
            m11379do(arrayAdapterInterfaceM11383new.getArrayLength(objM11412case), objM11412case.getClass());
            if (Log.isLoggable(arrayAdapterInterfaceM11383new.getTag(), 2)) {
                arrayAdapterInterfaceM11383new.getTag();
                StringBuilder sb = new StringBuilder();
                sb.append("evicted: ");
                sb.append(arrayAdapterInterfaceM11383new.getArrayLength(objM11412case));
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private <T> T m11381goto(Cdo cdo, Class<T> cls) {
        ArrayAdapterInterface<T> arrayAdapterInterfaceM11385try = m11385try(cls);
        T t = (T) m11376case(cdo);
        if (t != null) {
            this.f9636case -= arrayAdapterInterfaceM11385try.getArrayLength(t) * arrayAdapterInterfaceM11385try.getElementSizeInBytes();
            m11379do(arrayAdapterInterfaceM11385try.getArrayLength(t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(arrayAdapterInterfaceM11385try.getTag(), 2)) {
            arrayAdapterInterfaceM11385try.getTag();
            StringBuilder sb = new StringBuilder();
            sb.append("Allocated ");
            sb.append(cdo.f9644if);
            sb.append(" bytes");
        }
        return arrayAdapterInterfaceM11385try.newArray(cdo.f9644if);
    }

    /* renamed from: if, reason: not valid java name */
    private void m11382if() {
        m11380for(this.f9641try);
    }

    /* renamed from: new, reason: not valid java name */
    private <T> ArrayAdapterInterface<T> m11383new(T t) {
        return m11385try(t.getClass());
    }

    /* renamed from: this, reason: not valid java name */
    private NavigableMap<Integer, Integer> m11384this(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f9638for.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f9638for.put(cls, treeMap);
        return treeMap;
    }

    /* renamed from: try, reason: not valid java name */
    private <T> ArrayAdapterInterface<T> m11385try(Class<T> cls) {
        ArrayAdapterInterface<T> cfor = (ArrayAdapterInterface) this.f9640new.get(cls);
        if (cfor == null) {
            if (cls.equals(int[].class)) {
                cfor = new Ctry();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
                }
                cfor = new Cfor();
            }
            this.f9640new.put(cls, cfor);
        }
        return cfor;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized void clearMemory() {
        m11380for(0);
    }

    /* renamed from: else, reason: not valid java name */
    public int m11386else() {
        int iIntValue = 0;
        for (Class<?> cls : this.f9638for.keySet()) {
            for (Integer num : this.f9638for.get(cls).keySet()) {
                iIntValue += num.intValue() * ((Integer) this.f9638for.get(cls).get(num)).intValue() * m11385try(cls).getElementSizeInBytes();
            }
        }
        return iIntValue;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> T get(int i, Class<T> cls) {
        Integer numCeilingKey;
        numCeilingKey = m11384this(cls).ceilingKey(Integer.valueOf(i));
        return (T) m11381goto(m11378class(i, numCeilingKey) ? this.f9639if.m11390try(numCeilingKey.intValue(), cls) : this.f9639if.m11390try(i, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> T getExact(int i, Class<T> cls) {
        return (T) m11381goto(this.f9639if.m11390try(i, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    @Deprecated
    public <T> void put(T t, Class<T> cls) {
        put(t);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized void trimMemory(int i) {
        try {
            if (i >= 40) {
                clearMemory();
            } else if (i >= 20 || i == 15) {
                m11380for(this.f9641try / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public synchronized <T> void put(T t) {
        Class<?> cls = t.getClass();
        ArrayAdapterInterface<T> arrayAdapterInterfaceM11385try = m11385try(cls);
        int arrayLength = arrayAdapterInterfaceM11385try.getArrayLength(t);
        int elementSizeInBytes = arrayAdapterInterfaceM11385try.getElementSizeInBytes() * arrayLength;
        if (m11377catch(elementSizeInBytes)) {
            Cdo cdoM11390try = this.f9639if.m11390try(arrayLength, cls);
            this.f9637do.m11414new(cdoM11390try, t);
            NavigableMap<Integer, Integer> navigableMapM11384this = m11384this(cls);
            Integer num = (Integer) navigableMapM11384this.get(Integer.valueOf(cdoM11390try.f9644if));
            Integer numValueOf = Integer.valueOf(cdoM11390try.f9644if);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapM11384this.put(numValueOf, Integer.valueOf(iIntValue));
            this.f9636case += elementSizeInBytes;
            m11382if();
        }
    }

    public Ccase(int i) {
        this.f9637do = new Cnew<>();
        this.f9639if = new Cif();
        this.f9638for = new HashMap();
        this.f9640new = new HashMap();
        this.f9641try = i;
    }
}
