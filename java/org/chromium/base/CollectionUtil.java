package org.chromium.base;

import android.util.Pair;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.antlr.v4.runtime.atn.Ccatch;

/* loaded from: classes3.dex */
public final class CollectionUtil {
    private CollectionUtil() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SafeVarargs
    /* renamed from: case, reason: not valid java name */
    public static <K, V> HashMap<K, V> m36757case(Pair<? extends K, ? extends V>... pairArr) {
        Ccatch.Cdo cdo = (HashMap<K, V>) new HashMap();
        for (Pair<? extends K, ? extends V> pair : pairArr) {
            cdo.put(pair.first, pair.second);
        }
        return cdo;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean[] m36758do(@NonNull List<Boolean> list) {
        boolean[] zArr = new boolean[list.size()];
        for (int i = 0; i < list.size(); i++) {
            zArr[i] = list.get(i).booleanValue();
        }
        return zArr;
    }

    @SafeVarargs
    /* renamed from: else, reason: not valid java name */
    public static <E> HashSet<E> m36759else(E... eArr) {
        HashSet<E> hashSet = new HashSet<>(eArr.length);
        Collections.addAll(hashSet, eArr);
        return hashSet;
    }

    /* renamed from: for, reason: not valid java name */
    public static <K, V> void m36760for(Map<? extends K, ? extends V> map, Callback<Map.Entry<K, V>> callback) {
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            callback.onResult(it.next());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> List<T> m36761goto(Collection<WeakReference<T>> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<WeakReference<T>> it = collection.iterator();
        while (it.hasNext()) {
            T t = it.next().get();
            if (t == null) {
                it.remove();
            } else {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> void m36762if(Collection<? extends T> collection, Callback<T> callback) {
        Iterator<? extends T> it = collection.iterator();
        while (it.hasNext()) {
            callback.onResult(it.next());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int[] m36763new(@NonNull List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static long[] m36764try(@NonNull List<Long> list) {
        long[] jArr = new long[list.size()];
        for (int i = 0; i < list.size(); i++) {
            jArr[i] = list.get(i).longValue();
        }
        return jArr;
    }
}
