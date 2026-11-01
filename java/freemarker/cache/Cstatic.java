package freemarker.cache;

import android.support.v4.w41;
import freemarker.core.k;

/* renamed from: freemarker.cache.static, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cstatic {

    /* renamed from: freemarker.cache.static$for, reason: invalid class name */
    public static final class Cfor extends Cstatic {

        /* renamed from: do, reason: not valid java name */
        private final String f23393do;

        /* renamed from: if, reason: not valid java name */
        private final Object f23394if;

        @Override // freemarker.cache.Cstatic
        /* renamed from: for */
        public Object mo27763for() {
            return this.f23394if;
        }

        @Override // freemarker.cache.Cstatic
        /* renamed from: new */
        public String mo27764new() {
            return this.f23393do;
        }

        @Override // freemarker.cache.Cstatic
        /* renamed from: try */
        public boolean mo27765try() {
            return true;
        }

        private Cfor(String str, Object obj) {
            super();
            w41.check(k.f23921break, str);
            w41.check("templateSource", obj);
            if (obj instanceof Cstatic) {
                throw new IllegalArgumentException();
            }
            this.f23393do = str;
            this.f23394if = obj;
        }
    }

    /* renamed from: freemarker.cache.static$if, reason: invalid class name */
    public static final class Cif extends Cstatic {

        /* renamed from: do, reason: not valid java name */
        private static final Cif f23395do = new Cif();

        private Cif() {
            super();
        }

        @Override // freemarker.cache.Cstatic
        /* renamed from: for */
        public Object mo27763for() {
            return null;
        }

        @Override // freemarker.cache.Cstatic
        /* renamed from: new */
        public String mo27764new() {
            return null;
        }

        @Override // freemarker.cache.Cstatic
        /* renamed from: try */
        public boolean mo27765try() {
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cstatic m27761do() {
        return Cif.f23395do;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cstatic m27762if(String str, Object obj) {
        return obj != null ? new Cfor(str, obj) : m27761do();
    }

    /* renamed from: for, reason: not valid java name */
    public abstract Object mo27763for();

    /* renamed from: new, reason: not valid java name */
    public abstract String mo27764new();

    /* renamed from: try, reason: not valid java name */
    public abstract boolean mo27765try();

    private Cstatic() {
    }
}
