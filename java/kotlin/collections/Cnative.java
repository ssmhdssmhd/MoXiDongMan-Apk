package kotlin.collections;

import android.support.v4.km0;
import android.support.v4.m41;
import android.support.v4.mm0;
import android.support.v4.ub2;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\n\u001a\"\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a0\u0010\b\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", ak.aG, "Landroid/support/v4/km0;", "v", "Lkotlin/Function1;", "Landroid/support/v4/ub2;", "operation", ak.aH, "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.native, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnative extends Cimport {
    public static final <T> void t(@m41 Iterator<? extends T> forEach, @m41 Function1<? super T, ub2> operation) {
        Csuper.m30700throw(forEach, "$this$forEach");
        Csuper.m30700throw(operation, "operation");
        while (forEach.hasNext()) {
            operation.invoke(forEach.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    private static final <T> Iterator<T> u(Iterator<? extends T> iterator) {
        Csuper.m30700throw(iterator, "$this$iterator");
        return iterator;
    }

    @m41
    public static final <T> Iterator<km0<T>> v(@m41 Iterator<? extends T> withIndex) {
        Csuper.m30700throw(withIndex, "$this$withIndex");
        return new mm0(withIndex);
    }
}
