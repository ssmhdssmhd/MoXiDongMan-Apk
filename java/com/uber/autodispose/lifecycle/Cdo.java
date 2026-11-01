package com.uber.autodispose.lifecycle;

import android.support.v4.a51;
import android.support.v4.g91;
import android.support.v4.i5;
import android.support.v4.np;
import android.support.v4.xs0;
import android.support.v4.ys0;
import com.uber.autodispose.lifecycle.Cdo;
import io.reactivex.Cnew;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.Comparator;

/* renamed from: com.uber.autodispose.lifecycle.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Comparator<Comparable<Object>> f20779do = new Comparator() { // from class: android.support.v4.ct0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo((Comparable) obj2);
        }
    };

    private Cdo() {
        throw new InstantiationError();
    }

    /* renamed from: case, reason: not valid java name */
    public static <E> CompletableSource m24615case(LifecycleScopeProvider<E> lifecycleScopeProvider, boolean z) throws Exception {
        E ePeekLifecycle = lifecycleScopeProvider.peekLifecycle();
        CorrespondingEventsFunction<E> correspondingEventsFunctionCorrespondingEvents = lifecycleScopeProvider.correspondingEvents();
        if (ePeekLifecycle == null) {
            throw new ys0();
        }
        try {
            return m24617else(lifecycleScopeProvider.lifecycle(), correspondingEventsFunctionCorrespondingEvents.apply(ePeekLifecycle));
        } catch (Exception e) {
            if (!z || !(e instanceof xs0)) {
                return np.m5299instanceof(e);
            }
            Consumer<? super g91> consumerM3269for = i5.m3269for();
            if (consumerM3269for == null) {
                throw e;
            }
            try {
                consumerM3269for.accept((xs0) e);
                return np.m5304super();
            } catch (Exception e2) {
                return np.m5299instanceof(e2);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static <E> CompletableSource m24617else(Cnew<E> cnew, E e) {
        return m24619goto(cnew, e, e instanceof Comparable ? f20779do : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ boolean m24618for(Comparator comparator, Object obj, Object obj2) throws Exception {
        return comparator.compare(obj2, obj) >= 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static <E> CompletableSource m24619goto(Cnew<E> cnew, final E e, @a51 final Comparator<E> comparator) {
        return cnew.skip(1L).takeUntil(comparator != null ? new Predicate() { // from class: android.support.v4.bt0
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return Cdo.m24618for(comparator, e, obj);
            }
        } : new Predicate() { // from class: android.support.v4.at0
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return Cdo.m24621new(e, obj);
            }
        }).ignoreElements();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ boolean m24621new(Object obj, Object obj2) throws Exception {
        return obj2.equals(obj);
    }

    /* renamed from: try, reason: not valid java name */
    public static <E> CompletableSource m24622try(LifecycleScopeProvider<E> lifecycleScopeProvider) throws g91 {
        return m24615case(lifecycleScopeProvider, true);
    }
}
