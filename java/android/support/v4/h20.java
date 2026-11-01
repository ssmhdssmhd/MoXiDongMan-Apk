package android.support.v4;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class h20<Key1, Key2, Value> {

    /* renamed from: do, reason: not valid java name */
    public Map<Key1, Map<Key2, Value>> f2304do = new LinkedHashMap();

    /* renamed from: case, reason: not valid java name */
    public Collection<Value> m2876case(Key1 key1) {
        Map<Key2, Value> map = this.f2304do.get(key1);
        if (map == null) {
            return null;
        }
        return map.values();
    }

    /* renamed from: do, reason: not valid java name */
    public Value m2877do(Key1 key1, Key2 key2) {
        Map<Key2, Value> map = this.f2304do.get(key1);
        if (map == null) {
            return null;
        }
        return map.get(key2);
    }

    /* renamed from: for, reason: not valid java name */
    public Set<Key1> m2878for() {
        return this.f2304do.keySet();
    }

    /* renamed from: if, reason: not valid java name */
    public Map<Key2, Value> m2879if(Key1 key1) {
        return this.f2304do.get(key1);
    }

    /* renamed from: new, reason: not valid java name */
    public Set<Key2> m2880new(Key1 key1) {
        Map<Key2, Value> map = this.f2304do.get(key1);
        if (map == null) {
            return null;
        }
        return map.keySet();
    }

    /* renamed from: try, reason: not valid java name */
    public Value m2881try(Key1 key1, Key2 key2, Value value) {
        Value value2;
        Map<Key2, Value> linkedHashMap = this.f2304do.get(key1);
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>();
            this.f2304do.put(key1, linkedHashMap);
            value2 = null;
        } else {
            value2 = linkedHashMap.get(key2);
        }
        linkedHashMap.put(key2, value);
        return value2;
    }
}
