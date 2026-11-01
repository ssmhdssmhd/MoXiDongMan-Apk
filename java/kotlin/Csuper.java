package kotlin;

import android.support.v4.m41;
import android.support.v4.rm0;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import kotlin.reflect.KProperty;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a6\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0087\n¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, ES6Iterator.VALUE_PROPERTY, "Lkotlin/Lazy;", "try", "(Ljava/lang/Object;)Lkotlin/Lazy;", "", "thisRef", "Lkotlin/reflect/KProperty;", "property", "new", "(Lkotlin/Lazy;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/LazyKt")
/* renamed from: kotlin.super, reason: invalid class name */
/* loaded from: classes3.dex */
class Csuper extends Cfinal {
    @um0
    /* renamed from: new, reason: not valid java name */
    private static final <T> T m31107new(Lazy<? extends T> getValue, Object obj, KProperty<?> kProperty) {
        kotlin.jvm.internal.Csuper.m30700throw(getValue, "$this$getValue");
        return getValue.getValue();
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public static final <T> Lazy<T> m31108try(T t) {
        return new rm0(t);
    }
}
