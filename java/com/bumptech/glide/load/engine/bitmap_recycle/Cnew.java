package com.bumptech.glide.load.engine.bitmap_recycle;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew<K extends Poolable, V> {

    /* renamed from: do, reason: not valid java name */
    private final Cdo<K, V> f9667do = new Cdo<>();

    /* renamed from: if, reason: not valid java name */
    private final Map<K, Cdo<K, V>> f9668if = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.new$do, reason: invalid class name */
    public static class Cdo<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f9669do;

        /* renamed from: for, reason: not valid java name */
        public Cdo<K, V> f9670for;

        /* renamed from: if, reason: not valid java name */
        private List<V> f9671if;

        /* renamed from: new, reason: not valid java name */
        public Cdo<K, V> f9672new;

        public Cdo() {
            this(null);
        }

        /* renamed from: do, reason: not valid java name */
        public void m11415do(V v) {
            if (this.f9671if == null) {
                this.f9671if = new ArrayList();
            }
            this.f9671if.add(v);
        }

        /* renamed from: for, reason: not valid java name */
        public int m11416for() {
            List<V> list = this.f9671if;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Nullable
        /* renamed from: if, reason: not valid java name */
        public V m11417if() {
            int iM11416for = m11416for();
            if (iM11416for > 0) {
                return this.f9671if.remove(iM11416for - 1);
            }
            return null;
        }

        public Cdo(K k) {
            this.f9672new = this;
            this.f9670for = this;
            this.f9669do = k;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static <K, V> void m11408else(Cdo<K, V> cdo) {
        cdo.f9670for.f9672new = cdo;
        cdo.f9672new.f9670for = cdo;
    }

    /* renamed from: for, reason: not valid java name */
    private void m11409for(Cdo<K, V> cdo) {
        m11411try(cdo);
        Cdo<K, V> cdo2 = this.f9667do;
        cdo.f9672new = cdo2.f9672new;
        cdo.f9670for = cdo2;
        m11408else(cdo);
    }

    /* renamed from: if, reason: not valid java name */
    private void m11410if(Cdo<K, V> cdo) {
        m11411try(cdo);
        Cdo<K, V> cdo2 = this.f9667do;
        cdo.f9672new = cdo2;
        cdo.f9670for = cdo2.f9670for;
        m11408else(cdo);
    }

    /* renamed from: try, reason: not valid java name */
    private static <K, V> void m11411try(Cdo<K, V> cdo) {
        Cdo<K, V> cdo2 = cdo.f9672new;
        cdo2.f9670for = cdo.f9670for;
        cdo.f9670for.f9672new = cdo2;
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    public V m11412case() {
        for (Cdo cdo = this.f9667do.f9672new; !cdo.equals(this.f9667do); cdo = cdo.f9672new) {
            V v = (V) cdo.m11417if();
            if (v != null) {
                return v;
            }
            m11411try(cdo);
            this.f9668if.remove(cdo.f9669do);
            ((Poolable) cdo.f9669do).offer();
        }
        return null;
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public V m11413do(K k) {
        Cdo<K, V> cdo = this.f9668if.get(k);
        if (cdo == null) {
            cdo = new Cdo<>(k);
            this.f9668if.put(k, cdo);
        } else {
            k.offer();
        }
        m11410if(cdo);
        return cdo.m11417if();
    }

    /* renamed from: new, reason: not valid java name */
    public void m11414new(K k, V v) {
        Cdo<K, V> cdo = this.f9668if.get(k);
        if (cdo == null) {
            cdo = new Cdo<>(k);
            m11409for(cdo);
            this.f9668if.put(k, cdo);
        } else {
            k.offer();
        }
        cdo.m11415do(v);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (Cdo cdo = this.f9667do.f9670for; !cdo.equals(this.f9667do); cdo = cdo.f9670for) {
            z = true;
            sb.append(MessageFormatter.DELIM_START);
            sb.append(cdo.f9669do);
            sb.append(':');
            sb.append(cdo.m11416for());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
