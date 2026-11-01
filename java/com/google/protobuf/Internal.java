package com.google.protobuf;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;

/* loaded from: classes2.dex */
public final class Internal {

    /* renamed from: case, reason: not valid java name */
    public static final CodedInputStream f16553case;

    /* renamed from: for, reason: not valid java name */
    private static final int f16555for = 4096;

    /* renamed from: new, reason: not valid java name */
    public static final byte[] f16557new;

    /* renamed from: try, reason: not valid java name */
    public static final ByteBuffer f16558try;

    /* renamed from: do, reason: not valid java name */
    public static final Charset f16554do = Charset.forName("UTF-8");

    /* renamed from: if, reason: not valid java name */
    public static final Charset f16556if = Charset.forName("ISO-8859-1");

    public interface BooleanList extends ProtobufList<Boolean> {
        void addBoolean(boolean z);

        boolean getBoolean(int i);

        @Override // com.google.protobuf.Internal.ProtobufList
        ProtobufList<Boolean> mutableCopyWithCapacity(int i);

        boolean setBoolean(int i, boolean z);
    }

    public interface DoubleList extends ProtobufList<Double> {
        void addDouble(double d);

        double getDouble(int i);

        @Override // com.google.protobuf.Internal.ProtobufList
        ProtobufList<Double> mutableCopyWithCapacity(int i);

        double setDouble(int i, double d);
    }

    public interface EnumLite {
        int getNumber();
    }

    public interface EnumLiteMap<T extends EnumLite> {
        T findValueByNumber(int i);
    }

    public interface EnumVerifier {
        boolean isInRange(int i);
    }

    public interface FloatList extends ProtobufList<Float> {
        void addFloat(float f);

        float getFloat(int i);

        @Override // com.google.protobuf.Internal.ProtobufList
        ProtobufList<Float> mutableCopyWithCapacity(int i);

        float setFloat(int i, float f);
    }

    public interface IntList extends ProtobufList<Integer> {
        void addInt(int i);

        int getInt(int i);

        @Override // com.google.protobuf.Internal.ProtobufList
        ProtobufList<Integer> mutableCopyWithCapacity(int i);

        int setInt(int i, int i2);
    }

    public static class ListAdapter<F, T> extends AbstractList<T> {

        /* renamed from: do, reason: not valid java name */
        private final List<F> f16559do;

        /* renamed from: if, reason: not valid java name */
        private final Converter<F, T> f16560if;

        public interface Converter<F, T> {
            T convert(F f);
        }

        public ListAdapter(List<F> list, Converter<F, T> converter) {
            this.f16559do = list;
            this.f16560if = converter;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return (T) this.f16560if.convert(this.f16559do.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f16559do.size();
        }
    }

    public interface LongList extends ProtobufList<Long> {
        void addLong(long j);

        long getLong(int i);

        @Override // com.google.protobuf.Internal.ProtobufList
        ProtobufList<Long> mutableCopyWithCapacity(int i);

        long setLong(int i, long j);
    }

    public static class MapAdapter<K, V, RealValue> extends AbstractMap<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final Map<K, RealValue> f16561do;

        /* renamed from: if, reason: not valid java name */
        private final Converter<RealValue, V> f16562if;

        public interface Converter<A, B> {
            A doBackward(B b);

            B doForward(A a);
        }

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* renamed from: com.google.protobuf.Internal$MapAdapter$do, reason: invalid class name */
        public class Cdo<T> implements Converter<Integer, T> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ EnumLiteMap f16563do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ EnumLite f16564if;

            public Cdo(EnumLiteMap enumLiteMap, EnumLite enumLite) {
                this.f16563do = enumLiteMap;
                this.f16564if = enumLite;
            }

            /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Integer; */
            @Override // com.google.protobuf.Internal.MapAdapter.Converter
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Integer doBackward(EnumLite enumLite) {
                return Integer.valueOf(enumLite.getNumber());
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Integer;)TT; */
            @Override // com.google.protobuf.Internal.MapAdapter.Converter
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public EnumLite doForward(Integer num) {
                EnumLite enumLiteFindValueByNumber = this.f16563do.findValueByNumber(num.intValue());
                return enumLiteFindValueByNumber == null ? this.f16564if : enumLiteFindValueByNumber;
            }
        }

