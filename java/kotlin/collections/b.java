package kotlin.collections;

import android.support.v4.iz1;
import android.support.v4.jx1;
import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wg1;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a7\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a?\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\f2\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0005H\u0001\u001a\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\fH\u0001\u001a\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0001\u001a-\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u00002\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0013\"\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001aI\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u00002\u001a\u0010\u001a\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u0018j\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u00192\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0013\"\u00028\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "element", "", "case", "(Ljava/lang/Object;)Ljava/util/Set;", ExifInterface.LONGITUDE_EAST, "Lkotlin/Function1;", "", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "for", "", "capacity", "if", "new", "try", "builder", "do", "", "elements", "Ljava/util/TreeSet;", "goto", "([Ljava/lang/Object;)Ljava/util/TreeSet;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "else", "(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/SetsKt")
/* loaded from: classes3.dex */
class b {
    @m41
    /* renamed from: case, reason: not valid java name */
    public static <T> Set<T> m29861case(T t) {
        Set<T> setSingleton = Collections.singleton(t);
        Csuper.m30696super(setSingleton, "java.util.Collections.singleton(element)");
        return setSingleton;
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: do, reason: not valid java name */
    public static final <E> Set<E> m29862do(@m41 Set<E> builder) {
        Csuper.m30700throw(builder, "builder");
        return ((jx1) builder).m4125if();
    }

    @m41
    /* renamed from: else, reason: not valid java name */
    public static final <T> TreeSet<T> m29863else(@m41 Comparator<? super T> comparator, @m41 T... elements) {
        Csuper.m30700throw(comparator, "comparator");
        Csuper.m30700throw(elements, "elements");
        return (TreeSet) Cclass.Yw(elements, new TreeSet(comparator));
    }

    @um0
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: for, reason: not valid java name */
    private static final <E> Set<E> m29864for(Function1<? super Set<E>, ub2> function1) {
        Set setM29867new = m29867new();
        function1.invoke(setM29867new);
        return m29862do(setM29867new);
    }

    @m41
    /* renamed from: goto, reason: not valid java name */
    public static final <T> TreeSet<T> m29865goto(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        return (TreeSet) Cclass.Yw(elements, new TreeSet());
    }

    @um0
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: if, reason: not valid java name */
    private static final <E> Set<E> m29866if(int i, Function1<? super Set<E>, ub2> function1) {
        Set setM29868try = m29868try(i);
        function1.invoke(setM29868try);
        return m29862do(setM29868try);
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: new, reason: not valid java name */
    public static final <E> Set<E> m29867new() {
        return new jx1();
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: try, reason: not valid java name */
    public static final <E> Set<E> m29868try(int i) {
        return new jx1(i);
    }
}
