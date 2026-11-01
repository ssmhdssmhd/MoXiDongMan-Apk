package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import java.util.Objects;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;

@wp0(name = "CollectionsJDK8Kt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001aC\u0010\u0006\u001a\u00028\u0001\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000\"\u0004\b\u0001\u0010\u0002*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0001H\u0087\b¢\u0006\u0004\b\u0006\u0010\u0007\u001aJ\u0010\u000b\u001a\u00020\n\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000\"\t\b\u0001\u0010\u0002¢\u0006\u0002\b\u0000*\u0012\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0006\b\u0001\u0012\u00028\u00010\b2\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u0001H\u0087\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroid/support/v4/o71;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "key", "defaultValue", "do", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "", ES6Iterator.VALUE_PROPERTY, "", "if", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 5, 1}, pn = "kotlin.collections")
/* loaded from: classes3.dex */
public final class xm {
    /* JADX WARN: Multi-variable type inference failed */
    @iz1(version = "1.2")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final <K, V> V m9539do(Map<? extends K, ? extends V> map, K k, V v) {
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        return map.getOrDefault(k, v);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final <K, V> boolean m9540if(Map<? extends K, ? extends V> map, K k, V v) {
        Objects.requireNonNull(map, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
        return k92.m4300catch(map).remove(k, v);
    }
}
