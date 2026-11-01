package kotlin.collections;

import android.support.v4.an1;
import android.support.v4.iz1;
import android.support.v4.k41;
import android.support.v4.m41;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0004\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0002j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0003H\u0087\b\u001a6\u0010\n\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0007H\u0087\bø\u0001\u0000\u001a \u0010\f\u001a\u00020\u0005\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000b*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a2\u0010\r\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0004\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0002j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0003\u001a(\u0010\u000f\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000e\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\b\u001a!\u0010\u0014\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0013\u001a\u00020\u0012H\u0087\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "Landroid/support/v4/ub2;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lkotlin/Function2;", "", "comparison", "B", "", ak.aD, "C", ES6Iterator.VALUE_PROPERTY, "w", "(Ljava/util/List;Ljava/lang/Object;)V", "x", "Ljava/util/Random;", "random", "y", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.public, reason: invalid class name */
/* loaded from: classes.dex */
public class Cpublic extends Cnative {
    @um0
    @Cfor(level = Ctry.ERROR, message = "Use sortWith(comparator) instead.", replaceWith = @an1(expression = "this.sortWith(comparator)", imports = {}))
    private static final <T> void A(List<T> list, Comparator<? super T> comparator) {
        throw new k41(null, 1, null);
    }

    @um0
    @Cfor(level = Ctry.ERROR, message = "Use sortWith(Comparator(comparison)) instead.", replaceWith = @an1(expression = "this.sortWith(Comparator(comparison))", imports = {}))
    private static final <T> void B(List<T> list, Function2<? super T, ? super T, Integer> function2) {
        throw new k41(null, 1, null);
    }

    public static <T> void C(@m41 List<T> sortWith, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(sortWith, "$this$sortWith");
        Csuper.m30700throw(comparator, "comparator");
        if (sortWith.size() > 1) {
            Collections.sort(sortWith, comparator);
        }
    }

    @iz1(version = "1.2")
    @um0
    private static final <T> void w(List<T> list, T t) {
        Collections.fill(list, t);
    }

    @iz1(version = "1.2")
    @um0
    private static final <T> void x(List<T> list) {
        Collections.shuffle(list);
    }

    @iz1(version = "1.2")
    @um0
    private static final <T> void y(List<T> list, Random random) {
        Collections.shuffle(list, random);
    }

    public static <T extends Comparable<? super T>> void z(@m41 List<T> sort) {
        Csuper.m30700throw(sort, "$this$sort");
        if (sort.size() > 1) {
            Collections.sort(sort);
        }
    }
}
