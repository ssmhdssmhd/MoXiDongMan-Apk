package freemarker.cache;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

/* renamed from: freemarker.cache.break, reason: invalid class name */
/* loaded from: classes.dex */
public class Cbreak implements CacheStorageWithGetSize {

    /* renamed from: case, reason: not valid java name */
    private final int f23293case;

    /* renamed from: do, reason: not valid java name */
    private final Cdo f23294do;

    /* renamed from: else, reason: not valid java name */
    private int f23295else;

    /* renamed from: for, reason: not valid java name */
    private final Map f23296for;

    /* renamed from: goto, reason: not valid java name */
    private int f23297goto;

    /* renamed from: if, reason: not valid java name */
    private final Cdo f23298if;

    /* renamed from: new, reason: not valid java name */
    private final ReferenceQueue f23299new;

    /* renamed from: try, reason: not valid java name */
    private final int f23300try;

    /* renamed from: freemarker.cache.break$if, reason: invalid class name */
    public static class Cif extends SoftReference {

        /* renamed from: do, reason: not valid java name */
        private final Object f23305do;

        public Cif(Cdo cdo, ReferenceQueue referenceQueue) {
            super(cdo.m27647for(), referenceQueue);
            this.f23305do = cdo.m27645do();
        }

        /* renamed from: do, reason: not valid java name */
        public Object m27651do() {
            return this.f23305do;
        }
    }

    public Cbreak(int i, int i2) {
        Cdo cdo = new Cdo();
        this.f23294do = cdo;
        Cdo cdo2 = new Cdo();
        this.f23298if = cdo2;
        cdo2.m27649new(cdo);
        this.f23296for = new HashMap();
        this.f23299new = new ReferenceQueue();
        this.f23295else = 0;
        this.f23297goto = 0;
        if (i < 0) {
            throw new IllegalArgumentException("strongSizeLimit < 0");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("softSizeLimit < 0");
        }
        this.f23300try = i;
        this.f23293case = i2;
    }

    /* renamed from: case, reason: not valid java name */
    private void m27635case(Cdo cdo, Object obj) {
        if (!m27638this(cdo) || obj != null) {
            if (obj != null) {
                cdo.m27644case(obj);
            }
            m27639try(cdo);
            return;
        }
        Cif cif = (Cif) cdo.m27647for();
        Object obj2 = cif.get();
        if (obj2 == null) {
            this.f23296for.remove(cif.m27651do());
        } else {
            cdo.m27644case(obj2);
            m27639try(cdo);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m27636else() {
        while (true) {
            Cif cif = (Cif) this.f23299new.poll();
            if (cif == null) {
                return;
            } else {
                m27637goto(cif.m27651do());
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m27637goto(Object obj) {
        Cdo cdo = (Cdo) this.f23296for.remove(obj);
        if (cdo != null) {
            m27638this(cdo);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m27638this(Cdo cdo) {
        cdo.m27646else();
        if (cdo.m27647for() instanceof Cif) {
            this.f23297goto--;
            return true;
        }
        this.f23295else--;
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    private void m27639try(Cdo cdo) {
        cdo.m27649new(this.f23294do);
        int i = this.f23295else;
        if (i != this.f23300try) {
            this.f23295else = i + 1;
            return;
        }
        Cdo cdoM27648if = this.f23298if.m27648if();
        if (cdoM27648if != this.f23294do) {
            cdoM27648if.m27646else();
            if (this.f23293case <= 0) {
                this.f23296for.remove(cdoM27648if.m27645do());
                return;
            }
            cdoM27648if.m27649new(this.f23298if);
            cdoM27648if.m27644case(new Cif(cdoM27648if, this.f23299new));
            int i2 = this.f23297goto;
            if (i2 != this.f23293case) {
                this.f23297goto = i2 + 1;
                return;
            }
            Cdo cdoM27648if2 = this.f23294do.m27648if();
            cdoM27648if2.m27646else();
            this.f23296for.remove(cdoM27648if2.m27645do());
        }
    }

    @Override // freemarker.cache.CacheStorage
    public void clear() {
        this.f23294do.m27650try();
        this.f23298if.m27649new(this.f23294do);
        this.f23296for.clear();
        this.f23297goto = 0;
        this.f23295else = 0;
        while (this.f23299new.poll() != null) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m27640do() {
        m27636else();
        return this.f23297goto;
    }

    /* renamed from: for, reason: not valid java name */
    public int m27641for() {
        return this.f23295else;
    }

    @Override // freemarker.cache.CacheStorage
    public Object get(Object obj) {
        m27636else();
        Cdo cdo = (Cdo) this.f23296for.get(obj);
        if (cdo == null) {
            return null;
        }
        m27635case(cdo, null);
        Object objM27647for = cdo.m27647for();
        return objM27647for instanceof Cif ? ((Cif) objM27647for).get() : objM27647for;
    }

    @Override // freemarker.cache.CacheStorageWithGetSize
    public int getSize() {
        return m27640do() + m27641for();
    }

    /* renamed from: if, reason: not valid java name */
    public int m27642if() {
        return this.f23293case;
    }

    /* renamed from: new, reason: not valid java name */
    public int m27643new() {
        return this.f23300try;
    }

    @Override // freemarker.cache.CacheStorage
    public void put(Object obj, Object obj2) {
        m27636else();
        Cdo cdo = (Cdo) this.f23296for.get(obj);
        if (cdo != null) {
            m27635case(cdo, obj2);
            return;
        }
        Cdo cdo2 = new Cdo(obj, obj2);
        this.f23296for.put(obj, cdo2);
        m27639try(cdo2);
    }

    @Override // freemarker.cache.CacheStorage
    public void remove(Object obj) {
        m27636else();
        m27637goto(obj);
    }

    /* renamed from: freemarker.cache.break$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        private Cdo f23301do;

        /* renamed from: for, reason: not valid java name */
        private final Object f23302for;

        /* renamed from: if, reason: not valid java name */
        private Cdo f23303if;

        /* renamed from: new, reason: not valid java name */
        private Object f23304new;

        public Cdo() {
            m27650try();
            this.f23304new = null;
            this.f23302for = null;
        }

        /* renamed from: case, reason: not valid java name */
        public void m27644case(Object obj) {
            this.f23304new = obj;
        }

        /* renamed from: do, reason: not valid java name */
        public Object m27645do() {
            return this.f23302for;
        }

        /* renamed from: else, reason: not valid java name */
        public void m27646else() {
            Cdo cdo = this.f23303if;
            cdo.f23301do = this.f23301do;
            this.f23301do.f23303if = cdo;
            this.f23301do = null;
            this.f23303if = null;
        }

        /* renamed from: for, reason: not valid java name */
        public Object m27647for() {
            return this.f23304new;
        }

        /* renamed from: if, reason: not valid java name */
        public Cdo m27648if() {
            return this.f23301do;
        }

        /* renamed from: new, reason: not valid java name */
        public void m27649new(Cdo cdo) {
            this.f23303if = cdo.f23303if;
            cdo.f23303if = this;
            this.f23301do = cdo;
            this.f23303if.f23301do = this;
        }

        /* renamed from: try, reason: not valid java name */
        public void m27650try() {
            this.f23303if = this;
            this.f23301do = this;
        }

        public Cdo(Object obj, Object obj2) {
            this.f23302for = obj;
            this.f23304new = obj2;
        }
    }
}
