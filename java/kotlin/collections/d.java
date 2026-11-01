package kotlin.collections;

import android.support.v4.m41;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a.\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a6\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005H\u0086\u0002¢\u0006\u0004\b\u0007\u0010\b\u001a-\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0086\u0002\u001a-\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\u0002\u001a.\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\r\u0010\u0004\u001a.\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u000e\u0010\u0004\u001a6\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005H\u0086\u0002¢\u0006\u0004\b\u000f\u0010\b\u001a-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0086\u0002\u001a-\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\u0002\u001a.\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0004¨\u0006\u0013"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "element", "default", "(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;", "", "elements", "finally", "(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;", "", "throws", "Lkotlin/sequences/Sequence;", "extends", "package", "abstract", "strictfp", "private", "continue", "volatile", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/SetsKt")
/* loaded from: classes3.dex */
class d extends c {
    @m41
    /* renamed from: abstract, reason: not valid java name */
    public static final <T> Set<T> m30034abstract(@m41 Set<? extends T> plus, T t) {
        Csuper.m30700throw(plus, "$this$plus");
        LinkedHashSet linkedHashSet = new LinkedHashSet(Cvolatile.m30270break(plus.size() + 1));
        linkedHashSet.addAll(plus);
        linkedHashSet.add(t);
        return linkedHashSet;
    }

    @m41
    /* renamed from: continue, reason: not valid java name */
    public static final <T> Set<T> m30035continue(@m41 Set<? extends T> plus, @m41 Sequence<? extends T> elements) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(Cvolatile.m30270break(plus.size() * 2));
        linkedHashSet.addAll(plus);
        Creturn.E(linkedHashSet, elements);
        return linkedHashSet;
    }

    @m41
    /* renamed from: default, reason: not valid java name */
    public static final <T> Set<T> m30036default(@m41 Set<? extends T> minus, T t) {
        Csuper.m30700throw(minus, "$this$minus");
        LinkedHashSet linkedHashSet = new LinkedHashSet(Cvolatile.m30270break(minus.size()));
        boolean z = false;
        for (T t2 : minus) {
            boolean z2 = true;
            if (!z && Csuper.m30676else(t2, t)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(t2);
            }
        }
        return linkedHashSet;
    }

    @m41
    /* renamed from: extends, reason: not valid java name */
    public static final <T> Set<T> m30037extends(@m41 Set<? extends T> minus, @m41 Sequence<? extends T> elements) {
        Csuper.m30700throw(minus, "$this$minus");
        Csuper.m30700throw(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(minus);
        Creturn.V(linkedHashSet, elements);
        return linkedHashSet;
    }

    @m41
    /* renamed from: finally, reason: not valid java name */
    public static final <T> Set<T> m30038finally(@m41 Set<? extends T> minus, @m41 T[] elements) {
        Csuper.m30700throw(minus, "$this$minus");
        Csuper.m30700throw(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(minus);
        Creturn.W(linkedHashSet, elements);
        return linkedHashSet;
    }

    @um0
    /* renamed from: package, reason: not valid java name */
    private static final <T> Set<T> m30039package(Set<? extends T> set, T t) {
        return m30036default(set, t);
    }

    @m41
    /* renamed from: private, reason: not valid java name */
    public static final <T> Set<T> m30040private(@m41 Set<? extends T> plus, @m41 Iterable<? extends T> elements) {
        int size;
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(elements, "elements");
        Integer numM = Cwhile.m(elements);
        if (numM != null) {
            size = plus.size() + numM.intValue();
        } else {
            size = plus.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(Cvolatile.m30270break(size));
        linkedHashSet.addAll(plus);
        Creturn.D(linkedHashSet, elements);
        return linkedHashSet;
    }

    @m41
    /* renamed from: strictfp, reason: not valid java name */
    public static final <T> Set<T> m30041strictfp(@m41 Set<? extends T> plus, @m41 T[] elements) {
        Csuper.m30700throw(plus, "$this$plus");
        Csuper.m30700throw(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(Cvolatile.m30270break(plus.size() + elements.length));
        linkedHashSet.addAll(plus);
        Creturn.F(linkedHashSet, elements);
        return linkedHashSet;
    }

    @m41
    /* renamed from: throws, reason: not valid java name */
    public static final <T> Set<T> m30042throws(@m41 Set<? extends T> minus, @m41 Iterable<? extends T> elements) {
        Csuper.m30700throw(minus, "$this$minus");
        Csuper.m30700throw(elements, "elements");
        Collection<?> collectionO = Cwhile.o(elements, minus);
        if (collectionO.isEmpty()) {
            return Cthrows.a5(minus);
        }
        if (!(collectionO instanceof Set)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(minus);
            linkedHashSet.removeAll(collectionO);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (T t : minus) {
            if (!collectionO.contains(t)) {
                linkedHashSet2.add(t);
            }
        }
        return linkedHashSet2;
    }

    @um0
    /* renamed from: volatile, reason: not valid java name */
    private static final <T> Set<T> m30043volatile(Set<? extends T> set, T t) {
        return m30034abstract(set, t);
    }
}
