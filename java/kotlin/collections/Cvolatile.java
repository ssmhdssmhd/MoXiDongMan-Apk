package kotlin.collections;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wg1;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.Pair;
import kotlin.collections.builders.Cfor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\t\u001a2\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\u001aI\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012#\u0010\n\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001aQ\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\r\u001a\u00020\f2#\u0010\n\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001H\u0001\u001a(\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\r\u001a\u00020\fH\u0001\u001a4\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007H\u0001\u001aE\u0010\u0017\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00132\u0006\u0010\u0014\u001a\u00028\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u0015H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a:\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0019\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u001a@\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u000e\u0010\u001d\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u001c\u001a[\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0019\"\u0004\b\u0001\u0010\u00012*\u0010 \u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u001f\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002¢\u0006\u0004\b!\u0010\"\u001ac\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001a\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u001d\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u001c2*\u0010 \u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u001f\"\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0007¢\u0006\u0004\b#\u0010$\u001a\u0019\u0010'\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0\u0004H\u0087\b\u001a1\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0081\b\u001a2\u0010)\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0000\u001a\u0010\u0010+\u001a\u00020\f2\u0006\u0010*\u001a\u00020\fH\u0001\"\u0016\u0010.\u001a\u00020\f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010-\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006/"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroid/support/v4/qb1;", "pair", "", "catch", "Lkotlin/Function1;", "", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "case", "", "capacity", "try", "else", "goto", "builder", "new", "Ljava/util/concurrent/ConcurrentMap;", "key", "Lkotlin/Function0;", "defaultValue", "this", "(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "Ljava/util/SortedMap;", "while", "Ljava/util/Comparator;", "comparator", "import", "", "pairs", "const", "([Landroid/support/v4/qb1;)Ljava/util/SortedMap;", "class", "(Ljava/util/Comparator;[Landroid/support/v4/qb1;)Ljava/util/SortedMap;", "", "Ljava/util/Properties;", "final", "throw", "super", "expectedSize", "break", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "INT_MAX_POWER_OF_TWO", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/MapsKt")
/* renamed from: kotlin.collections.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cvolatile extends Cstrictfp {

    /* renamed from: do, reason: not valid java name */
    private static final int f27759do = 1073741824;

    @wg1
    /* renamed from: break, reason: not valid java name */
    public static int m30270break(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    @um0
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: case, reason: not valid java name */
    private static final <K, V> Map<K, V> m30271case(Function1<? super Map<K, V>, ub2> function1) {
        Map mapM30275else = m30275else();
        function1.invoke(mapM30275else);
        return m30279new(mapM30275else);
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public static final <K, V> Map<K, V> m30272catch(@m41 qb1<? extends K, ? extends V> pair) {
        Csuper.m30700throw(pair, "pair");
        Map<K, V> mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        Csuper.m30696super(mapSingletonMap, "java.util.Collections.si…(pair.first, pair.second)");
        return mapSingletonMap;
    }

    @m41
    @iz1(version = "1.4")
    /* renamed from: class, reason: not valid java name */
    public static final <K, V> SortedMap<K, V> m30273class(@m41 Comparator<? super K> comparator, @m41 Pair<? extends K, ? extends V>... pairs) {
        Csuper.m30700throw(comparator, "comparator");
        Csuper.m30700throw(pairs, "pairs");
        TreeMap treeMap = new TreeMap(comparator);
        Cinterface.L(treeMap, pairs);
        return treeMap;
    }

    @m41
    /* renamed from: const, reason: not valid java name */
    public static final <K extends Comparable<? super K>, V> SortedMap<K, V> m30274const(@m41 Pair<? extends K, ? extends V>... pairs) {
        Csuper.m30700throw(pairs, "pairs");
        TreeMap treeMap = new TreeMap();
        Cinterface.L(treeMap, pairs);
        return treeMap;
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: else, reason: not valid java name */
    public static final <K, V> Map<K, V> m30275else() {
        return new Cfor();
    }

    @um0
    /* renamed from: final, reason: not valid java name */
    private static final Properties m30276final(Map<String, String> map) {
        Properties properties = new Properties();
        properties.putAll(map);
        return properties;
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: goto, reason: not valid java name */
    public static final <K, V> Map<K, V> m30277goto(int i) {
        return new Cfor(i);
    }

    @m41
    /* renamed from: import, reason: not valid java name */
    public static final <K, V> SortedMap<K, V> m30278import(@m41 Map<? extends K, ? extends V> toSortedMap, @m41 Comparator<? super K> comparator) {
        Csuper.m30700throw(toSortedMap, "$this$toSortedMap");
        Csuper.m30700throw(comparator, "comparator");
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(toSortedMap);
        return treeMap;
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: new, reason: not valid java name */
    public static final <K, V> Map<K, V> m30279new(@m41 Map<K, V> builder) {
        Csuper.m30700throw(builder, "builder");
        return ((Cfor) builder).m29920const();
    }

    @m41
    /* renamed from: super, reason: not valid java name */
    public static final <K, V> Map<K, V> m30280super(@m41 Map<? extends K, ? extends V> toSingletonMap) {
        Csuper.m30700throw(toSingletonMap, "$this$toSingletonMap");
        Map.Entry<? extends K, ? extends V> next = toSingletonMap.entrySet().iterator().next();
        Map<K, V> mapSingletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        Csuper.m30696super(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }

    /* renamed from: this, reason: not valid java name */
    public static final <K, V> V m30281this(@m41 ConcurrentMap<K, V> getOrPut, K k, @m41 Function0<? extends V> defaultValue) {
        Csuper.m30700throw(getOrPut, "$this$getOrPut");
        Csuper.m30700throw(defaultValue, "defaultValue");
        V v = getOrPut.get(k);
        if (v != null) {
            return v;
        }
        V vInvoke = defaultValue.invoke();
        V vPutIfAbsent = getOrPut.putIfAbsent(k, vInvoke);
        return vPutIfAbsent != null ? vPutIfAbsent : vInvoke;
    }

    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final <K, V> Map<K, V> m30282throw(Map<K, ? extends V> map) {
        return m30280super(map);
    }

    @um0
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: try, reason: not valid java name */
    private static final <K, V> Map<K, V> m30283try(int i, Function1<? super Map<K, V>, ub2> function1) {
        Map mapM30277goto = m30277goto(i);
        function1.invoke(mapM30277goto);
        return m30279new(mapM30277goto);
    }

    @m41
    /* renamed from: while, reason: not valid java name */
    public static final <K extends Comparable<? super K>, V> SortedMap<K, V> m30284while(@m41 Map<? extends K, ? extends V> toSortedMap) {
        Csuper.m30700throw(toSortedMap, "$this$toSortedMap");
        return new TreeMap(toSortedMap);
    }
}
