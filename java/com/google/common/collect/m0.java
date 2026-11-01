package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class m0<E> extends Ccase<E> {

    @li0
    private static final long serialVersionUID = 0;

    public m0(int i) {
        super(i);
    }

    public static <E> m0<E> create() {
        return create(3);
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@b51 Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Ccase
    public void init(int i) {
        this.backingMap = new i2<>(i);
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public static <E> m0<E> create(int i) {
        return new m0<>(i);
    }

    public static <E> m0<E> create(Iterable<? extends E> iterable) {
        m0<E> m0VarCreate = create(c2.m15646class(iterable));
        r1.m16182do(m0VarCreate, iterable);
        return m0VarCreate;
    }
}
