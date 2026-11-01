package android.support.v4;

import com.google.common.base.Cthrow;
import java.util.Map;

@ki0
/* loaded from: classes2.dex */
public abstract class yd0<K, V> extends ae0 implements Map.Entry<K, V> {
    @Override // android.support.v4.ae0
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract Map.Entry<K, V> delegate();

    @Override // java.util.Map.Entry
    public boolean equals(@b51 Object obj) {
        return delegate().equals(obj);
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return delegate().getKey();
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return delegate().getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        return delegate().setValue(v);
    }

    public boolean standardEquals(@b51 Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Cthrow.m15205do(getKey(), entry.getKey()) && Cthrow.m15205do(getValue(), entry.getValue());
    }

    public int standardHashCode() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    @o8
    public String standardToString() {
        return getKey() + "=" + getValue();
    }
}
