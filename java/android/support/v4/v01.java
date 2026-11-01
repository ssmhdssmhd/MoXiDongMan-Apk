package android.support.v4;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class v01<K, V> extends LinkedHashMap<K, List<V>> {
    public List<ob1<K, V>> getPairs() {
        ArrayList arrayList = new ArrayList();
        for (K k : keySet()) {
            Iterator it = ((List) get(k)).iterator();
            while (it.hasNext()) {
                arrayList.add(new ob1(k, it.next()));
            }
        }
        return arrayList;
    }

    public void map(K k, V v) {
        List arrayList = (List) get(k);
        if (arrayList == null) {
            arrayList = new ArrayList();
            super.put(k, arrayList);
        }
        arrayList.add(v);
    }
}
