package android.support.v4;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

@Deprecated
/* loaded from: classes3.dex */
public class y60 implements Map, Cloneable {

    /* renamed from: do, reason: not valid java name */
    public static final y60 f8142do = new y60();

    @Override // java.util.Map
    public void clear() {
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public Set entrySet() {
        return Collections.EMPTY_SET;
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return null;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public Set keySet() {
        return Collections.EMPTY_SET;
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("This Map is read-only.");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        if (map.entrySet().iterator().hasNext()) {
            throw new UnsupportedOperationException("This Map is read-only.");
        }
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return null;
    }

    @Override // java.util.Map
    public int size() {
        return 0;
    }

    @Override // java.util.Map
    public Collection values() {
        return Collections.EMPTY_LIST;
    }
}
