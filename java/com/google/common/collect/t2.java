package com.google.common.collect;

import android.support.v4.ab2;
import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class t2<K, V> extends x0<K, V> {
    public static final x0<Object, Object> EMPTY = new t2(null, new Object[0], 0);

    /* renamed from: break, reason: not valid java name */
    private static final int f14651break = 255;

    /* renamed from: catch, reason: not valid java name */
    private static final int f14652catch = 65535;

    /* renamed from: else, reason: not valid java name */
    private static final byte f14653else = -1;

    /* renamed from: goto, reason: not valid java name */
    private static final int f14654goto = 128;
    private static final long serialVersionUID = 0;

    /* renamed from: this, reason: not valid java name */
    private static final int f14655this = 32768;

    @af2
    public final transient Object[] alternatingKeysAndValues;

    /* renamed from: case, reason: not valid java name */
    private final transient int f14656case;

    /* renamed from: try, reason: not valid java name */
    private final transient Object f14657try;

    /* renamed from: com.google.common.collect.t2$do, reason: invalid class name */
    public static class Cdo<K, V> extends g1<Map.Entry<K, V>> {

        /* renamed from: case, reason: not valid java name */
        private final transient Object[] f14658case;

        /* renamed from: else, reason: not valid java name */
        private final transient int f14659else;

        /* renamed from: goto, reason: not valid java name */
        private final transient int f14660goto;

        /* renamed from: try, reason: not valid java name */
        private final transient x0<K, V> f14661try;

        /* renamed from: com.google.common.collect.t2$do$do, reason: invalid class name and collision with other inner class name */
        public class C0106do extends v0<Map.Entry<K, V>> {
            public C0106do() {
            }

            @Override // com.google.common.collect.r0
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return Cdo.this.f14660goto;
            }

            @Override // java.util.List
            public Map.Entry<K, V> get(int i) {
                af1.m222private(i, Cdo.this.f14660goto);
                int i2 = i * 2;
                return new AbstractMap.SimpleImmutableEntry(Cdo.this.f14658case[Cdo.this.f14659else + i2], Cdo.this.f14658case[i2 + (Cdo.this.f14659else ^ 1)]);
            }
        }

        public Cdo(x0<K, V> x0Var, Object[] objArr, int i, int i2) {
            this.f14661try = x0Var;
            this.f14658case = objArr;
            this.f14659else = i;
            this.f14660goto = i2;
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f14661try.get(key));
        }

        @Override // com.google.common.collect.r0
        public int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.g1
        public v0<Map.Entry<K, V>> createAsList() {
            return new C0106do();
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14660goto;
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    /* renamed from: com.google.common.collect.t2$for, reason: invalid class name */
    public static final class Cfor extends v0<Object> {

        /* renamed from: for, reason: not valid java name */
        private final transient Object[] f14662for;

        /* renamed from: new, reason: not valid java name */
        private final transient int f14663new;

        /* renamed from: try, reason: not valid java name */
        private final transient int f14664try;

        public Cfor(Object[] objArr, int i, int i2) {
            this.f14662for = objArr;
            this.f14663new = i;
            this.f14664try = i2;
        }

        @Override // java.util.List
        public Object get(int i) {
            af1.m222private(i, this.f14664try);
            return this.f14662for[(i * 2) + this.f14663new];
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14664try;
        }
    }

    /* renamed from: com.google.common.collect.t2$if, reason: invalid class name */
    public static final class Cif<K> extends g1<K> {

        /* renamed from: case, reason: not valid java name */
        private final transient v0<K> f14665case;

        /* renamed from: try, reason: not valid java name */
        private final transient x0<K, ?> f14666try;

        public Cif(x0<K, ?> x0Var, v0<K> v0Var) {
            this.f14666try = x0Var;
            this.f14665case = v0Var;
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0
        public v0<K> asList() {
            return this.f14665case;
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return this.f14666try.get(obj) != null;
        }

        @Override // com.google.common.collect.r0
        public int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14666try.size();
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<K> iterator() {
            return asList().iterator();
        }
    }

    private t2(Object obj, Object[] objArr, int i) {
        this.f14657try = obj;
        this.alternatingKeysAndValues = objArr;
        this.f14656case = i;
    }

    public static <K, V> t2<K, V> create(int i, Object[] objArr) {
        if (i == 0) {
            return (t2) EMPTY;
        }
        if (i == 1) {
            Cdefault.m15740do(objArr[0], objArr[1]);
            return new t2<>(null, objArr, 1);
        }
        af1.q(i, objArr.length >> 1);
        return new t2<>(createHashTable(objArr, i, g1.chooseTableSize(i), 0), objArr, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        r11[r5] = (byte) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0079, code lost:
    
        r11[r5] = (short) r1;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        r11[r6] = r1;
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object createHashTable(Object[] objArr, int i, int i2, int i3) {
        if (i == 1) {
            Cdefault.m15740do(objArr[i3], objArr[i3 ^ 1]);
            return null;
        }
        int i4 = i2 - 1;
        int i5 = 0;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            while (i5 < i) {
                int i6 = (i5 * 2) + i3;
                Object obj = objArr[i6];
                Object obj2 = objArr[i6 ^ 1];
                Cdefault.m15740do(obj, obj2);
                int iM16084for = n0.m16084for(obj.hashCode());
                while (true) {
                    int i7 = iM16084for & i4;
                    int i8 = bArr[i7] & 255;
                    if (i8 == 255) {
                        break;
                    }
                    if (objArr[i8].equals(obj)) {
                        throw m16346do(obj, obj2, objArr, i8);
                    }
                    iM16084for = i7 + 1;
                }
            }
            return bArr;
        }
        if (i2 <= 32768) {
            short[] sArr = new short[i2];
            Arrays.fill(sArr, (short) -1);
            while (i5 < i) {
                int i9 = (i5 * 2) + i3;
                Object obj3 = objArr[i9];
                Object obj4 = objArr[i9 ^ 1];
                Cdefault.m15740do(obj3, obj4);
                int iM16084for2 = n0.m16084for(obj3.hashCode());
                while (true) {
                    int i10 = iM16084for2 & i4;
                    int i11 = sArr[i10] & ab2.f80for;
                    if (i11 == 65535) {
                        break;
                    }
                    if (objArr[i11].equals(obj3)) {
                        throw m16346do(obj3, obj4, objArr, i11);
                    }
                    iM16084for2 = i10 + 1;
                }
            }
            return sArr;
        }
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        while (i5 < i) {
            int i12 = (i5 * 2) + i3;
            Object obj5 = objArr[i12];
            Object obj6 = objArr[i12 ^ 1];
            Cdefault.m15740do(obj5, obj6);
            int iM16084for3 = n0.m16084for(obj5.hashCode());
            while (true) {
                int i13 = iM16084for3 & i4;
                int i14 = iArr[i13];
                if (i14 == -1) {
                    break;
                }
                if (objArr[i14].equals(obj5)) {
                    throw m16346do(obj5, obj6, objArr, i14);
                }
                iM16084for3 = i13 + 1;
            }
        }
        return iArr;
    }

    /* renamed from: do, reason: not valid java name */
    private static IllegalArgumentException m16346do(Object obj, Object obj2, Object[] objArr, int i) {
        return new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i] + "=" + objArr[i ^ 1]);
    }

    @Override // com.google.common.collect.x0
    public g1<Map.Entry<K, V>> createEntrySet() {
        return new Cdo(this, this.alternatingKeysAndValues, 0, this.f14656case);
    }

    @Override // com.google.common.collect.x0
    public g1<K> createKeySet() {
        return new Cif(this, new Cfor(this.alternatingKeysAndValues, 0, this.f14656case));
    }

    @Override // com.google.common.collect.x0
    public r0<V> createValues() {
        return new Cfor(this.alternatingKeysAndValues, 1, this.f14656case);
    }

    @Override // com.google.common.collect.x0, java.util.Map
    @b51
    public V get(@b51 Object obj) {
        return (V) get(this.f14657try, this.alternatingKeysAndValues, this.f14656case, 0, obj);
    }

    @Override // com.google.common.collect.x0
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f14656case;
    }

    public static Object get(@b51 Object obj, @b51 Object[] objArr, int i, int i2, @b51 Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[i2].equals(obj2)) {
                return objArr[i2 ^ 1];
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iM16084for = n0.m16084for(obj2.hashCode());
            while (true) {
                int i3 = iM16084for & length;
                int i4 = bArr[i3] & 255;
                if (i4 == 255) {
                    return null;
                }
                if (objArr[i4].equals(obj2)) {
                    return objArr[i4 ^ 1];
                }
                iM16084for = i3 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iM16084for2 = n0.m16084for(obj2.hashCode());
            while (true) {
                int i5 = iM16084for2 & length2;
                int i6 = sArr[i5] & ab2.f80for;
                if (i6 == 65535) {
                    return null;
                }
                if (objArr[i6].equals(obj2)) {
                    return objArr[i6 ^ 1];
                }
                iM16084for2 = i5 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iM16084for3 = n0.m16084for(obj2.hashCode());
            while (true) {
                int i7 = iM16084for3 & length3;
                int i8 = iArr[i7];
                if (i8 == -1) {
                    return null;
                }
                if (objArr[i8].equals(obj2)) {
                    return objArr[i8 ^ 1];
                }
                iM16084for3 = i7 + 1;
            }
        }
    }
}
