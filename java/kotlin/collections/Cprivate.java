package kotlin.collections;

import android.support.v4.um0;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.reflect.KProperty;
import org.mozilla.javascript.ES6Iterator;

@wp0(name = "MapAccessorsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aM\u0010\t\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0001*\u00028\u0000*\u0015\u0012\u0006\b\u0000\u0012\u00020\u0003\u0012\t\u0012\u00078\u0000¢\u0006\u0002\b\u00040\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0087\n¢\u0006\u0004\b\t\u0010\n\u001aO\u0010\f\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0001*\u00028\u0000*\u0017\u0012\u0006\b\u0000\u0012\u00020\u0003\u0012\u000b\b\u0001\u0012\u00078\u0000¢\u0006\u0002\b\u00040\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0087\n¢\u0006\u0004\b\f\u0010\n\u001aH\u0010\u000f\u001a\u00020\u000e\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0006\b\u0000\u0012\u00020\u0003\u0012\u0006\b\u0000\u0012\u00028\u00000\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "V1", "", "", "Landroid/support/v4/p80;", "", "thisRef", "Lkotlin/reflect/KProperty;", "property", "do", "(Ljava/util/Map;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "", "if", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "for", "(Ljava/util/Map;Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.collections.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate {
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final <V, V1 extends V> V1 m30136do(Map<? super String, ? extends V> getValue, Object obj, KProperty<?> kProperty) {
        Csuper.m30700throw(getValue, "$this$getValue");
        return (V1) Cstrictfp.m30139do(getValue, kProperty.getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    /* renamed from: for, reason: not valid java name */
    private static final <V> void m30137for(Map<? super String, ? super V> setValue, Object obj, KProperty<?> kProperty, V v) {
        Csuper.m30700throw(setValue, "$this$setValue");
        setValue.put(kProperty.getName(), v);
    }

    @um0
    @wp0(name = "getVar")
    /* renamed from: if, reason: not valid java name */
    private static final <V, V1 extends V> V1 m30138if(Map<? super String, ? extends V> getValue, Object obj, KProperty<?> kProperty) {
        Csuper.m30700throw(getValue, "$this$getValue");
        return (V1) Cstrictfp.m30139do(getValue, kProperty.getName());
    }
}
