package kotlin.collections;

import android.support.v4.m41;
import android.support.v4.wg1;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\u001a3\u0010\u0004\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001aQ\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010\u0006\u001aZ\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000b\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000b2!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010\u0006H\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "key", "do", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function1;", "Landroid/support/v4/xb1;", "name", "defaultValue", "if", "", "for", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/MapsKt")
/* renamed from: kotlin.collections.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
class Cstrictfp {
    @wg1
    @wp0(name = "getOrImplicitDefaultNullable")
    /* renamed from: do, reason: not valid java name */
    public static final <K, V> V m30139do(@m41 Map<K, ? extends V> getOrImplicitDefault, K k) {
        Csuper.m30700throw(getOrImplicitDefault, "$this$getOrImplicitDefault");
        if (getOrImplicitDefault instanceof MapWithDefault) {
            return (V) ((MapWithDefault) getOrImplicitDefault).getOrImplicitDefault(k);
        }
        V v = getOrImplicitDefault.get(k);
        if (v != null || getOrImplicitDefault.containsKey(k)) {
            return v;
        }
        throw new NoSuchElementException("Key " + k + " is missing in the map.");
    }

    @m41
    @wp0(name = "withDefaultMutable")
    /* renamed from: for, reason: not valid java name */
    public static final <K, V> Map<K, V> m30140for(@m41 Map<K, V> withDefault, @m41 Function1<? super K, ? extends V> defaultValue) {
        Csuper.m30700throw(withDefault, "$this$withDefault");
        Csuper.m30700throw(defaultValue, "defaultValue");
        return withDefault instanceof MutableMapWithDefault ? m30140for(((MutableMapWithDefault) withDefault).getMap(), defaultValue) : new Ctransient(withDefault, defaultValue);
    }

    @m41
    /* renamed from: if, reason: not valid java name */
    public static final <K, V> Map<K, V> m30141if(@m41 Map<K, ? extends V> withDefault, @m41 Function1<? super K, ? extends V> defaultValue) {
        Csuper.m30700throw(withDefault, "$this$withDefault");
        Csuper.m30700throw(defaultValue, "defaultValue");
        return withDefault instanceof MapWithDefault ? m30141if(((MapWithDefault) withDefault).getMap(), defaultValue) : new Cabstract(withDefault, defaultValue);
    }
}
