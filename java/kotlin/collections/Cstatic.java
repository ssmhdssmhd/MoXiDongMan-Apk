package kotlin.collections;

import android.support.v4.dn0;
import android.support.v4.m41;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\u001a\u001f\u0010\u0003\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001f\u0010\u0005\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0004\u001a\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u0000\u001a%\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\bH\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"", "", "index", "n0", "(Ljava/util/List;I)I", "o0", ExifInterface.GPS_DIRECTION_TRUE, "l0", "", "m0", "(Ljava/util/List;)Ljava/util/List;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.static, reason: invalid class name */
/* loaded from: classes3.dex */
class Cstatic extends Creturn {
    @m41
    public static final <T> List<T> l0(@m41 List<? extends T> asReversed) {
        Csuper.m30700throw(asReversed, "$this$asReversed");
        return new Cinstanceof(asReversed);
    }

    @m41
    @wp0(name = "asReversedMutable")
    public static final <T> List<T> m0(@m41 List<T> asReversed) {
        Csuper.m30700throw(asReversed, "$this$asReversed");
        return new Cimplements(asReversed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int n0(List<?> list, int i) {
        int iM30197volatile = Cthrow.m30197volatile(list);
        if (i >= 0 && iM30197volatile >= i) {
            return Cthrow.m30197volatile(list) - i;
        }
        throw new IndexOutOfBoundsException("Element index " + i + " must be in range [" + new dn0(0, Cthrow.m30197volatile(list)) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int o0(List<?> list, int i) {
        int size = list.size();
        if (i >= 0 && size >= i) {
            return list.size() - i;
        }
        throw new IndexOutOfBoundsException("Position index " + i + " must be in range [" + new dn0(0, list.size()) + "].");
    }
}
