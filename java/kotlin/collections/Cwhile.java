package kotlin.collections;

import android.support.v4.c92;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.um0;
import android.support.v4.wg1;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Access modifiers changed from: package-private */
@kotlin.Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a.\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u0087\bø\u0001\u0000\u001a!\u0010\u0007\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0001¢\u0006\u0004\b\u0007\u0010\b\u001a \u0010\n\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0001\u001a\u001f\u0010\r\u001a\u00020\f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000e\u001a,\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0000\u001a\u001e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0000\u001a\"\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0004\u001a@\u0010\u0016\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00120\u0015\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0014*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00150\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0017"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function0;", "", "iterator", "", "k", "", "m", "(Ljava/lang/Iterable;)Ljava/lang/Integer;", "default", "l", "", "", "q", "(Ljava/util/Collection;)Z", "source", "o", "n", "", ak.ax, "R", "Landroid/support/v4/qb1;", "r", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile extends Cthrow {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @kotlin.Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u001c\n\u0002\u0010(\n\u0002\b\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004"}, d2 = {"kotlin/collections/while$do", "", "", "iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.while$do, reason: invalid class name */
    public static final class Cdo<T> implements Iterable<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function0 f27760do;

        public Cdo(Function0 function0) {
            this.f27760do = function0;
        }

        @Override // java.lang.Iterable
        @m41
        public Iterator<T> iterator() {
            return (Iterator) this.f27760do.invoke();
        }
    }

    @um0
    private static final <T> Iterable<T> k(Function0<? extends Iterator<? extends T>> function0) {
        return new Cdo(function0);
    }

    @wg1
    public static <T> int l(@m41 Iterable<? extends T> collectionSizeOrDefault, int i) {
        Csuper.m30700throw(collectionSizeOrDefault, "$this$collectionSizeOrDefault");
        return collectionSizeOrDefault instanceof Collection ? ((Collection) collectionSizeOrDefault).size() : i;
    }

    @wg1
    @z41
    public static final <T> Integer m(@m41 Iterable<? extends T> collectionSizeOrNull) {
        Csuper.m30700throw(collectionSizeOrNull, "$this$collectionSizeOrNull");
        if (collectionSizeOrNull instanceof Collection) {
            return Integer.valueOf(((Collection) collectionSizeOrNull).size());
        }
        return null;
    }

    @m41
    public static <T> Collection<T> n(@m41 Iterable<? extends T> convertToSetForSetOperation) {
        Csuper.m30700throw(convertToSetForSetOperation, "$this$convertToSetForSetOperation");
        if (convertToSetForSetOperation instanceof Set) {
            return (Collection) convertToSetForSetOperation;
        }
        if (!(convertToSetForSetOperation instanceof Collection)) {
            return Cthrows.T4(convertToSetForSetOperation);
        }
        Collection<T> collection = (Collection) convertToSetForSetOperation;
        return q(collection) ? Cthrows.T4(convertToSetForSetOperation) : collection;
    }

    @m41
    public static final <T> Collection<T> o(@m41 Iterable<? extends T> convertToSetForSetOperationWith, @m41 Iterable<? extends T> source) {
        Csuper.m30700throw(convertToSetForSetOperationWith, "$this$convertToSetForSetOperationWith");
        Csuper.m30700throw(source, "source");
        if (convertToSetForSetOperationWith instanceof Set) {
            return (Collection) convertToSetForSetOperationWith;
        }
        if (!(convertToSetForSetOperationWith instanceof Collection)) {
            return Cthrows.T4(convertToSetForSetOperationWith);
        }
        if ((source instanceof Collection) && ((Collection) source).size() < 2) {
            return (Collection) convertToSetForSetOperationWith;
        }
        Collection<T> collection = (Collection) convertToSetForSetOperationWith;
        return q(collection) ? Cthrows.T4(convertToSetForSetOperationWith) : collection;
    }

    @m41
    public static final <T> List<T> p(@m41 Iterable<? extends Iterable<? extends T>> flatten) {
        Csuper.m30700throw(flatten, "$this$flatten");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Iterable<? extends T>> it = flatten.iterator();
        while (it.hasNext()) {
            Creturn.D(arrayList, it.next());
        }
        return arrayList;
    }

    private static final <T> boolean q(Collection<? extends T> collection) {
        return collection.size() > 2 && (collection instanceof ArrayList);
    }

    @m41
    public static final <T, R> qb1<List<T>, List<R>> r(@m41 Iterable<? extends qb1<? extends T, ? extends R>> unzip) {
        Csuper.m30700throw(unzip, "$this$unzip");
        int iL = l(unzip, 10);
        ArrayList arrayList = new ArrayList(iL);
        ArrayList arrayList2 = new ArrayList(iL);
        for (qb1<? extends T, ? extends R> qb1Var : unzip) {
            arrayList.add(qb1Var.getFirst());
            arrayList2.add(qb1Var.getSecond());
        }
        return c92.m819do(arrayList, arrayList2);
    }
}
