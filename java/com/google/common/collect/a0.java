package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import android.support.v4.qd0;
import com.google.common.base.Cthrow;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public abstract class a0<E> extends qd0<E> implements Multiset<E> {

    @o8
    /* renamed from: com.google.common.collect.a0$do, reason: invalid class name */
    public class Cdo extends c2.Cgoto<E> {
        public Cdo() {
        }

        @Override // com.google.common.collect.c2.Cgoto
        /* renamed from: do, reason: not valid java name */
        public Multiset<E> mo15489do() {
            return a0.this;
        }

        @Override // com.google.common.collect.c2.Cgoto, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return c2.m15655goto(mo15489do().entrySet().iterator());
        }
    }

    @Override // com.google.common.collect.Multiset
    @lf
    public int add(E e, int i) {
        return delegate().add(e, i);
    }

    @Override // com.google.common.collect.Multiset
    public int count(Object obj) {
        return delegate().count(obj);
    }

    @Override // android.support.v4.qd0, android.support.v4.ae0
    public abstract Multiset<E> delegate();

    @Override // com.google.common.collect.Multiset
    public Set<E> elementSet() {
        return delegate().elementSet();
    }

    @Override // com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@b51 Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // com.google.common.collect.Multiset
    @lf
    public int remove(Object obj, int i) {
        return delegate().remove(obj, i);
    }

    @Override // com.google.common.collect.Multiset
    @lf
    public int setCount(E e, int i) {
        return delegate().setCount(e, i);
    }

    public boolean standardAdd(E e) {
        add(e, 1);
        return true;
    }

    @Override // android.support.v4.qd0
    @o8
    public boolean standardAddAll(Collection<? extends E> collection) {
        return c2.m15654for(this, collection);
    }

    @Override // android.support.v4.qd0
    public void standardClear() {
        s1.m16228goto(entrySet().iterator());
    }

    @Override // android.support.v4.qd0
    public boolean standardContains(@b51 Object obj) {
        return count(obj) > 0;
    }

    @o8
    public int standardCount(@b51 Object obj) {
        for (Multiset.Entry<E> entry : entrySet()) {
            if (Cthrow.m15205do(entry.getElement(), obj)) {
                return entry.getCount();
            }
        }
        return 0;
    }

    public boolean standardEquals(@b51 Object obj) {
        return c2.m15666this(this, obj);
    }

    public int standardHashCode() {
        return entrySet().hashCode();
    }

    public Iterator<E> standardIterator() {
        return c2.m15652final(this);
    }

    @Override // android.support.v4.qd0
    public boolean standardRemove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // android.support.v4.qd0
    public boolean standardRemoveAll(Collection<?> collection) {
        return c2.m15667throw(this, collection);
    }

    @Override // android.support.v4.qd0
    public boolean standardRetainAll(Collection<?> collection) {
        return c2.m15658native(this, collection);
    }

    public int standardSetCount(E e, int i) {
        return c2.m15663static(this, e, i);
    }

    public int standardSize() {
        return c2.m15664super(this);
    }

    @Override // android.support.v4.qd0
    public String standardToString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.Multiset
    @lf
    public boolean setCount(E e, int i, int i2) {
        return delegate().setCount(e, i, i2);
    }

    public boolean standardSetCount(E e, int i, int i2) {
        return c2.m15665switch(this, e, i, i2);
    }
}
