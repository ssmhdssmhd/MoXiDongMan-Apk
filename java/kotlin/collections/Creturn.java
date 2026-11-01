package kotlin.collections;

import android.support.v4.an1;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import freemarker.template.Cstatic;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Cfor;
import kotlin.Cthis;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cclass;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u001d\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\r\u001a/\u0010\u0005\u001a\u00020\u0004\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a.\u0010\t\u001a\u00020\u0004\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0087\b\u001a.\u0010\n\u001a\u00020\u0004\"\t\b\u0000\u0010\u0001¢\u0006\u0002\b\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0087\b\u001a*\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b\f\u0010\r\u001a)\u0010\u000f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\n\u001a0\u0010\u0011\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012\u001a)\u0010\u0014\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0087\n\u001a*\u0010\u0015\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\n¢\u0006\u0004\b\u0015\u0010\r\u001a)\u0010\u0016\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0087\n\u001a0\u0010\u0017\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0087\n¢\u0006\u0004\b\u0017\u0010\u0012\u001a)\u0010\u0018\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0087\n\u001a&\u0010\u0019\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u001a&\u0010\u001a\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\u001a/\u0010\u001b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0004\b\u001b\u0010\u001c\u001a&\u0010\u0001\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u001a&\u0010\u001d\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\u001a/\u0010\u001e\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0004\b\u001e\u0010\u001c\u001a&\u0010\u001f\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u001a/\u0010 \u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0010¢\u0006\u0004\b \u0010\u001c\u001a&\u0010!\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\u001a\u0017\u0010\"\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u0002H\u0002¢\u0006\u0004\b\"\u0010#\u001a*\u0010'\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000$2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040%\u001a*\u0010(\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000$2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040%\u001a;\u0010*\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000$2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040%2\u0006\u0010)\u001a\u00020\u0004H\u0002¢\u0006\u0004\b*\u0010+\u001a(\u0010/\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,2\u0006\u0010.\u001a\u00020-H\u0087\b¢\u0006\u0004\b/\u00100\u001a\u001f\u00101\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,H\u0007¢\u0006\u0004\b1\u00102\u001a!\u00103\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,H\u0007¢\u0006\u0004\b3\u00102\u001a\u001f\u00104\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,H\u0007¢\u0006\u0004\b4\u00102\u001a!\u00105\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,H\u0007¢\u0006\u0004\b5\u00102\u001a*\u00106\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040%\u001a*\u00107\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040%\u001a;\u00108\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000,2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040%2\u0006\u0010)\u001a\u00020\u0004H\u0002¢\u0006\u0004\b8\u00109¨\u0006:"}, d2 = {"Landroid/support/v4/o71;", ExifInterface.GPS_DIRECTION_TRUE, "", "element", "", "R", "(Ljava/util/Collection;Ljava/lang/Object;)Z", "", "elements", "U", "e0", "Landroid/support/v4/ub2;", "N", "(Ljava/util/Collection;Ljava/lang/Object;)V", "", "M", "", "P", "(Ljava/util/Collection;[Ljava/lang/Object;)V", "Lkotlin/sequences/Sequence;", "O", "J", OptRuntime.GeneratorState.resumptionPoint_TYPE, "L", "K", Cstatic.m1, ExifInterface.LONGITUDE_EAST, "F", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "d0", "g0", "f0", "i0", "(Ljava/util/Collection;)Z", "", "Lkotlin/Function1;", "predicate", ExifInterface.LATITUDE_SOUTH, "c0", "predicateResultToRemove", "G", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z", "", "", "index", "Q", "(Ljava/util/List;I)Ljava/lang/Object;", "Y", "(Ljava/util/List;)Ljava/lang/Object;", "Z", "a0", "b0", "X", "h0", "H", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.return, reason: invalid class name */
/* loaded from: classes.dex */
public class Creturn extends Cpublic {
    public static <T> boolean D(@m41 Collection<? super T> addAll, @m41 Iterable<? extends T> elements) {
        Csuper.m30700throw(addAll, "$this$addAll");
        Csuper.m30700throw(elements, "elements");
        if (elements instanceof Collection) {
            return addAll.addAll((Collection) elements);
        }
        boolean z = false;
        Iterator<? extends T> it = elements.iterator();
        while (it.hasNext()) {
            if (addAll.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static <T> boolean E(@m41 Collection<? super T> addAll, @m41 Sequence<? extends T> elements) {
        Csuper.m30700throw(addAll, "$this$addAll");
        Csuper.m30700throw(elements, "elements");
        Iterator<? extends T> it = elements.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (addAll.add(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public static <T> boolean F(@m41 Collection<? super T> addAll, @m41 T[] elements) {
        Csuper.m30700throw(addAll, "$this$addAll");
        Csuper.m30700throw(elements, "elements");
        return addAll.addAll(Ccatch.m29987public(elements));
    }

    private static final <T> boolean G(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (function1.invoke(it.next()).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }

    private static final <T> boolean H(List<T> list, Function1<? super T, Boolean> function1, boolean z) {
        int i;
        if (!(list instanceof RandomAccess)) {
            Objects.requireNonNull(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T>");
            return G(k92.m4310for(list), function1, z);
        }
        int iM30197volatile = Cthrow.m30197volatile(list);
        if (iM30197volatile >= 0) {
            int i2 = 0;
            i = 0;
            while (true) {
                T t = list.get(i2);
                if (function1.invoke(t).booleanValue() != z) {
                    if (i != i2) {
                        list.set(i, t);
                    }
                    i++;
                }
                if (i2 == iM30197volatile) {
                    break;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        if (i >= list.size()) {
            return false;
        }
        int iM30197volatile2 = Cthrow.m30197volatile(list);
        if (iM30197volatile2 < i) {
            return true;
        }
        while (true) {
            list.remove(iM30197volatile2);
            if (iM30197volatile2 == i) {
                return true;
            }
            iM30197volatile2--;
        }
    }

    @um0
    private static final <T> void I(Collection<? super T> minusAssign, Iterable<? extends T> iterable) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        T(minusAssign, iterable);
    }

    @um0
    private static final <T> void J(Collection<? super T> minusAssign, T t) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        minusAssign.remove(t);
    }

    @um0
    private static final <T> void K(Collection<? super T> minusAssign, Sequence<? extends T> sequence) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        V(minusAssign, sequence);
    }

    @um0
    private static final <T> void L(Collection<? super T> minusAssign, T[] tArr) {
        Csuper.m30700throw(minusAssign, "$this$minusAssign");
        W(minusAssign, tArr);
    }

    @um0
    private static final <T> void M(Collection<? super T> plusAssign, Iterable<? extends T> iterable) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        D(plusAssign, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    private static final <T> void N(Collection<? super T> plusAssign, T t) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        plusAssign.add(t);
    }

    @um0
    private static final <T> void O(Collection<? super T> plusAssign, Sequence<? extends T> sequence) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        E(plusAssign, sequence);
    }

    @um0
    private static final <T> void P(Collection<? super T> plusAssign, T[] tArr) {
        Csuper.m30700throw(plusAssign, "$this$plusAssign");
        F(plusAssign, tArr);
    }

    @um0
    @Cfor(level = Ctry.ERROR, message = "Use removeAt(index) instead.", replaceWith = @an1(expression = "removeAt(index)", imports = {}))
    private static final <T> T Q(List<T> list, int i) {
        return list.remove(i);
    }

    @um0
    private static final <T> boolean R(Collection<? extends T> collection, T t) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return k92.m4305do(collection).remove(t);
    }

    public static final <T> boolean S(@m41 Iterable<? extends T> removeAll, @m41 Function1<? super T, Boolean> predicate) {
        Csuper.m30700throw(removeAll, "$this$removeAll");
        Csuper.m30700throw(predicate, "predicate");
        return G(removeAll, predicate, true);
    }

    public static final <T> boolean T(@m41 Collection<? super T> removeAll, @m41 Iterable<? extends T> elements) {
        Csuper.m30700throw(removeAll, "$this$removeAll");
        Csuper.m30700throw(elements, "elements");
        return k92.m4305do(removeAll).removeAll(Cwhile.o(elements, removeAll));
    }

    @um0
    private static final <T> boolean U(Collection<? extends T> collection, Collection<? extends T> collection2) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return k92.m4305do(collection).removeAll(collection2);
    }

    public static final <T> boolean V(@m41 Collection<? super T> removeAll, @m41 Sequence<? extends T> elements) {
        Csuper.m30700throw(removeAll, "$this$removeAll");
        Csuper.m30700throw(elements, "elements");
        HashSet hashSetH2 = Cclass.h2(elements);
        return (hashSetH2.isEmpty() ^ true) && removeAll.removeAll(hashSetH2);
    }

    public static final <T> boolean W(@m41 Collection<? super T> removeAll, @m41 T[] elements) {
        Csuper.m30700throw(removeAll, "$this$removeAll");
        Csuper.m30700throw(elements, "elements");
        return ((elements.length == 0) ^ true) && removeAll.removeAll(Cclass.jx(elements));
    }

    public static final <T> boolean X(@m41 List<T> removeAll, @m41 Function1<? super T, Boolean> predicate) {
        Csuper.m30700throw(removeAll, "$this$removeAll");
        Csuper.m30700throw(predicate, "predicate");
        return H(removeAll, predicate, true);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static final <T> T Y(@m41 List<T> removeFirst) {
        Csuper.m30700throw(removeFirst, "$this$removeFirst");
        if (removeFirst.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return removeFirst.remove(0);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @z41
    public static final <T> T Z(@m41 List<T> removeFirstOrNull) {
        Csuper.m30700throw(removeFirstOrNull, "$this$removeFirstOrNull");
        if (removeFirstOrNull.isEmpty()) {
            return null;
        }
        return removeFirstOrNull.remove(0);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static <T> T a0(@m41 List<T> removeLast) {
        Csuper.m30700throw(removeLast, "$this$removeLast");
        if (removeLast.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return removeLast.remove(Cthrow.m30197volatile(removeLast));
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @z41
    public static <T> T b0(@m41 List<T> removeLastOrNull) {
        Csuper.m30700throw(removeLastOrNull, "$this$removeLastOrNull");
        if (removeLastOrNull.isEmpty()) {
            return null;
        }
        return removeLastOrNull.remove(Cthrow.m30197volatile(removeLastOrNull));
    }

    public static <T> boolean c0(@m41 Iterable<? extends T> retainAll, @m41 Function1<? super T, Boolean> predicate) {
        Csuper.m30700throw(retainAll, "$this$retainAll");
        Csuper.m30700throw(predicate, "predicate");
        return G(retainAll, predicate, false);
    }

    public static final <T> boolean d0(@m41 Collection<? super T> retainAll, @m41 Iterable<? extends T> elements) {
        Csuper.m30700throw(retainAll, "$this$retainAll");
        Csuper.m30700throw(elements, "elements");
        return k92.m4305do(retainAll).retainAll(Cwhile.o(elements, retainAll));
    }

    @um0
    private static final <T> boolean e0(Collection<? extends T> collection, Collection<? extends T> collection2) {
        Objects.requireNonNull(collection, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
        return k92.m4305do(collection).retainAll(collection2);
    }

    public static final <T> boolean f0(@m41 Collection<? super T> retainAll, @m41 Sequence<? extends T> elements) {
        Csuper.m30700throw(retainAll, "$this$retainAll");
        Csuper.m30700throw(elements, "elements");
        HashSet hashSetH2 = Cclass.h2(elements);
        return hashSetH2.isEmpty() ^ true ? retainAll.retainAll(hashSetH2) : i0(retainAll);
    }

    public static final <T> boolean g0(@m41 Collection<? super T> retainAll, @m41 T[] elements) {
        Csuper.m30700throw(retainAll, "$this$retainAll");
        Csuper.m30700throw(elements, "elements");
        return (elements.length == 0) ^ true ? retainAll.retainAll(Cclass.jx(elements)) : i0(retainAll);
    }

    public static final <T> boolean h0(@m41 List<T> retainAll, @m41 Function1<? super T, Boolean> predicate) {
        Csuper.m30700throw(retainAll, "$this$retainAll");
        Csuper.m30700throw(predicate, "predicate");
        return H(retainAll, predicate, false);
    }

    private static final boolean i0(Collection<?> collection) {
        boolean z = !collection.isEmpty();
        collection.clear();
        return z;
    }
}
