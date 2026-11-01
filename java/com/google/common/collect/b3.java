package com.google.common.collect;

import android.support.v4.li0;
import com.google.common.collect.Multiset;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

@li0
/* loaded from: classes2.dex */
final class b3 {

    /* renamed from: com.google.common.collect.b3$if, reason: invalid class name */
    public static final class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        private final Field f14114do;

        /* renamed from: do, reason: not valid java name */
        public void m15615do(T t, int i) throws IllegalAccessException, IllegalArgumentException {
            try {
                this.f14114do.set(t, Integer.valueOf(i));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m15616if(T t, Object obj) throws IllegalAccessException, IllegalArgumentException {
            try {
                this.f14114do.set(t, obj);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        private Cif(Field field) {
            this.f14114do = field;
            field.setAccessible(true);
        }
    }

    private b3() {
    }

    /* renamed from: break, reason: not valid java name */
    public static <K, V> void m15604break(Multimap<K, V> multimap, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(multimap.asMap().size());
        for (Map.Entry<K, Collection<V>> entry : multimap.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            Iterator<V> it = entry.getValue().iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static <E> void m15605case(Multiset<E> multiset, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m15608else(multiset, objectInputStream, objectInputStream.readInt());
    }

    /* renamed from: catch, reason: not valid java name */
    public static <E> void m15606catch(Multiset<E> multiset, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(multiset.entrySet().size());
        for (Multiset.Entry<E> entry : multiset.entrySet()) {
            objectOutputStream.writeObject(entry.getElement());
            objectOutputStream.writeInt(entry.getCount());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Cif<T> m15607do(Class<T> cls, String str) {
        try {
            return new Cif<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else, reason: not valid java name */
    public static <E> void m15608else(Multiset<E> multiset, ObjectInputStream objectInputStream, int i) throws IOException, ClassNotFoundException {
        for (int i2 = 0; i2 < i; i2++) {
            multiset.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    public static <K, V> void m15609for(Map<K, V> map, ObjectInputStream objectInputStream, int i) throws IOException, ClassNotFoundException {
        for (int i2 = 0; i2 < i; i2++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m15610goto(ObjectInputStream objectInputStream) throws IOException {
        return objectInputStream.readInt();
    }

    /* renamed from: if, reason: not valid java name */
    public static <K, V> void m15611if(Map<K, V> map, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m15609for(map, objectInputStream, objectInputStream.readInt());
    }

    /* renamed from: new, reason: not valid java name */
    public static <K, V> void m15612new(Multimap<K, V> multimap, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        m15614try(multimap, objectInputStream, objectInputStream.readInt());
    }

    /* renamed from: this, reason: not valid java name */
    public static <K, V> void m15613this(Map<K, V> map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static <K, V> void m15614try(Multimap<K, V> multimap, ObjectInputStream objectInputStream, int i) throws IOException, ClassNotFoundException {
        for (int i2 = 0; i2 < i; i2++) {
            Collection collection = multimap.get(objectInputStream.readObject());
            int i3 = objectInputStream.readInt();
            for (int i4 = 0; i4 < i3; i4++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }
}
