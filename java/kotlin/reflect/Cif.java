package kotlin.reflect;

import android.support.v4.gf2;
import android.support.v4.hw0;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@wp0(name = "KClasses")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a-\u0010\u0004\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a/\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\u0006\u0010\u0005¨\u0006\u0007"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KClass;", ES6Iterator.VALUE_PROPERTY, "do", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Ljava/lang/Object;", "if", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.reflect.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {
    /* JADX WARN: Multi-variable type inference failed */
    @m41
    @gf2(markerClass = {Cthis.class})
    @hw0
    @iz1(version = "1.4")
    /* renamed from: do, reason: not valid java name */
    public static final <T> T m31008do(@m41 KClass<T> cast, @z41 Object obj) {
        Csuper.m30700throw(cast, "$this$cast");
        if (cast.isInstance(obj)) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type T");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + cast.getQualifiedName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @gf2(markerClass = {Cthis.class})
    @z41
    @hw0
    @iz1(version = "1.4")
    /* renamed from: if, reason: not valid java name */
    public static final <T> T m31009if(@m41 KClass<T> safeCast, @z41 Object obj) {
        Csuper.m30700throw(safeCast, "$this$safeCast");
        if (!safeCast.isInstance(obj)) {
            return null;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type T");
        return obj;
    }
}
