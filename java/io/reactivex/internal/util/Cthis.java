package io.reactivex.internal.util;

import io.reactivex.functions.BiFunction;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* renamed from: io.reactivex.internal.util.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> implements BiFunction<List<T>, List<T>, List<T>> {

    /* renamed from: do, reason: not valid java name */
    public final Comparator<? super T> f27443do;

    public Cthis(Comparator<? super T> comparator) {
        this.f27443do = comparator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0037, code lost:
    
        r3 = null;
     */
    @Override // io.reactivex.functions.BiFunction
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<T> apply(List<T> list, List<T> list2) throws Exception {
        T next;
        int size = list.size() + list2.size();
        if (size == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator<T> it = list.iterator();
        Iterator<T> it2 = list2.iterator();
        T next2 = it.hasNext() ? it.next() : null;
        if (it2.hasNext()) {
            next = it2.next();
            while (next2 != null && next != null) {
                if (this.f27443do.compare(next2, next) < 0) {
                    arrayList.add(next2);
                    next2 = it.hasNext() ? it.next() : null;
                } else {
                    arrayList.add(next);
                    if (it2.hasNext()) {
                        next = it2.next();
                    }
                }
            }
            if (next2 != null) {
                arrayList.add(next2);
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            } else {
                arrayList.add(next);
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
            return arrayList;
        }
        next = null;
    }
}
