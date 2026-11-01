package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.fs0;
import android.support.v4.ki0;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class u0<E extends Enum<E>> extends g1<E> {

    /* renamed from: case, reason: not valid java name */
    @fs0
    private transient int f14743case;

    /* renamed from: try, reason: not valid java name */
    private final transient EnumSet<E> f14744try;

    /* renamed from: com.google.common.collect.u0$if, reason: invalid class name */
    public static class Cif<E extends Enum<E>> implements Serializable {
        private static final long serialVersionUID = 0;
        public final EnumSet<E> delegate;

        public Cif(EnumSet<E> enumSet) {
            this.delegate = enumSet;
        }

        public Object readResolve() {
            return new u0(this.delegate.clone());
        }
    }

    public static g1 asImmutable(EnumSet enumSet) {
        int size = enumSet.size();
        return size != 0 ? size != 1 ? new u0(enumSet) : g1.of(r1.m16184extends(enumSet)) : g1.of();
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f14744try.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof u0) {
            collection = ((u0) collection).f14744try;
        }
        return this.f14744try.containsAll(collection);
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u0) {
            obj = ((u0) obj).f14744try;
        }
        return this.f14744try.equals(obj);
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public int hashCode() {
        int i = this.f14743case;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.f14744try.hashCode();
        this.f14743case = iHashCode;
        return iHashCode;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f14744try.isEmpty();
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
        return this.f14744try.size();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return this.f14744try.toString();
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0
    public Object writeReplace() {
        return new Cif(this.f14744try);
    }

    private u0(EnumSet<E> enumSet) {
        this.f14744try = enumSet;
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return s1.s(this.f14744try.iterator());
    }
}
