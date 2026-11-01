package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class v2<E> extends g1<E> {
    public static final v2<Object> EMPTY = new v2<>(new Object[0], 0, null, 0, 0);

    /* renamed from: case, reason: not valid java name */
    private final transient int f14781case;

    @af2
    public final transient Object[] elements;

    /* renamed from: else, reason: not valid java name */
    private final transient int f14782else;

    @af2
    public final transient Object[] table;

    /* renamed from: try, reason: not valid java name */
    private final transient int f14783try;

    public v2(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.elements = objArr;
        this.table = objArr2;
        this.f14783try = i2;
        this.f14781case = i;
        this.f14782else = i3;
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        Object[] objArr = this.table;
        if (obj == null || objArr == null) {
            return false;
        }
        int iM16086new = n0.m16086new(obj);
        while (true) {
            int i = iM16086new & this.f14783try;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iM16086new = i + 1;
        }
    }

    @Override // com.google.common.collect.r0
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.elements, 0, objArr, i, this.f14782else);
        return i + this.f14782else;
    }

    @Override // com.google.common.collect.g1
    public v0<E> createAsList() {
        return v0.asImmutableList(this.elements, this.f14782else);
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f14781case;
    }

    @Override // com.google.common.collect.r0
    public Object[] internalArray() {
        return this.elements;
    }

    @Override // com.google.common.collect.r0
    public int internalArrayEnd() {
        return this.f14782else;
    }

    @Override // com.google.common.collect.r0
    public int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.g1
    public boolean isHashCodeFast() {
        return true;
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f14782else;
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return asList().iterator();
    }
}
