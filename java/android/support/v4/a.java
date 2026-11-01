package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMutableMap;
import org.mozilla.javascript.ES6Iterator;

@iz1(version = "1.1")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B\t\b\u0004¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0007\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0001H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Landroid/support/v4/a;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Ljava/util/AbstractMap;", "key", ES6Iterator.VALUE_PROPERTY, "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class a<K, V> extends AbstractMap<K, V> implements Map<K, V>, KMutableMap {
    /* renamed from: do, reason: not valid java name */
    public abstract Set m0do();

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m0do();
    }

    /* renamed from: for, reason: not valid java name */
    public /* bridge */ int m1for() {
        return super.size();
    }

    /* renamed from: if, reason: not valid java name */
    public /* bridge */ Set m2if() {
        return super.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m2if();
    }

    /* renamed from: new, reason: not valid java name */
    public /* bridge */ Collection m3new() {
        return super.values();
    }

    @Override // java.util.AbstractMap, java.util.Map
    @z41
    public abstract V put(K k, V v);

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return m1for();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m3new();
    }
}
