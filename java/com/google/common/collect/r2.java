package com.google.common.collect;

import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.collect.t2;
import java.util.Map;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class r2<K, V> extends p0<K, V> {
    public static final r2<Object, Object> EMPTY = new r2<>();

    @af2
    public final transient Object[] alternatingKeysAndValues;

    /* renamed from: case, reason: not valid java name */
    private final transient int f14580case;

    /* renamed from: else, reason: not valid java name */
    private final transient int f14581else;

    /* renamed from: goto, reason: not valid java name */
    private final transient r2<V, K> f14582goto;

    /* renamed from: try, reason: not valid java name */
    private final transient Object f14583try;

    /* JADX WARN: Multi-variable type inference failed */
    private r2() {
        this.f14583try = null;
        this.alternatingKeysAndValues = new Object[0];
        this.f14580case = 0;
        this.f14581else = 0;
        this.f14582goto = this;
    }

    @Override // com.google.common.collect.x0
    public g1<Map.Entry<K, V>> createEntrySet() {
        return new t2.Cdo(this, this.alternatingKeysAndValues, this.f14580case, this.f14581else);
    }

    @Override // com.google.common.collect.x0
    public g1<K> createKeySet() {
        return new t2.Cif(this, new t2.Cfor(this.alternatingKeysAndValues, this.f14580case, this.f14581else));
    }

    @Override // com.google.common.collect.x0, java.util.Map
    public V get(@b51 Object obj) {
        return (V) t2.get(this.f14583try, this.alternatingKeysAndValues, this.f14581else, this.f14580case, obj);
    }

    @Override // com.google.common.collect.x0
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f14581else;
    }

    @Override // com.google.common.collect.p0, com.google.common.collect.BiMap
    public p0<V, K> inverse() {
        return this.f14582goto;
    }

    public r2(Object[] objArr, int i) {
        this.alternatingKeysAndValues = objArr;
        this.f14581else = i;
        this.f14580case = 0;
        int iChooseTableSize = i >= 2 ? g1.chooseTableSize(i) : 0;
        this.f14583try = t2.createHashTable(objArr, i, iChooseTableSize, 0);
        this.f14582goto = new r2<>(t2.createHashTable(objArr, i, iChooseTableSize, 1), objArr, i, this);
    }

    private r2(Object obj, Object[] objArr, int i, r2<V, K> r2Var) {
        this.f14583try = obj;
        this.alternatingKeysAndValues = objArr;
        this.f14580case = 1;
        this.f14581else = i;
        this.f14582goto = r2Var;
    }
}
