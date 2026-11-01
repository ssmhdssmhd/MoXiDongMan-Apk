package android.support.v4;

import com.google.common.cache.Cgoto;
import java.util.AbstractMap;

@ki0
/* loaded from: classes.dex */
public final class vm1<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {
    private static final long serialVersionUID = 0;
    private final Cgoto cause;

    private vm1(@b51 K k, @b51 V v, Cgoto cgoto) {
        super(k, v);
        this.cause = (Cgoto) af1.m205continue(cgoto);
    }

    public static <K, V> vm1<K, V> create(@b51 K k, @b51 V v, Cgoto cgoto) {
        return new vm1<>(k, v, cgoto);
    }

    public Cgoto getCause() {
        return this.cause;
    }

    public boolean wasEvicted() {
        return this.cause.wasEvicted();
    }
}
