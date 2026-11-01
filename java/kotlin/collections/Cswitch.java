package kotlin.collections;

import android.support.v4.h91;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001f\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u001aC\u0010\t\u001a\u00028\u0000\"\u0010\b\u0000\u0010\u0007*\n\u0012\u0006\b\u0000\u0012\u00028\u00010\u0006\"\u0004\b\u0001\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\b\u001a\u00028\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002¢\u0006\u0004\b\t\u0010\n\u001a\u0016\u0010\u000e\u001a\u00020\r\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\f\u001a&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u000e\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u000f*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a8\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0014\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0012j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0013\u001a7\u0010\u0019\u001a\u00020\u0017\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a7\u0010\u001c\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001b0\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001e"}, d2 = {"R", "", "Ljava/lang/Class;", "klass", "", "p0", "", "C", "destination", "q0", "(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroid/support/v4/ub2;", "r0", "", "Ljava/util/SortedSet;", "u0", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "v0", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "s0", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "t0", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.switch, reason: invalid class name */
/* loaded from: classes3.dex */
class Cswitch extends Cstatic {
    @m41
    public static final <R> List<R> p0(@m41 Iterable<?> filterIsInstance, @m41 Class<R> klass) {
        Csuper.m30700throw(filterIsInstance, "$this$filterIsInstance");
        Csuper.m30700throw(klass, "klass");
        return (List) q0(filterIsInstance, new ArrayList(), klass);
    }

    @m41
    public static final <C extends Collection<? super R>, R> C q0(@m41 Iterable<?> filterIsInstanceTo, @m41 C destination, @m41 Class<R> klass) {
        Csuper.m30700throw(filterIsInstanceTo, "$this$filterIsInstanceTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(klass, "klass");
        for (Object obj : filterIsInstanceTo) {
            if (klass.isInstance(obj)) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static <T> void r0(@m41 List<T> reverse) {
        Csuper.m30700throw(reverse, "$this$reverse");
        Collections.reverse(reverse);
    }

    @um0
    @wp0(name = "sumOfBigDecimal")
    @h91
    @iz1(version = "1.4")
    private static final <T> BigDecimal s0(Iterable<? extends T> iterable, Function1<? super T, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(it.next()));
            Csuper.m30696super(bigDecimalValueOf, "this.add(other)");
        }
        return bigDecimalValueOf;
    }

    @um0
    @wp0(name = "sumOfBigInteger")
    @h91
    @iz1(version = "1.4")
    private static final <T> BigInteger t0(Iterable<? extends T> iterable, Function1<? super T, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(it.next()));
            Csuper.m30696super(bigIntegerValueOf, "this.add(other)");
        }
        return bigIntegerValueOf;
    }

    @m41
    public static final <T extends Comparable<? super T>> SortedSet<T> u0(@m41 Iterable<? extends T> toSortedSet) {
        Csuper.m30700throw(toSortedSet, "$this$toSortedSet");
        return (SortedSet) Cthrows.Q4(toSortedSet, new TreeSet());
    }

    @m41
    public static final <T> SortedSet<T> v0(@m41 Iterable<? extends T> toSortedSet, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(toSortedSet, "$this$toSortedSet");
        Csuper.m30700throw(comparator, "comparator");
        return (SortedSet) Cthrows.Q4(toSortedSet, new TreeSet(comparator));
    }
}
