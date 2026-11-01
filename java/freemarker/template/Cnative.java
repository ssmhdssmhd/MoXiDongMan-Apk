package freemarker.template;

import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.ext.beans.Ctry;
import freemarker.template.TemplateHashModelEx2;
import java.io.Serializable;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* renamed from: freemarker.template.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative extends Cthrows implements TemplateHashModelEx2, Serializable {
    private final Map map;
    private boolean putFailed;
    private Map unwrappedMap;

    /* renamed from: freemarker.template.native$if, reason: invalid class name */
    public class Cif extends Cnative {
        private Cif() {
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            TemplateModel templateModel;
            synchronized (Cnative.this) {
                templateModel = Cnative.this.get(str);
            }
            return templateModel;
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (Cnative.this) {
                zIsEmpty = Cnative.this.isEmpty();
            }
            return zIsEmpty;
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx2
        public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() {
            TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator;
            synchronized (Cnative.this) {
                keyValuePairIterator = Cnative.this.keyValuePairIterator();
            }
            return keyValuePairIterator;
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() {
            TemplateCollectionModel templateCollectionModelKeys;
            synchronized (Cnative.this) {
                templateCollectionModelKeys = Cnative.this.keys();
            }
            return templateCollectionModelKeys;
        }

        @Override // freemarker.template.Cnative
        public void put(String str, Object obj) {
            synchronized (Cnative.this) {
                Cnative.this.put(str, obj);
            }
        }

        @Override // freemarker.template.Cnative
        public void remove(String str) {
            synchronized (Cnative.this) {
                Cnative.this.remove(str);
            }
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx
        public int size() {
            int size;
            synchronized (Cnative.this) {
                size = Cnative.this.size();
            }
            return size;
        }

        @Override // freemarker.template.Cnative
        public Map toMap() throws k52 {
            Map map;
            synchronized (Cnative.this) {
                map = Cnative.this.toMap();
            }
            return map;
        }

        @Override // freemarker.template.Cnative, freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() {
            TemplateCollectionModel templateCollectionModelValues;
            synchronized (Cnative.this) {
                templateCollectionModelValues = Cnative.this.values();
            }
            return templateCollectionModelValues;
        }
    }

    @Deprecated
    public Cnative() {
        this((ObjectWrapper) null);
    }

    public boolean containsKey(String str) {
        return this.map.containsKey(str);
    }

    public Map copyMap(Map map) {
        return map instanceof HashMap ? (Map) ((HashMap) map).clone() : map instanceof SortedMap ? map instanceof TreeMap ? (Map) ((TreeMap) map).clone() : new TreeMap((SortedMap) map) : new HashMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Character, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.Map] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TemplateModel get(String str) throws k52 {
        Object obj;
        String str2;
        try {
            Object obj2 = this.map.get(str);
            if (obj2 == null) {
                if (str.length() != 1 || (this.map instanceof SortedMap)) {
                    obj = obj2;
                } else {
                    ?? ValueOf = Character.valueOf(str.charAt(0));
                    try {
                        obj = this.map.get(ValueOf);
                        str2 = ValueOf;
                        if (obj == null) {
                            boolean zContainsKey = this.map.containsKey(ValueOf);
                            str2 = ValueOf;
                            if (!zContainsKey) {
                            }
                        }
                        if (str2 == null) {
                            str = str2;
                        } else if (!this.map.containsKey(str)) {
                            return null;
                        }
                        obj2 = obj;
                    } catch (ClassCastException e) {
                        throw new vl2(e, "ClassCastException while getting Map entry with Character key ", new fl2(str));
                    } catch (NullPointerException e2) {
                        throw new vl2(e2, "NullPointerException while getting Map entry with Character key ", new fl2(str));
                    }
                }
                str2 = null;
                if (str2 == null) {
                }
                obj2 = obj;
            }
            if (obj2 instanceof TemplateModel) {
                return (TemplateModel) obj2;
            }
            TemplateModel templateModelWrap = wrap(obj2);
            if (!this.putFailed) {
                try {
                    this.map.put(str, templateModelWrap);
                } catch (Exception unused) {
                    this.putFailed = true;
                }
            }
            return templateModelWrap;
        } catch (ClassCastException e3) {
            throw new vl2(e3, "ClassCastException while getting Map entry with String key ", new fl2(str));
        } catch (NullPointerException e4) {
            throw new vl2(e4, "NullPointerException while getting Map entry with String key ", new fl2(str));
        }
    }

    public boolean isEmpty() {
        Map map = this.map;
        return map == null || map.isEmpty();
    }

    public TemplateHashModelEx2.KeyValuePairIterator keyValuePairIterator() {
        return new Cthrow(this.map, getObjectWrapper());
    }

    public TemplateCollectionModel keys() {
        return new Cimport((Collection) this.map.keySet(), getObjectWrapper());
    }

    public void put(String str, Object obj) {
        this.map.put(str, obj);
        this.unwrappedMap = null;
    }

    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put((String) entry.getKey(), entry.getValue());
        }
    }

    public void remove(String str) {
        this.map.remove(str);
    }

    public int size() {
        return this.map.size();
    }

    public Cnative synchronizedWrapper() {
        return new Cif();
    }

    public Map toMap() throws k52 {
        if (this.unwrappedMap == null) {
            Class<?> cls = this.map.getClass();
            try {
                Map map = (Map) cls.newInstance();
                Ctry ctryM28685super = Ctry.m28685super();
                for (Map.Entry entry : this.map.entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof TemplateModel) {
                        value = ctryM28685super.unwrap((TemplateModel) value);
                    }
                    map.put(key, value);
                }
                this.unwrappedMap = map;
            } catch (Exception e) {
                throw new k52("Error instantiating map of type " + cls.getName() + "\n" + e.getMessage());
            }
        }
        return this.unwrappedMap;
    }

    public String toString() {
        return this.map.toString();
    }

    public TemplateCollectionModel values() {
        return new Cimport(this.map.values(), getObjectWrapper());
    }

    @Deprecated
    public Cnative(Map map) {
        this(map, null);
    }

    public Cnative(ObjectWrapper objectWrapper) {
        super(objectWrapper);
        this.map = new HashMap();
    }

    public void put(String str, boolean z) {
        put(str, z ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE);
    }

    public Cnative(Map map, ObjectWrapper objectWrapper) throws InterruptedException {
        Map mapCopyMap;
        super(objectWrapper);
        try {
            mapCopyMap = copyMap(map);
        } catch (ConcurrentModificationException unused) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused2) {
            }
            synchronized (map) {
                mapCopyMap = copyMap(map);
            }
        }
        this.map = mapCopyMap;
    }
}
