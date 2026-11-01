package kotlin.collections;

import android.support.v4.m41;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B>\u0012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001d\u0012!\u0010(\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00028\u00010#¢\u0006\u0004\b5\u00106J\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u001a\u0010\u0012\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0014\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0016\u0010\u0013J\u001e\u0010\u001a\u001a\u00020\u00192\u0014\u0010\u0018\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0017H\u0016J\b\u0010\u001b\u001a\u00020\u0019H\u0016J\u0017\u0010\u001c\u001a\u00028\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u0013R(\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001d8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R1\u0010(\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00028\u00010#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u001c\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000,8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010-R\u001c\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010/8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R(\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001030,8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010-¨\u00067"}, d2 = {"Lkotlin/collections/transient;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/MutableMapWithDefault;", "", "other", "", "equals", "", "hashCode", "", "toString", "isEmpty", "key", "containsKey", "(Ljava/lang/Object;)Z", ES6Iterator.VALUE_PROPERTY, "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove", "", TypedValues.Transition.S_FROM, "Landroid/support/v4/ub2;", "putAll", FreemarkerServlet.r, "getOrImplicitDefault", "", "do", "Ljava/util/Map;", "getMap", "()Ljava/util/Map;", "map", "Lkotlin/Function1;", "Landroid/support/v4/xb1;", "name", "if", "Lkotlin/jvm/functions/Function1;", "default", "for", "()I", "size", "", "()Ljava/util/Set;", "keys", "", "new", "()Ljava/util/Collection;", "values", "", "entries", "<init>", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.transient, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctransient<K, V> implements MutableMapWithDefault<K, V> {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Map<K, V> f27746do;

    /* renamed from: if, reason: not valid java name */
    private final Function1<K, V> f27747if;

    /* JADX WARN: Multi-variable type inference failed */
    public Ctransient(@m41 Map<K, V> map, @m41 Function1<? super K, ? extends V> function1) {
        Csuper.m30700throw(map, "map");
        Csuper.m30700throw(function1, "default");
        this.f27746do = map;
        this.f27747if = function1;
    }

    @Override // java.util.Map
    public void clear() {
        getMap().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return getMap().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return getMap().containsValue(obj);
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public Set<Map.Entry<K, V>> m30199do() {
        return getMap().entrySet();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m30199do();
    }

    @Override // java.util.Map
    public boolean equals(@z41 Object obj) {
        return getMap().equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public int m30200for() {
        return getMap().size();
    }

    @Override // java.util.Map
    @z41
    public V get(Object obj) {
        return getMap().get(obj);
    }

    @Override // kotlin.collections.MutableMapWithDefault, kotlin.collections.MapWithDefault
    @m41
    public Map<K, V> getMap() {
        return this.f27746do;
    }

    @Override // kotlin.collections.MapWithDefault
    public V getOrImplicitDefault(K k) {
        Map<K, V> map = getMap();
        V v = map.get(k);
        return (v != null || map.containsKey(k)) ? v : this.f27747if.invoke(k);
    }

    @Override // java.util.Map
    public int hashCode() {
        return getMap().hashCode();
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public Set<K> m30201if() {
        return getMap().keySet();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return getMap().isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m30201if();
    }

    @m41
    /* renamed from: new, reason: not valid java name */
    public Collection<V> m30202new() {
        return getMap().values();
    }

    @Override // java.util.Map
    @z41
    public V put(K k, V v) {
        return getMap().put(k, v);
    }

    @Override // java.util.Map
    public void putAll(@m41 Map<? extends K, ? extends V> from) {
        Csuper.m30700throw(from, "from");
        getMap().putAll(from);
    }

    @Override // java.util.Map
    @z41
    public V remove(Object obj) {
        return getMap().remove(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m30200for();
    }

    @m41
    public String toString() {
        return getMap().toString();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m30202new();
    }
}
