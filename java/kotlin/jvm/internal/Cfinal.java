package kotlin.jvm.internal;

import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import com.umeng.analytics.pro.ak;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.mozilla.javascript.optimizer.OptRuntime;

@wp0(name = "CollectionToArray")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a5\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u00002\u0010\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u0080\u0001\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u00002\u0014\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\t2\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u000b2(\u0010\u000f\u001a$\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0004\u0012\u00020\f\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u000eH\u0082\b¢\u0006\u0004\b\u0010\u0010\u0011\"\u001e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012\"\u0016\u0010\u0015\u001a\u00020\f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014¨\u0006\u0016"}, d2 = {"", "collection", "", "", "do", "(Ljava/util/Collection;)[Ljava/lang/Object;", ak.av, "if", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "Lkotlin/Function0;", "empty", "Lkotlin/Function1;", "", "alloc", "Lkotlin/Function2;", "trim", "for", "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;", "[Ljava/lang/Object;", "EMPTY", OptRuntime.GeneratorState.resumptionPoint_TYPE, "MAX_SIZE", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal {

    /* renamed from: do, reason: not valid java name */
    private static final Object[] f27883do = new Object[0];

    /* renamed from: if, reason: not valid java name */
    private static final int f27884if = 2147483645;

    @m41
    @wp0(name = "toArray")
    /* renamed from: do, reason: not valid java name */
    public static final Object[] m30663do(@m41 Collection<?> collection) {
        Csuper.m30700throw(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArrCopyOf = new Object[size];
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    objArrCopyOf[i] = it.next();
                    if (i2 >= objArrCopyOf.length) {
                        if (!it.hasNext()) {
                            return objArrCopyOf;
                        }
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        if (i3 <= i2) {
                            if (i2 >= f27884if) {
                                throw new OutOfMemoryError();
                            }
                            i3 = f27884if;
                        }
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                        Csuper.m30696super(objArrCopyOf, "Arrays.copyOf(result, newSize)");
                    } else if (!it.hasNext()) {
                        Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i2);
                        Csuper.m30696super(objArrCopyOf2, "Arrays.copyOf(result, size)");
                        return objArrCopyOf2;
                    }
                    i = i2;
                }
            }
        }
        return f27883do;
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* renamed from: for, reason: not valid java name */
    private static final Object[] m30664for(Collection<?> collection, Function0<Object[]> function0, Function1<? super Integer, Object[]> function1, Function2<? super Object[], ? super Integer, Object[]> function2) {
        int size = collection.size();
        if (size == 0) {
            return function0.invoke();
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return function0.invoke();
        }
        Object[] objArrInvoke = function1.invoke(Integer.valueOf(size));
        int i = 0;
        ?? CopyOf = objArrInvoke;
        while (true) {
            int i2 = i + 1;
            CopyOf[i] = it.next();
            if (i2 >= CopyOf.length) {
                if (!it.hasNext()) {
                    return CopyOf;
                }
                int i3 = ((i2 * 3) + 1) >>> 1;
                if (i3 <= i2) {
                    if (i2 >= f27884if) {
                        throw new OutOfMemoryError();
                    }
                    i3 = f27884if;
                }
                CopyOf = Arrays.copyOf((Object[]) CopyOf, i3);
                Csuper.m30696super(CopyOf, "Arrays.copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                return function2.invoke(CopyOf, Integer.valueOf(i2));
            }
            i = i2;
            CopyOf = CopyOf;
        }
    }

    @m41
    @wp0(name = "toArray")
    /* renamed from: if, reason: not valid java name */
    public static final Object[] m30665if(@m41 Collection<?> collection, @z41 Object[] objArr) throws NegativeArraySizeException {
        Object[] objArrCopyOf;
        Csuper.m30700throw(collection, "collection");
        Objects.requireNonNull(objArr);
        int size = collection.size();
        int i = 0;
        if (size == 0) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length <= 0) {
                return objArr;
            }
            objArr[0] = null;
            return objArr;
        }
        if (size <= objArr.length) {
            objArrCopyOf = objArr;
        } else {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            Objects.requireNonNull(objNewInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf = (Object[]) objNewInstance;
        }
        while (true) {
            int i2 = i + 1;
            objArrCopyOf[i] = it.next();
            if (i2 >= objArrCopyOf.length) {
                if (!it.hasNext()) {
                    return objArrCopyOf;
                }
                int i3 = ((i2 * 3) + 1) >>> 1;
                if (i3 <= i2) {
                    if (i2 >= f27884if) {
                        throw new OutOfMemoryError();
                    }
                    i3 = f27884if;
                }
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
                Csuper.m30696super(objArrCopyOf, "Arrays.copyOf(result, newSize)");
            } else if (!it.hasNext()) {
                if (objArrCopyOf == objArr) {
                    objArr[i2] = null;
                    return objArr;
                }
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, i2);
                Csuper.m30696super(objArrCopyOf2, "Arrays.copyOf(result, size)");
                return objArrCopyOf2;
            }
            i = i2;
        }
    }
}
