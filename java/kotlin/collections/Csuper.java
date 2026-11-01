package kotlin.collections;

import android.support.v4.ae1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wg1;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.collections.builders.Cdo;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Cfinal;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a7\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a?\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\f2\u001d\u0010\n\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0081\bø\u0001\u0000\u001a\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0005H\u0001\u001a\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00052\u0006\u0010\r\u001a\u00020\fH\u0001\u001a\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0001\u001a\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0013H\u0087\b\u001a\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0007\u001a&\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0007\u001a$\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c2\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0081\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a6\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c\"\u0004\b\u0000\u0010\u00002\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001a2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0081\b¢\u0006\u0004\b!\u0010\"\u001a3\u0010%\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001d0\u001c\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u001c2\u0006\u0010$\u001a\u00020#H\u0000¢\u0006\u0004\b%\u0010&\u001a\u0011\u0010(\u001a\u00020\f2\u0006\u0010'\u001a\u00020\fH\u0081\b\u001a\u0011\u0010*\u001a\u00020\f2\u0006\u0010)\u001a\u00020\fH\u0081\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006+"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "element", "", "catch", "(Ljava/lang/Object;)Ljava/util/List;", ExifInterface.LONGITUDE_EAST, "Lkotlin/Function1;", "", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "for", "", "capacity", "if", "this", "break", "builder", "do", "Ljava/util/Enumeration;", "final", "", "class", "Ljava/util/Random;", "random", "const", "", "collection", "", "", "case", "(Ljava/util/Collection;)[Ljava/lang/Object;", "array", "else", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "", "isVarargs", "goto", "([Ljava/lang/Object;Z)[Ljava/lang/Object;", "index", "try", "count", "new", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/CollectionsKt")
/* renamed from: kotlin.collections.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper {
    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: break, reason: not valid java name */
    public static final <E> List<E> m30142break(int i) {
        return new Cdo(i);
    }

    @um0
    /* renamed from: case, reason: not valid java name */
    private static final Object[] m30143case(Collection<?> collection) {
        return Cfinal.m30663do(collection);
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public static <T> List<T> m30144catch(T t) {
        List<T> listSingletonList = Collections.singletonList(t);
        kotlin.jvm.internal.Csuper.m30696super(listSingletonList, "java.util.Collections.singletonList(element)");
        return listSingletonList;
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: class, reason: not valid java name */
    public static final <T> List<T> m30145class(@m41 Iterable<? extends T> shuffled) {
        kotlin.jvm.internal.Csuper.m30700throw(shuffled, "$this$shuffled");
        List<T> listX4 = Cthrows.X4(shuffled);
        Collections.shuffle(listX4);
        return listX4;
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: const, reason: not valid java name */
    public static final <T> List<T> m30146const(@m41 Iterable<? extends T> shuffled, @m41 Random random) {
        kotlin.jvm.internal.Csuper.m30700throw(shuffled, "$this$shuffled");
        kotlin.jvm.internal.Csuper.m30700throw(random, "random");
        List<T> listX4 = Cthrows.X4(shuffled);
        Collections.shuffle(listX4, random);
        return listX4;
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: do, reason: not valid java name */
    public static final <E> List<E> m30147do(@m41 List<E> builder) {
        kotlin.jvm.internal.Csuper.m30700throw(builder, "builder");
        return ((Cdo) builder).m29892catch();
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final <T> T[] m30148else(Collection<?> collection, T[] tArr) {
        Objects.requireNonNull(tArr, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        T[] tArr2 = (T[]) Cfinal.m30665if(collection, tArr);
        Objects.requireNonNull(tArr2, "null cannot be cast to non-null type kotlin.Array<T>");
        return tArr2;
    }

    @um0
    /* renamed from: final, reason: not valid java name */
    private static final <T> List<T> m30149final(Enumeration<T> enumeration) {
        ArrayList list = Collections.list(enumeration);
        kotlin.jvm.internal.Csuper.m30696super(list, "java.util.Collections.list(this)");
        return list;
    }

    @um0
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: for, reason: not valid java name */
    private static final <E> List<E> m30150for(Function1<? super List<E>, ub2> function1) {
        List listM30154this = m30154this();
        function1.invoke(listM30154this);
        return m30147do(listM30154this);
    }

    @m41
    /* renamed from: goto, reason: not valid java name */
    public static final <T> Object[] m30151goto(@m41 T[] copyToArrayOfAny, boolean z) {
        kotlin.jvm.internal.Csuper.m30700throw(copyToArrayOfAny, "$this$copyToArrayOfAny");
        if (z && kotlin.jvm.internal.Csuper.m30676else(copyToArrayOfAny.getClass(), Object[].class)) {
            return copyToArrayOfAny;
        }
        Object[] objArrCopyOf = Arrays.copyOf(copyToArrayOfAny, copyToArrayOfAny.length, Object[].class);
        kotlin.jvm.internal.Csuper.m30696super(objArrCopyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
        return objArrCopyOf;
    }

    @um0
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: if, reason: not valid java name */
    private static final <E> List<E> m30152if(int i, Function1<? super List<E>, ub2> function1) {
        List listM30142break = m30142break(i);
        function1.invoke(listM30142break);
        return m30147do(listM30142break);
    }

    @wg1
    @iz1(version = "1.3")
    @um0
    /* renamed from: new, reason: not valid java name */
    private static final int m30153new(int i) {
        if (i < 0) {
            if (!ae1.m186do(1, 3, 0)) {
                throw new ArithmeticException("Count overflow has happened.");
            }
            Cthrow.i();
        }
        return i;
    }

    @m41
    @wg1
    @iz1(version = "1.3")
    @Cthis
    /* renamed from: this, reason: not valid java name */
    public static final <E> List<E> m30154this() {
        return new Cdo();
    }

    @wg1
    @iz1(version = "1.3")
    @um0
    /* renamed from: try, reason: not valid java name */
    private static final int m30155try(int i) {
        if (i < 0) {
            if (!ae1.m186do(1, 3, 0)) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            Cthrow.j();
        }
        return i;
    }
}
