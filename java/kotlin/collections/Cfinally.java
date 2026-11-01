package kotlin.collections;

import android.support.v4.bm1;
import android.support.v4.iz1;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wg1;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\u0003\u001a0\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0007\u001aZ\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\b\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u0006\"\u0004\b\u0002\u0010\u0007*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b2\u001e\u0010\u000b\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\n\u0012\u0004\u0012\u00028\u00020\tH\u0081\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "K", "Lkotlin/collections/Grouping;", "", "", "do", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "R", "", "Lkotlin/Function1;", "", "f", "if", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/GroupingKt")
/* renamed from: kotlin.collections.finally, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfinally {
    @m41
    @iz1(version = "1.1")
    /* renamed from: do, reason: not valid java name */
    public static final <T, K> Map<K, Integer> m30080do(@m41 Grouping<T, ? extends K> eachCount) {
        Csuper.m30700throw(eachCount, "$this$eachCount");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = eachCount.sourceIterator();
        while (itSourceIterator.hasNext()) {
            K kKeyOf = eachCount.keyOf(itSourceIterator.next());
            Object ccase = linkedHashMap.get(kKeyOf);
            if (ccase == null && !linkedHashMap.containsKey(kKeyOf)) {
                ccase = new bm1.Ccase();
            }
            bm1.Ccase ccase2 = (bm1.Ccase) ccase;
            ccase2.element++;
            linkedHashMap.put(kKeyOf, ccase2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Objects.requireNonNull(entry, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>");
            k92.m4302const(entry).setValue(Integer.valueOf(((bm1.Ccase) entry.getValue()).element));
        }
        return k92.m4300catch(linkedHashMap);
    }

    @wg1
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final <K, V, R> Map<K, R> m30081if(Map<K, V> map, Function1<? super Map.Entry<? extends K, ? extends V>, ? extends R> function1) {
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Objects.requireNonNull(entry, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K, R>");
            k92.m4302const(entry).setValue(function1.invoke(entry));
        }
        return k92.m4300catch(map);
    }
}
