package freemarker.cache;

import android.support.v4.kb2;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: freemarker.cache.throw, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthrow implements ConcurrentCacheStorage, CacheStorageWithGetSize {

    /* renamed from: new, reason: not valid java name */
    private static final Method f23399new = m27768do();

    /* renamed from: do, reason: not valid java name */
    private final ReferenceQueue f23400do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f23401for;

    /* renamed from: if, reason: not valid java name */
    private final Map f23402if;

    /* renamed from: freemarker.cache.throw$do, reason: invalid class name */
    public static final class Cdo extends SoftReference {

        /* renamed from: do, reason: not valid java name */
        private final Object f23403do;

        public Cdo(Object obj, Object obj2, ReferenceQueue referenceQueue) {
            super(obj2, referenceQueue);
            this.f23403do = obj;
        }

        /* renamed from: do, reason: not valid java name */
        public Object m27770do() {
            return this.f23403do;
        }
    }

    public Cthrow() {
        this(new ConcurrentHashMap());
    }

    /* renamed from: do, reason: not valid java name */
    private static Method m27768do() {
        try {
            return Class.forName("java.util.concurrent.ConcurrentMap").getMethod("remove", Object.class, Object.class);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new kb2(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m27769if() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        while (true) {
            Cdo cdo = (Cdo) this.f23400do.poll();
            if (cdo == null) {
                return;
            }
            Object objM27770do = cdo.m27770do();
            if (this.f23401for) {
                try {
                    f23399new.invoke(this.f23402if, objM27770do, cdo);
                } catch (IllegalAccessException e) {
                    throw new kb2(e);
                } catch (InvocationTargetException e2) {
                    throw new kb2(e2);
                }
            } else if (this.f23402if.get(objM27770do) == cdo) {
                this.f23402if.remove(objM27770do);
            }
        }
    }

    @Override // freemarker.cache.CacheStorage
    public void clear() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.f23402if.clear();
        m27769if();
    }

    @Override // freemarker.cache.CacheStorage
    public Object get(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m27769if();
        Reference reference = (Reference) this.f23402if.get(obj);
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    @Override // freemarker.cache.CacheStorageWithGetSize
    public int getSize() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m27769if();
        return this.f23402if.size();
    }

    @Override // freemarker.cache.ConcurrentCacheStorage
    public boolean isConcurrent() {
        return this.f23401for;
    }

    @Override // freemarker.cache.CacheStorage
    public void put(Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m27769if();
        this.f23402if.put(obj, new Cdo(obj, obj2, this.f23400do));
    }

    @Override // freemarker.cache.CacheStorage
    public void remove(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m27769if();
        this.f23402if.remove(obj);
    }

    public Cthrow(Map map) {
        this.f23400do = new ReferenceQueue();
        this.f23402if = map;
        this.f23401for = map instanceof ConcurrentMap;
    }
}
