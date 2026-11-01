package javax.script;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes3.dex */
public class SimpleBindings implements Bindings {
    private Map<String, Object> map;

    public SimpleBindings(Map<String, Object> map) {
        Objects.requireNonNull(map);
        this.map = map;
    }

    private void checkKey(Object obj) {
        Objects.requireNonNull(obj, "key can not be null");
        if (!(obj instanceof String)) {
            throw new ClassCastException("key should be a String");
        }
        if (obj.equals("")) {
            throw new IllegalArgumentException("key can not be empty");
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    @Override // javax.script.Bindings, java.util.Map
    public boolean containsKey(Object obj) {
        checkKey(obj);
        return this.map.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.map.entrySet();
    }

    @Override // javax.script.Bindings, java.util.Map
    public Object get(Object obj) {
        checkKey(obj);
        return this.map.get(obj);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.map.keySet();
    }

    @Override // javax.script.Bindings, java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        Objects.requireNonNull(map, "toMerge map is null");
        for (Map.Entry<? extends String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            checkKey(key);
            put(key, entry.getValue());
        }
    }

    @Override // javax.script.Bindings, java.util.Map
    public Object remove(Object obj) {
        checkKey(obj);
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.map.values();
    }

    @Override // java.util.Map
    public Object put(String str, Object obj) {
        checkKey(str);
        return this.map.put(str, obj);
    }

    public SimpleBindings() {
        this(new HashMap());
    }
}
