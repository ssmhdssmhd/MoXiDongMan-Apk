package kotlin.collections;

import android.support.v4.dn0;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rd;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wg1;
import android.support.v4.x60;
import android.support.v4.yr0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.comparisons.Cif;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.random.Ctry;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a'\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0012\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000\u001a-\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u00028\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a\u0015\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a\u001f\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\rj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u00028\u0000¢\u0006\u0004\b\u0010\u0010\t\u001a7\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\rj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u00028\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a'\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\b\b\u0000\u0010\u0000*\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a5\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\b\b\u0000\u0010\u0000*\u00020\u00132\u0016\u0010\u0007\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u00000\u0001\"\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0017\u0010\t\u001aC\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0019\u001a\u00020\u00182!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00028\u00000\u001aH\u0087\bø\u0001\u0000\u001aC\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0019\u001a\u00020\u00182!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00028\u00000\u001aH\u0087\bø\u0001\u0000\u001aF\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010!2\u001f\b\u0001\u0010$\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0004\u0012\u00020\"0\u001a¢\u0006\u0002\b#H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001aN\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010!2\u0006\u0010&\u001a\u00020\u00182\u001f\b\u0001\u0010$\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0004\u0012\u00020\"0\u001a¢\u0006\u0002\b#H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a\u0019\u0010)\u001a\u00020(\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\b\u001a,\u0010*\u001a\u00020(\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0002H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a!\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0002H\u0087\b\u001a!\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005H\u0087\b\u001a=\u00101\u001a\u00028\u0001\"\u0010\b\u0000\u0010-*\u0006\u0012\u0002\b\u00030\u0002*\u00028\u0001\"\u0004\b\u0001\u0010.*\u00028\u00002\f\u00100\u001a\b\u0012\u0004\u0012\u00028\u00010/H\u0087\bø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a,\u00104\u001a\u00020(\"\t\b\u0000\u0010\u0000¢\u0006\u0002\b3*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\b\u001a&\u00108\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u0000052\u0006\u00107\u001a\u000206H\u0007\u001a\u001e\u00109\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0000\u001aG\u0010=\u001a\u00020\u0018\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000:*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00052\b\u0010\u0014\u001a\u0004\u0018\u00018\u00002\b\b\u0002\u0010;\u001a\u00020\u00182\b\b\u0002\u0010<\u001a\u00020\u0018¢\u0006\u0004\b=\u0010>\u001aU\u0010B\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0014\u001a\u00028\u00002\u001a\u0010A\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000?j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`@2\b\b\u0002\u0010;\u001a\u00020\u00182\b\b\u0002\u0010<\u001a\u00020\u0018¢\u0006\u0004\bB\u0010C\u001ai\u0010G\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000\"\u000e\b\u0001\u0010D*\b\u0012\u0004\u0012\u00028\u00010:*\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0010E\u001a\u0004\u0018\u00018\u00012\b\b\u0002\u0010;\u001a\u00020\u00182\b\b\u0002\u0010<\u001a\u00020\u00182\u0016\b\u0004\u0010F\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u001aH\u0086\bø\u0001\u0000¢\u0006\u0004\bG\u0010H\u001a>\u0010J\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00052\b\b\u0002\u0010;\u001a\u00020\u00182\b\b\u0002\u0010<\u001a\u00020\u00182\u0012\u0010I\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00180\u001a\u001a'\u0010K\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010;\u001a\u00020\u00182\u0006\u0010<\u001a\u00020\u0018H\u0002¢\u0006\u0004\bK\u0010L\u001a\b\u0010M\u001a\u00020\"H\u0001\u001a\b\u0010N\u001a\u00020\"H\u0001\"\u001b\u0010R\u001a\u00020O*\u0006\u0012\u0002\b\u00030\u00028F@\u0006¢\u0006\u0006\u001a\u0004\bP\u0010Q\"#\u0010U\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00058F@\u0006¢\u0006\u0006\u001a\u0004\bS\u0010T\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006V"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "", "native", "([Ljava/lang/Object;)Ljava/util/Collection;", "", "continue", "elements", "instanceof", "([Ljava/lang/Object;)Ljava/util/List;", "implements", "", "b", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "while", "c", "import", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "", "element", "synchronized", "(Ljava/lang/Object;)Ljava/util/List;", ak.av, "", "size", "Lkotlin/Function1;", "Landroid/support/v4/xb1;", "name", "index", "init", "super", "throw", ExifInterface.LONGITUDE_EAST, "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "private", "capacity", "package", "", "protected", "transient", "e", "f", "C", "R", "Lkotlin/Function0;", "defaultValue", "interface", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Landroid/support/v4/o71;", "abstract", "", "Lkotlin/random/try;", "random", "h", "d", "", "fromIndex", "toIndex", "return", "(Ljava/util/List;Ljava/lang/Comparable;II)I", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "static", "(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;II)I", "K", "key", "selector", "extends", "(Ljava/util/List;Ljava/lang/Comparable;IILkotlin/jvm/functions/Function1;)I", "comparison", "public", "g", "(III)V", "j", ak.aC, "Landroid/support/v4/dn0;", "strictfp", "(Ljava/util/Collection;)Landroid/support/v4/dn0;", "indices", "volatile", "(Ljava/util/List;)I", "lastIndex", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow extends Csuper {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u000e\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00010\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "K", "it", "", "invoke", "(Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.throw$do, reason: invalid class name */
    public static final class Cdo<T> extends yr0 implements Function1<T, Integer> {
        public final /* synthetic */ Comparable $key;
        public final /* synthetic */ Function1 $selector;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Function1 function1, Comparable comparable) {
            super(1);
            this.$selector = function1;
            this.$key = comparable;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final int invoke2(T t) {
            return Cif.m30315else((Comparable) this.$selector.invoke(t), this.$key);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Integer invoke(Object obj) {
            return Integer.valueOf(invoke2((Cdo<T>) obj));
        }
    }

    @m41
    public static <T> List<T> a(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return Cclass.D9(elements);
    }

    @um0
    /* renamed from: abstract, reason: not valid java name */
    private static final <T> boolean m30174abstract(Collection<? extends T> collection, Collection<? extends T> collection2) {
        return collection.containsAll(collection2);
    }

    @iz1(version = "1.1")
    @um0
    private static final <T> List<T> b() {
        return new ArrayList();
    }

    @m41
    public static <T> List<T> c(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new Ccase(elements, true));
    }

    @m41
    /* renamed from: continue, reason: not valid java name */
    public static <T> List<T> m30175continue() {
        return x60.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    public static <T> List<T> d(@m41 List<? extends T> optimizeReadOnlyList) {
        Csuper.m30700throw(optimizeReadOnlyList, "$this$optimizeReadOnlyList");
        int size = optimizeReadOnlyList.size();
        return size != 0 ? size != 1 ? optimizeReadOnlyList : Csuper.m30144catch(optimizeReadOnlyList.get(0)) : m30175continue();
    }

    /* renamed from: default, reason: not valid java name */
    public static /* synthetic */ int m30176default(List list, Object obj, Comparator comparator, int i, int i2, int i3, Object obj2) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = list.size();
        }
        return m30189static(list, obj, comparator, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    private static final <T> Collection<T> e(Collection<? extends T> collection) {
        return collection != 0 ? collection : m30175continue();
    }

    /* renamed from: extends, reason: not valid java name */
    public static final <T, K extends Comparable<? super K>> int m30177extends(@m41 List<? extends T> binarySearchBy, @z41 K k, int i, int i2, @m41 Function1<? super T, ? extends K> selector) {
        Csuper.m30700throw(binarySearchBy, "$this$binarySearchBy");
        Csuper.m30700throw(selector, "selector");
        return m30187public(binarySearchBy, i, i2, new Cdo(selector, k));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    private static final <T> List<T> f(List<? extends T> list) {
        return list != 0 ? list : m30175continue();
    }

    /* renamed from: finally, reason: not valid java name */
    public static /* synthetic */ int m30178finally(List binarySearchBy, Comparable comparable, int i, int i2, Function1 selector, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = binarySearchBy.size();
        }
        Csuper.m30700throw(binarySearchBy, "$this$binarySearchBy");
        Csuper.m30700throw(selector, "selector");
        return m30187public(binarySearchBy, i, i2, new Cdo(selector, comparable));
    }

    private static final void g(int i, int i2, int i3) {
        if (i2 > i3) {
            throw new IllegalArgumentException("fromIndex (" + i2 + ") is greater than toIndex (" + i3 + ").");
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i2 + ") is less than zero.");
        }
        if (i3 <= i) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i3 + ") is greater than size (" + i + ").");
    }

    @m41
    @iz1(version = "1.3")
    public static final <T> List<T> h(@m41 Iterable<? extends T> shuffled, @m41 Ctry random) {
        Csuper.m30700throw(shuffled, "$this$shuffled");
        Csuper.m30700throw(random, "random");
        List<T> listX4 = Cthrows.X4(shuffled);
        Cthrows.e4(listX4, random);
        return listX4;
    }

    @wg1
    @iz1(version = "1.3")
    public static void i() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    @um0
    /* renamed from: implements, reason: not valid java name */
    private static final <T> List<T> m30179implements() {
        return m30175continue();
    }

    @m41
    /* renamed from: import, reason: not valid java name */
    public static final <T> ArrayList<T> m30180import(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return elements.length == 0 ? new ArrayList<>() : new ArrayList<>(new Ccase(elements, true));
    }

    @m41
    /* renamed from: instanceof, reason: not valid java name */
    public static <T> List<T> m30181instanceof(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return elements.length > 0 ? Ccatch.m29987public(elements) : m30175continue();
    }

    /* JADX WARN: Incorrect types in method signature: <C::Ljava/util/Collection<*>;:TR;R:Ljava/lang/Object;>(TC;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @iz1(version = "1.3")
    @um0
    /* renamed from: interface, reason: not valid java name */
    private static final Object m30182interface(Collection collection, Function0 function0) {
        return collection.isEmpty() ? function0.invoke() : collection;
    }

    @wg1
    @iz1(version = "1.3")
    public static void j() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    @m41
    /* renamed from: native, reason: not valid java name */
    public static final <T> Collection<T> m30183native(@m41 T[] asCollection) {
        Csuper.m30700throw(asCollection, "$this$asCollection");
        return new Ccase(asCollection, false);
    }

    @iz1(version = "1.3")
    @um0
    @Cthis
    /* renamed from: package, reason: not valid java name */
    private static final <E> List<E> m30184package(int i, @rd Function1<? super List<E>, ub2> function1) {
        List listM30142break = Csuper.m30142break(i);
        function1.invoke(listM30142break);
        return Csuper.m30147do(listM30142break);
    }

    @iz1(version = "1.3")
    @um0
    @Cthis
    /* renamed from: private, reason: not valid java name */
    private static final <E> List<E> m30185private(@rd Function1<? super List<E>, ub2> function1) {
        List listM30154this = Csuper.m30154this();
        function1.invoke(listM30154this);
        return Csuper.m30147do(listM30154this);
    }

    @um0
    /* renamed from: protected, reason: not valid java name */
    private static final <T> boolean m30186protected(Collection<? extends T> collection) {
        return !collection.isEmpty();
    }

    /* renamed from: public, reason: not valid java name */
    public static final <T> int m30187public(@m41 List<? extends T> binarySearch, int i, int i2, @m41 Function1<? super T, Integer> comparison) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        Csuper.m30700throw(comparison, "comparison");
        g(binarySearch.size(), i, i2);
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int iIntValue = comparison.invoke(binarySearch.get(i4)).intValue();
            if (iIntValue < 0) {
                i = i4 + 1;
            } else {
                if (iIntValue <= 0) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: return, reason: not valid java name */
    public static final <T extends Comparable<? super T>> int m30188return(@m41 List<? extends T> binarySearch, @z41 T t, int i, int i2) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        g(binarySearch.size(), i, i2);
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int iM30315else = Cif.m30315else(binarySearch.get(i4), t);
            if (iM30315else < 0) {
                i = i4 + 1;
            } else {
                if (iM30315else <= 0) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: static, reason: not valid java name */
    public static final <T> int m30189static(@m41 List<? extends T> binarySearch, T t, @m41 Comparator<? super T> comparator, int i, int i2) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        Csuper.m30700throw(comparator, "comparator");
        g(binarySearch.size(), i, i2);
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int iCompare = comparator.compare(binarySearch.get(i4), t);
            if (iCompare < 0) {
                i = i4 + 1;
            } else {
                if (iCompare <= 0) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    @m41
    /* renamed from: strictfp, reason: not valid java name */
    public static dn0 m30190strictfp(@m41 Collection<?> indices) {
        Csuper.m30700throw(indices, "$this$indices");
        return new dn0(0, indices.size() - 1);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: super, reason: not valid java name */
    private static final <T> List<T> m30191super(int i, Function1<? super Integer, ? extends T> function1) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(function1.invoke(Integer.valueOf(i2)));
        }
        return arrayList;
    }

    /* renamed from: switch, reason: not valid java name */
    public static /* synthetic */ int m30192switch(List list, int i, int i2, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = list.size();
        }
        return m30187public(list, i, i2, function1);
    }

    @m41
    /* renamed from: synchronized, reason: not valid java name */
    public static final <T> List<T> m30193synchronized(@z41 T t) {
        return t != null ? Csuper.m30144catch(t) : m30175continue();
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final <T> List<T> m30194throw(int i, Function1<? super Integer, ? extends T> function1) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(function1.invoke(Integer.valueOf(i2)));
        }
        return arrayList;
    }

    /* renamed from: throws, reason: not valid java name */
    public static /* synthetic */ int m30195throws(List list, Comparable comparable, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = list.size();
        }
        return m30188return(list, comparable, i, i2);
    }

    @iz1(version = "1.3")
    @um0
    /* renamed from: transient, reason: not valid java name */
    private static final <T> boolean m30196transient(Collection<? extends T> collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T> int m30197volatile(@m41 List<? extends T> lastIndex) {
        Csuper.m30700throw(lastIndex, "$this$lastIndex");
        return lastIndex.size() - 1;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: while, reason: not valid java name */
    private static final <T> ArrayList<T> m30198while() {
        return new ArrayList<>();
    }
}