        /* renamed from: com.google.protobuf.Internal$MapAdapter$for, reason: invalid class name */
        public class Cfor implements Iterator<Map.Entry<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private final Iterator<Map.Entry<K, RealValue>> f16565do;

            public Cfor(Iterator<Map.Entry<K, RealValue>> it) {
                this.f16565do = it;
            }

            @Override // java.util.Iterator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return new Cif(this.f16565do.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f16565do.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f16565do.remove();
            }
        }

        /* renamed from: com.google.protobuf.Internal$MapAdapter$if, reason: invalid class name */
        public class Cif implements Map.Entry<K, V> {

            /* renamed from: do, reason: not valid java name */
            private final Map.Entry<K, RealValue> f16567do;

            public Cif(Map.Entry<K, RealValue> entry) {
                this.f16567do = entry;
            }

            @Override // java.util.Map.Entry
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                return (obj instanceof Map.Entry) && getKey().equals(((Map.Entry) obj).getKey()) && getValue().equals(getValue());
            }

            @Override // java.util.Map.Entry
            public K getKey() {
                return this.f16567do.getKey();
            }

            @Override // java.util.Map.Entry
            public V getValue() {
                return (V) MapAdapter.this.f16562if.doForward(this.f16567do.getValue());
            }

            @Override // java.util.Map.Entry
            public int hashCode() {
                return this.f16567do.hashCode();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Map.Entry
            public V setValue(V v) {
                Object value = this.f16567do.setValue(MapAdapter.this.f16562if.doBackward(v));
                if (value == null) {
                    return null;
                }
                return (V) MapAdapter.this.f16562if.doForward(value);
            }
        }

        /* renamed from: com.google.protobuf.Internal$MapAdapter$new, reason: invalid class name */
        public class Cnew extends AbstractSet<Map.Entry<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private final Set<Map.Entry<K, RealValue>> f16569do;

            public Cnew(Set<Map.Entry<K, RealValue>> set) {
                this.f16569do = set;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return new Cfor(this.f16569do.iterator());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return this.f16569do.size();
            }
        }

        public MapAdapter(Map<K, RealValue> map, Converter<RealValue, V> converter) {
            this.f16561do = map;
            this.f16562if = converter;
        }

        /* renamed from: if, reason: not valid java name */
        public static <T extends EnumLite> Converter<Integer, T> m19635if(EnumLiteMap<T> enumLiteMap, T t) {
            return new Cdo(enumLiteMap, t);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new Cnew(this.f16561do.entrySet());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            RealValue realvalue = this.f16561do.get(obj);
            if (realvalue == null) {
                return null;
            }
            return this.f16562if.doForward(realvalue);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Object objPut = this.f16561do.put(k, this.f16562if.doBackward(v));
            if (objPut == null) {
                return null;
            }
            return (V) this.f16562if.doForward(objPut);
        }
    }

    public interface ProtobufList<E> extends List<E>, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        ProtobufList<E> mutableCopyWithCapacity(int i);
    }

    static {
        byte[] bArr = new byte[0];
        f16557new = bArr;
        f16558try = ByteBuffer.wrap(bArr);
        f16553case = CodedInputStream.m18417throw(bArr);
    }

    private Internal() {
    }

    /* renamed from: break, reason: not valid java name */
    public static <T extends MessageLite> T m19608break(Class<T> cls) throws NoSuchMethodException, SecurityException {
        try {
            Method method = cls.getMethod("getDefaultInstance", new Class[0]);
            return (T) method.invoke(method, new Object[0]);
        } catch (Exception e) {
            String strValueOf = String.valueOf(cls);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 35);
            sb.append("Failed to get default instance for ");
            sb.append(strValueOf);
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static ByteBuffer m19609case(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferDuplicate.capacity());
        byteBufferAllocate.put(byteBufferDuplicate);
        return byteBufferAllocate;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m19610catch(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m19611class(List<byte[]> list) {
        Iterator<byte[]> it = list.iterator();
        int iM19612const = 1;
        while (it.hasNext()) {
            iM19612const = (iM19612const * 31) + m19612const(it.next());
        }
        return iM19612const;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m19612const(byte[] bArr) {
        return m19617final(bArr, 0, bArr.length);
    }

    /* renamed from: default, reason: not valid java name */
    public static byte[] m19613default(String str) {
        return str.getBytes(f16554do);
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m19614do(String str) {
        return str.getBytes(f16556if);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m19615else(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: extends, reason: not valid java name */
    public static String m19616extends(byte[] bArr) {
        return new String(bArr, f16554do);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m19617final(byte[] bArr, int i, int i2) {
        int iM19628switch = m19628switch(i2, bArr, i, i2);
        if (iM19628switch == 0) {
            return 1;
        }
        return iM19628switch;
    }

    /* renamed from: for, reason: not valid java name */
    public static ByteString m19618for(String str) {
        return ByteString.copyFrom(str.getBytes(f16556if));
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m19619goto(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (byteBuffer.capacity() != byteBuffer2.capacity()) {
            return false;
        }
        return ((ByteBuffer) byteBuffer.duplicate().clear()).equals((ByteBuffer) byteBuffer2.duplicate().clear());
    }

    /* renamed from: if, reason: not valid java name */
    public static ByteBuffer m19620if(String str) {
        return ByteBuffer.wrap(m19614do(str));
    }

    /* renamed from: import, reason: not valid java name */
    public static int m19621import(List<? extends EnumLite> list) {
        Iterator<? extends EnumLite> it = list.iterator();
        int iM19633while = 1;
        while (it.hasNext()) {
            iM19633while = (iM19633while * 31) + m19633while(it.next());
        }
        return iM19633while;
    }

    /* renamed from: native, reason: not valid java name */
    public static int m19622native(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> T m19623new(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m19624public(ByteString byteString) {
        return byteString.isValidUtf8();
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m19625return(byte[] bArr) {
        return a2.m19707public(bArr);
    }

    /* renamed from: static, reason: not valid java name */
    public static Object m19626static(Object obj, Object obj2) {
        return ((MessageLite) obj).toBuilder().mergeFrom((MessageLite) obj2).buildPartial();
    }

    /* renamed from: super, reason: not valid java name */
    public static int m19627super(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int iM19628switch = m19628switch(byteBuffer.capacity(), byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
            if (iM19628switch == 0) {
                return 1;
            }
            return iM19628switch;
        }
        int iCapacity = byteBuffer.capacity() <= 4096 ? byteBuffer.capacity() : 4096;
        byte[] bArr = new byte[iCapacity];
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        int iCapacity2 = byteBuffer.capacity();
        while (byteBufferDuplicate.remaining() > 0) {
            int iRemaining = byteBufferDuplicate.remaining() <= iCapacity ? byteBufferDuplicate.remaining() : iCapacity;
            byteBufferDuplicate.get(bArr, 0, iRemaining);
            iCapacity2 = m19628switch(iCapacity2, bArr, 0, iRemaining);
        }
        if (iCapacity2 == 0) {
            return 1;
        }
        return iCapacity2;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m19628switch(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m19629this(List<ByteBuffer> list, List<ByteBuffer> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!m19619goto(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m19630throw(List<ByteBuffer> list) {
        Iterator<ByteBuffer> it = list.iterator();
        int iM19627super = 1;
        while (it.hasNext()) {
            iM19627super = (iM19627super * 31) + m19627super(it.next());
        }
        return iM19627super;
    }

    /* renamed from: throws, reason: not valid java name */
    public static String m19631throws(String str) {
        return new String(str.getBytes(f16556if), f16554do);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> T m19632try(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m19633while(EnumLite enumLite) {
        return enumLite.getNumber();
    }
}
