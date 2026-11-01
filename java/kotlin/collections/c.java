package kotlin.collections;

import android.support.v4.a70;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rd;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u0012\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000\u001a-\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a-\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\n\u0010\u0006\u001a\u001f\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000bj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a7\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000bj\b\u0012\u0004\u0012\u00028\u0000`\f\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001f\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0010j\b\u0012\u0004\u0012\u00028\u0000`\u0011\"\u0004\b\u0000\u0010\u0000H\u0087\b\u001a7\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0010j\b\u0012\u0004\u0012\u00028\u0000`\u0011\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0003\"\u00028\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a)\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\u0000*\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00018\u0000H\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u001a7\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\u0000*\u00020\u00152\u0016\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u00000\u0003\"\u0004\u0018\u00018\u0000H\u0007¢\u0006\u0004\b\u0019\u0010\u0006\u001aF\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u001a2\u001f\b\u0001\u0010\u001e\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0004\u0012\u00020\u001c0\u001b¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001aN\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u001a2\u0006\u0010!\u001a\u00020 2\u001f\b\u0001\u0010\u001e\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0004\u0012\u00020\u001c0\u001b¢\u0006\u0002\b\u001dH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a!\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0001H\u0087\b\u001a\u001e\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "catch", "", "elements", "return", "([Ljava/lang/Object;)Ljava/util/Set;", "public", "", "throw", "while", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "class", "const", "([Ljava/lang/Object;)Ljava/util/HashSet;", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "final", "super", "([Ljava/lang/Object;)Ljava/util/LinkedHashSet;", "", "element", "static", "(Ljava/lang/Object;)Ljava/util/Set;", "switch", ExifInterface.LONGITUDE_EAST, "Lkotlin/Function1;", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "break", "", "capacity", "this", "native", "import", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/SetsKt")
/* loaded from: classes3.dex */
public class c extends b {
    @iz1(version = "1.3")
    @um0
    @Cthis
    /* renamed from: break, reason: not valid java name */
    private static final <E> Set<E> m29955break(@rd Function1<? super Set<E>, ub2> function1) {
        Set setM29867new = b.m29867new();
        function1.invoke(setM29867new);
        return b.m29862do(setM29867new);
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public static <T> Set<T> m29956catch() {
        return a70.INSTANCE;
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: class, reason: not valid java name */
    private static final <T> HashSet<T> m29957class() {
        return new HashSet<>();
    }

    @m41
    /* renamed from: const, reason: not valid java name */
    public static final <T> HashSet<T> m29958const(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return (HashSet) Cclass.Yw(elements, new HashSet(Cvolatile.m30270break(elements.length)));
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: final, reason: not valid java name */
    private static final <T> LinkedHashSet<T> m29959final() {
        return new LinkedHashSet<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    /* renamed from: import, reason: not valid java name */
    public static <T> Set<T> m29960import(@m41 Set<? extends T> optimizeReadOnlySet) {
        Csuper.m30700throw(optimizeReadOnlySet, "$this$optimizeReadOnlySet");
        int size = optimizeReadOnlySet.size();
        return size != 0 ? size != 1 ? optimizeReadOnlySet : b.m29861case(optimizeReadOnlySet.iterator().next()) : m29956catch();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @um0
    /* renamed from: native, reason: not valid java name */
    private static final <T> Set<T> m29961native(Set<? extends T> set) {
        return set != 0 ? set : m29956catch();
    }

    @um0
    /* renamed from: public, reason: not valid java name */
    private static final <T> Set<T> m29962public() {
        return m29956catch();
    }

    @m41
    /* renamed from: return, reason: not valid java name */
    public static final <T> Set<T> m29963return(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return elements.length > 0 ? Cclass.Vx(elements) : m29956catch();
    }

    @m41
    @iz1(version = "1.4")
    /* renamed from: static, reason: not valid java name */
    public static final <T> Set<T> m29964static(@z41 T t) {
        return t != null ? b.m29861case(t) : m29956catch();
    }

    @m41
    /* renamed from: super, reason: not valid java name */
    public static final <T> LinkedHashSet<T> m29965super(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return (LinkedHashSet) Cclass.Yw(elements, new LinkedHashSet(Cvolatile.m30270break(elements.length)));
    }

    @m41
    @iz1(version = "1.4")
    /* renamed from: switch, reason: not valid java name */
    public static final <T> Set<T> m29966switch(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return (Set) Cclass.E9(elements, new LinkedHashSet());
    }

    @iz1(version = "1.3")
    @um0
    @Cthis
    /* renamed from: this, reason: not valid java name */
    private static final <E> Set<E> m29967this(int i, @rd Function1<? super Set<E>, ub2> function1) {
        Set setM29868try = b.m29868try(i);
        function1.invoke(setM29868try);
        return b.m29862do(setM29868try);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final <T> Set<T> m29968throw() {
        return new LinkedHashSet();
    }

    @m41
    /* renamed from: while, reason: not valid java name */
    public static final <T> Set<T> m29969while(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return (Set) Cclass.Yw(elements, new LinkedHashSet(Cvolatile.m30270break(elements.length)));
    }
}
