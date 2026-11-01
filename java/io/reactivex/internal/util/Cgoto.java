package io.reactivex.internal.util;

import io.reactivex.functions.BiFunction;
import java.util.List;

/* renamed from: io.reactivex.internal.util.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public enum Cgoto implements BiFunction<List, Object, List> {
    INSTANCE;

    public static <T> BiFunction<List<T>, T, List<T>> instance() {
        return INSTANCE;
    }

    @Override // io.reactivex.functions.BiFunction
    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
