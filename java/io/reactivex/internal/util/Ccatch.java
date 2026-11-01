package io.reactivex.internal.util;

import io.reactivex.functions.Function;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* renamed from: io.reactivex.internal.util.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T> implements Function<List<T>, List<T>> {

    /* renamed from: do, reason: not valid java name */
    public final Comparator<? super T> f27436do;

    public Ccatch(Comparator<? super T> comparator) {
        this.f27436do = comparator;
    }

    @Override // io.reactivex.functions.Function
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public List<T> apply(List<T> list) throws Exception {
        Collections.sort(list, this.f27436do);
        return list;
    }
}
