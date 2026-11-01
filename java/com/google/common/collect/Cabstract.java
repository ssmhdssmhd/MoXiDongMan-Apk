package com.google.common.collect;

import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.li0;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

@li0
/* renamed from: com.google.common.collect.abstract, reason: invalid class name */
/* loaded from: classes2.dex */
class Cabstract<K, V> extends Cfinally<K, V> {

    /* renamed from: catch, reason: not valid java name */
    private static final int f14075catch = -2;
    private final boolean accessOrder;

    /* renamed from: break, reason: not valid java name */
    private transient int f14076break;

    @af2
    @b51
    public transient long[] links;

    /* renamed from: this, reason: not valid java name */
    private transient int f14077this;

    public Cabstract() {
        this(3);
    }

    /* renamed from: break, reason: not valid java name */
    private void m15516break(int i, int i2) {
        long[] jArr = this.links;
        jArr[i] = (jArr[i] & (-4294967296L)) | ((i2 + 1) & 4294967295L);
    }

    public static <K, V> Cabstract<K, V> create() {
        return new Cabstract<>();
    }

    public static <K, V> Cabstract<K, V> createWithExpectedSize(int i) {
        return new Cabstract<>(i);
    }

    /* renamed from: else, reason: not valid java name */
    private int m15517else(int i) {
        return ((int) (this.links[i] >>> 32)) - 1;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m15518goto(int i, int i2) {
        long[] jArr = this.links;
        jArr[i] = (jArr[i] & 4294967295L) | ((i2 + 1) << 32);
    }

    /* renamed from: this, reason: not valid java name */
    private void m15519this(int i, int i2) {
        if (i == -2) {
            this.f14077this = i2;
        } else {
            m15516break(i, i2);
        }
        if (i2 == -2) {
            this.f14076break = i;
        } else {
            m15518goto(i2, i);
        }
    }

    @Override // com.google.common.collect.Cfinally
    public void accessEntry(int i) {
        if (this.accessOrder) {
            m15519this(m15517else(i), getSuccessor(i));
            m15519this(this.f14076break, i);
            m15519this(i, -2);
            incrementModCount();
        }
    }

    @Override // com.google.common.collect.Cfinally
    public int adjustAfterRemove(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.Cfinally
    public int allocArrays() {
        int iAllocArrays = super.allocArrays();
        this.links = new long[iAllocArrays];
        return iAllocArrays;
    }

    @Override // com.google.common.collect.Cfinally, java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.f14077this = -2;
        this.f14076break = -2;
        long[] jArr = this.links;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override // com.google.common.collect.Cfinally
    @lf
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapConvertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.links = null;
        return mapConvertToHashFloodingResistantImplementation;
    }

    @Override // com.google.common.collect.Cfinally
    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f, this.accessOrder);
    }

    @Override // com.google.common.collect.Cfinally
    public int firstEntryIndex() {
        return this.f14077this;
    }

    @Override // com.google.common.collect.Cfinally
    public int getSuccessor(int i) {
        return ((int) this.links[i]) - 1;
    }

    @Override // com.google.common.collect.Cfinally
    public void init(int i) {
        super.init(i);
        this.f14077this = -2;
        this.f14076break = -2;
    }

    @Override // com.google.common.collect.Cfinally
    public void insertEntry(int i, @b51 K k, @b51 V v, int i2, int i3) {
        super.insertEntry(i, k, v, i2, i3);
        m15519this(this.f14076break, i);
        m15519this(i, -2);
    }

    @Override // com.google.common.collect.Cfinally
    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        super.moveLastEntry(i, i2);
        m15519this(m15517else(i), getSuccessor(i));
        if (i < size) {
            m15519this(m15517else(size), i);
            m15519this(i, getSuccessor(size));
        }
        this.links[size] = 0;
    }

    @Override // com.google.common.collect.Cfinally
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        this.links = Arrays.copyOf(this.links, i);
    }

    public Cabstract(int i) {
        this(i, false);
    }

    public Cabstract(int i, boolean z) {
        super(i);
        this.accessOrder = z;
    }
}
