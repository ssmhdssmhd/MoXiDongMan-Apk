package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelAdapter;
import freemarker.template.TemplateModelIterator;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: freemarker.ext.beans.return, reason: invalid class name */
/* loaded from: classes.dex */
public class Creturn extends AbstractMap implements TemplateModelAdapter {

    /* renamed from: do, reason: not valid java name */
    private final Ctry f24607do;

    /* renamed from: for, reason: not valid java name */
    private Set f24608for;

    /* renamed from: if, reason: not valid java name */
    private final TemplateHashModel f24609if;

    /* renamed from: freemarker.ext.beans.return$do, reason: invalid class name */
    public class Cdo extends AbstractSet {

        /* renamed from: freemarker.ext.beans.return$do$do, reason: invalid class name and collision with other inner class name */
        public class C0251do implements Iterator {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ TemplateModelIterator f24611do;

            /* renamed from: freemarker.ext.beans.return$do$do$do, reason: invalid class name and collision with other inner class name */
            public class C0252do implements Map.Entry {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Object f24613do;

                public C0252do(Object obj) {
                    this.f24613do = obj;
                }

                @Override // java.util.Map.Entry
                public boolean equals(Object obj) {
                    if (!(obj instanceof Map.Entry)) {
                        return false;
                    }
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = getKey();
                    Object key2 = entry.getKey();
                    if (key == key2 || (key != null && key.equals(key2))) {
                        Object value = getValue();
                        Object value2 = entry.getValue();
                        if (value == value2) {
                            return true;
                        }
                        if (value != null && value.equals(value2)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // java.util.Map.Entry
                public Object getKey() {
                    return this.f24613do;
                }

                @Override // java.util.Map.Entry
                public Object getValue() {
                    return Creturn.this.get(this.f24613do);
                }

                @Override // java.util.Map.Entry
                public int hashCode() {
                    Object value = getValue();
                    Object obj = this.f24613do;
                    return (obj == null ? 0 : obj.hashCode()) ^ (value != null ? value.hashCode() : 0);
                }

                @Override // java.util.Map.Entry
                public Object setValue(Object obj) {
                    throw new UnsupportedOperationException();
                }
            }

            public C0251do(TemplateModelIterator templateModelIterator) {
                this.f24611do = templateModelIterator;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                try {
                    return this.f24611do.hasNext();
                } catch (k52 e) {
                    throw new kb2(e);
                }
            }

            @Override // java.util.Iterator
            public Object next() {
                try {
                    return new C0252do(Creturn.this.f24607do.unwrap(this.f24611do.next()));
                } catch (k52 e) {
                    throw new kb2(e);
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public Cdo() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            try {
                return new C0251do(Creturn.this.m28673for().keys().iterator());
            } catch (k52 e) {
                throw new kb2(e);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            try {
                return Creturn.this.m28673for().size();
            } catch (k52 e) {
                throw new kb2(e);
            }
        }
    }

    public Creturn(TemplateHashModel templateHashModel, Ctry ctry) {
        this.f24609if = templateHashModel;
        this.f24607do = ctry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public TemplateHashModelEx m28673for() {
        TemplateHashModel templateHashModel = this.f24609if;
        if (templateHashModel instanceof TemplateHashModelEx) {
            return (TemplateHashModelEx) templateHashModel;
        }
        throw new UnsupportedOperationException("Operation supported only on TemplateHashModelEx. " + this.f24609if.getClass().getName() + " does not implement it though.");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return super.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        Set set = this.f24608for;
        if (set != null) {
            return set;
        }
        Cdo cdo = new Cdo();
        this.f24608for = cdo;
        return cdo;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        try {
            return this.f24607do.unwrap(this.f24609if.get(String.valueOf(obj)));
        } catch (k52 e) {
            throw new kb2(e);
        }
    }

    @Override // freemarker.template.TemplateModelAdapter
    public TemplateModel getTemplateModel() {
        return this.f24609if;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        try {
            return this.f24609if.isEmpty();
        } catch (k52 e) {
            throw new kb2(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        try {
            return m28673for().size();
        } catch (k52 e) {
            throw new kb2(e);
        }
    }
}
