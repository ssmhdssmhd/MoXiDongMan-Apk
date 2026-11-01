package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.l01;
import android.support.v4.li0;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

@li0
/* renamed from: com.google.common.collect.continue, reason: invalid class name */
/* loaded from: classes2.dex */
class Ccontinue<E> extends Cpackage<E> {

    /* renamed from: this, reason: not valid java name */
    private static final int f14200this = -2;

    /* renamed from: case, reason: not valid java name */
    @l01
    private transient int[] f14201case;

    /* renamed from: else, reason: not valid java name */
    private transient int f14202else;

    /* renamed from: goto, reason: not valid java name */
    private transient int f14203goto;

    /* renamed from: try, reason: not valid java name */
    @l01
    private transient int[] f14204try;

    public Ccontinue() {
    }

    /* renamed from: case, reason: not valid java name */
    private void m15733case(int i, int i2) {
        this.f14204try[i] = i2 + 1;
    }

    public static <E> Ccontinue<E> create() {
        return new Ccontinue<>();
    }

    public static <E> Ccontinue<E> createWithExpectedSize(int i) {
        return new Ccontinue<>(i);
    }

    /* renamed from: else, reason: not valid java name */
    private void m15734else(int i, int i2) {
        if (i == -2) {
            this.f14202else = i2;
        } else {
            m15735goto(i, i2);
        }
        if (i2 == -2) {
            this.f14203goto = i;
        } else {
            m15733case(i2, i);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m15735goto(int i, int i2) {
        this.f14201case[i] = i2 + 1;
    }

    /* renamed from: try, reason: not valid java name */
    private int m15736try(int i) {
        return this.f14204try[i] - 1;
    }

    @Override // com.google.common.collect.Cpackage
    public int adjustAfterRemove(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.Cpackage
    public int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.f14204try = new int[iAllocArrays];
        this.f14201case = new int[iAllocArrays];
        return iAllocArrays;
    }

    @Override // com.google.common.collect.Cpackage, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.f14202else = -2;
        this.f14203goto = -2;
        Arrays.fill(this.f14204try, 0, size(), 0);
        Arrays.fill(this.f14201case, 0, size(), 0);
        super.clear();
    }

    @Override // com.google.common.collect.Cpackage
    public int firstEntryIndex() {
        return this.f14202else;
    }

    @Override // com.google.common.collect.Cpackage
    public int getSuccessor(int i) {
        return this.f14201case[i] - 1;
    }

    @Override // com.google.common.collect.Cpackage
    public void init(int i) {
        super.init(i);
        this.f14202else = -2;
        this.f14203goto = -2;
    }

    @Override // com.google.common.collect.Cpackage
    public void insertEntry(int i, @b51 E e, int i2, int i3) {
        super.insertEntry(i, e, i2, i3);
        m15734else(this.f14203goto, i);
        m15734else(i, -2);
    }

    @Override // com.google.common.collect.Cpackage
    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        super.moveLastEntry(i, i2);
        m15734else(m15736try(i), getSuccessor(i));
        if (i < size) {
            m15734else(m15736try(size), i);
            m15734else(i, getSuccessor(size));
        }
        this.f14204try[size] = 0;
        this.f14201case[size] = 0;
    }

    @Override // com.google.common.collect.Cpackage
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        this.f14204try = Arrays.copyOf(this.f14204try, i);
        this.f14201case = Arrays.copyOf(this.f14201case, i);
    }

    @Override // com.google.common.collect.Cpackage, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return h2.m15836class(this);
    }

    public Ccontinue(int i) {
        super(i);
    }

    public static <E> Ccontinue<E> create(Collection<? extends E> collection) {
        Ccontinue<E> ccontinueCreateWithExpectedSize = createWithExpectedSize(collection.size());
        ccontinueCreateWithExpectedSize.addAll(collection);
        return ccontinueCreateWithExpectedSize;
    }

    @Override // com.google.common.collect.Cpackage, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) h2.m15837const(this, tArr);
    }

    @SafeVarargs
    public static <E> Ccontinue<E> create(E... eArr) {
        Ccontinue<E> ccontinueCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(ccontinueCreateWithExpectedSize, eArr);
        return ccontinueCreateWithExpectedSize;
    }
}
