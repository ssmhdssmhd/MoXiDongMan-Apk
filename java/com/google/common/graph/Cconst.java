package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.base.Function;
import com.google.common.collect.s1;
import com.google.common.collect.v0;
import com.google.common.graph.Cwhile;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.google.common.graph.const, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cconst<N, V> implements GraphConnections<N, V> {

    /* renamed from: try, reason: not valid java name */
    private static final Object f14979try = new Object();

    /* renamed from: do, reason: not valid java name */
    private final Map<N, Object> f14980do;

    /* renamed from: for, reason: not valid java name */
    private int f14981for;

    /* renamed from: if, reason: not valid java name */
    @b51
    private final List<Cthis<N>> f14982if;

    /* renamed from: new, reason: not valid java name */
    private int f14983new;

    /* renamed from: com.google.common.graph.const$break, reason: invalid class name */
    public static final class Cbreak {

        /* renamed from: do, reason: not valid java name */
        private final Object f14984do;

        public Cbreak(Object obj) {
            this.f14984do = obj;
        }
    }

    /* renamed from: com.google.common.graph.const$case, reason: invalid class name */
    public class Ccase implements Function<Cthis<N>, Cimport<N>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f14985do;

        public Ccase(Object obj) {
            this.f14985do = obj;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> apply(Cthis<N> cthis) {
            return cthis instanceof Cthis.Cif ? Cimport.m16768goto(this.f14985do, cthis.f15007do) : Cimport.m16768goto(cthis.f15007do, this.f14985do);
        }
    }

    /* renamed from: com.google.common.graph.const$do, reason: invalid class name */
    public class Cdo extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.const$do$do, reason: invalid class name and collision with other inner class name */
        public class C0115do extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14988for;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ Set f14989new;

            public C0115do(Iterator it, Set set) {
                this.f14988for = it;
                this.f14989new = set;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                while (this.f14988for.hasNext()) {
                    Cthis cthis = (Cthis) this.f14988for.next();
                    if (this.f14989new.add(cthis.f15007do)) {
                        return cthis.f15007do;
                    }
                }
                return m15805if();
            }
        }

        public Cdo() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return Cconst.this.f14980do.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<N> iterator() {
            return new C0115do(Cconst.this.f14982if.iterator(), new HashSet());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cconst.this.f14980do.size();
        }
    }

    /* renamed from: com.google.common.graph.const$else, reason: invalid class name */
    public class Celse extends com.google.common.collect.Cfor<Cimport<N>> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Iterator f14991for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f14992new;

        public Celse(Iterator it, AtomicBoolean atomicBoolean) {
            this.f14991for = it;
            this.f14992new = atomicBoolean;
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> mo15521do() {
            while (this.f14991for.hasNext()) {
                Cimport<N> cimport = (Cimport) this.f14991for.next();
                if (!cimport.m16773new().equals(cimport.m16775try()) || !this.f14992new.getAndSet(true)) {
                    return cimport;
                }
            }
            return m15805if();
        }
    }

    /* renamed from: com.google.common.graph.const$for, reason: invalid class name */
    public class Cfor extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.const$for$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14995for;

            public Cdo(Iterator it) {
                this.f14995for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                while (this.f14995for.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f14995for.next();
                    if (Cconst.m16682goto(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return m15805if();
            }
        }

        /* renamed from: com.google.common.graph.const$for$if, reason: invalid class name */
        public class Cif extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f14997for;

            public Cif(Iterator it) {
                this.f14997for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                while (this.f14997for.hasNext()) {
                    Cthis cthis = (Cthis) this.f14997for.next();
                    if (cthis instanceof Cthis.Cif) {
                        return cthis.f15007do;
                    }
                }
                return m15805if();
            }
        }

        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return Cconst.m16682goto(Cconst.this.f14980do.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<N> iterator() {
            return Cconst.this.f14982if == null ? new Cdo(Cconst.this.f14980do.entrySet().iterator()) : new Cif(Cconst.this.f14982if.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cconst.this.f14983new;
        }
    }

    /* renamed from: com.google.common.graph.const$goto, reason: invalid class name */
    public static /* synthetic */ class Cgoto {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f14999do;

        static {
            int[] iArr = new int[Cwhile.Cif.values().length];
            f14999do = iArr;
            try {
                iArr[Cwhile.Cif.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14999do[Cwhile.Cif.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.graph.const$if, reason: invalid class name */
    public class Cif extends AbstractSet<N> {

        /* renamed from: com.google.common.graph.const$if$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f15001for;

            public Cdo(Iterator it) {
                this.f15001for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                while (this.f15001for.hasNext()) {
                    Map.Entry entry = (Map.Entry) this.f15001for.next();
                    if (Cconst.m16680else(entry.getValue())) {
                        return (N) entry.getKey();
                    }
                }
                return m15805if();
            }
        }

        /* renamed from: com.google.common.graph.const$if$if, reason: invalid class name and collision with other inner class name */
        public class C0116if extends com.google.common.collect.Cfor<N> {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Iterator f15003for;

            public C0116if(Iterator it) {
                this.f15003for = it;
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: do */
            public N mo15521do() {
                while (this.f15003for.hasNext()) {
                    Cthis cthis = (Cthis) this.f15003for.next();
                    if (cthis instanceof Cthis.Cdo) {
                        return cthis.f15007do;
                    }
                }
                return m15805if();
            }
        }

        public Cif() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return Cconst.m16680else(Cconst.this.f14980do.get(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ac2<N> iterator() {
            return Cconst.this.f14982if == null ? new Cdo(Cconst.this.f14980do.entrySet().iterator()) : new C0116if(Cconst.this.f14982if.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cconst.this.f14981for;
        }
    }

    /* renamed from: com.google.common.graph.const$new, reason: invalid class name */
    public class Cnew implements Function<N, Cimport<N>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f15005do;

        public Cnew(Object obj) {
            this.f15005do = obj;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> apply(N n) {
            return Cimport.m16768goto(n, this.f15005do);
        }
    }

    /* renamed from: com.google.common.graph.const$this, reason: invalid class name */
    public static abstract class Cthis<N> {

        /* renamed from: do, reason: not valid java name */
        public final N f15007do;

        /* renamed from: com.google.common.graph.const$this$do, reason: invalid class name */
        public static final class Cdo<N> extends Cthis<N> {
            public Cdo(N n) {
                super(n);
            }

            public boolean equals(Object obj) {
                if (obj instanceof Cdo) {
                    return this.f15007do.equals(((Cdo) obj).f15007do);
                }
                return false;
            }

            public int hashCode() {
                return Cdo.class.hashCode() + this.f15007do.hashCode();
            }
        }

        /* renamed from: com.google.common.graph.const$this$if, reason: invalid class name */
        public static final class Cif<N> extends Cthis<N> {
            public Cif(N n) {
                super(n);
            }

            public boolean equals(Object obj) {
                if (obj instanceof Cif) {
                    return this.f15007do.equals(((Cif) obj).f15007do);
                }
                return false;
            }

            public int hashCode() {
                return Cif.class.hashCode() + this.f15007do.hashCode();
            }
        }

        public Cthis(N n) {
            this.f15007do = (N) af1.m205continue(n);
        }
    }

    /* renamed from: com.google.common.graph.const$try, reason: invalid class name */
    public class Ctry implements Function<N, Cimport<N>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f15008do;

        public Ctry(Object obj) {
            this.f15008do = obj;
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cimport<N> apply(N n) {
            return Cimport.m16768goto(this.f15008do, n);
        }
    }

    private Cconst(Map<N, Object> map, @b51 List<Cthis<N>> list, int i, int i2) {
        this.f14980do = (Map) af1.m205continue(map);
        this.f14982if = list;
        this.f14981for = Cdefault.m16707if(i);
        this.f14983new = Cdefault.m16707if(i2);
        af1.t(i <= map.size() && i2 <= map.size());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    public static <N, V> Cconst<N, V> m16677break(N n, Iterable<Cimport<N>> iterable, Function<N, V> function) {
        HashMap map = new HashMap();
        v0.Cdo cdoBuilder = v0.builder();
        int i = 0;
        int i2 = 0;
        for (Cimport<N> cimport : iterable) {
            if (cimport.m16773new().equals(n) && cimport.m16775try().equals(n)) {
                map.put(n, new Cbreak(function.apply(n)));
                cdoBuilder.mo15635do(new Cthis.Cdo(n));
                cdoBuilder.mo15635do(new Cthis.Cif(n));
                i++;
            } else if (cimport.m16775try().equals(n)) {
                N nM16773new = cimport.m16773new();
                Object objPut = map.put(nM16773new, f14979try);
                if (objPut != null) {
                    map.put(nM16773new, new Cbreak(objPut));
                }
                cdoBuilder.mo15635do(new Cthis.Cdo(nM16773new));
                i++;
            } else {
                af1.m220new(cimport.m16773new().equals(n));
                N nM16775try = cimport.m16775try();
                V vApply = function.apply(nM16775try);
                Object objPut2 = map.put(nM16775try, vApply);
                if (objPut2 != null) {
                    af1.m220new(objPut2 == f14979try);
                    map.put(nM16775try, new Cbreak(vApply));
                }
                cdoBuilder.mo15635do(new Cthis.Cif(nM16775try));
            }
            i2++;
        }
        return new Cconst<>(map, cdoBuilder.mo15642try(), i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static boolean m16680else(@b51 Object obj) {
        return obj == f14979try || (obj instanceof Cbreak);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static boolean m16682goto(@b51 Object obj) {
        return (obj == f14979try || obj == null) ? false : true;
    }

    /* renamed from: this, reason: not valid java name */
    public static <N, V> Cconst<N, V> m16685this(Cwhile<N> cwhile) {
        ArrayList arrayList;
        int i = Cgoto.f14999do[cwhile.m16864goto().ordinal()];
        if (i == 1) {
            arrayList = null;
        } else {
            if (i != 2) {
                throw new AssertionError(cwhile.m16864goto());
            }
            arrayList = new ArrayList();
        }
        return new Cconst<>(new HashMap(4, 1.0f), arrayList, 0, 0);
    }

    @Override // com.google.common.graph.GraphConnections
    public void addPredecessor(N n, V v) {
        Map<N, Object> map = this.f14980do;
        Object obj = f14979try;
        Object objPut = map.put(n, obj);
        boolean z = false;
        if (objPut == null) {
            z = true;
        } else if (objPut instanceof Cbreak) {
            this.f14980do.put(n, objPut);
        } else if (objPut != obj) {
            this.f14980do.put(n, new Cbreak(objPut));
            z = true;
        }
        if (z) {
            int i = this.f14981for + 1;
            this.f14981for = i;
            Cdefault.m16710new(i);
            List<Cthis<N>> list = this.f14982if;
            if (list != null) {
                list.add(new Cthis.Cdo(n));
            }
        }
    }

    @Override // com.google.common.graph.GraphConnections
    public V addSuccessor(N n, V v) {
        Object obj = (V) this.f14980do.put(n, v);
        if (obj == null) {
            obj = (V) null;
        } else if (obj instanceof Cbreak) {
            this.f14980do.put(n, new Cbreak(v));
            obj = (V) ((Cbreak) obj).f14984do;
        } else if (obj == f14979try) {
            this.f14980do.put(n, new Cbreak(v));
            obj = (V) null;
        }
        if (obj == null) {
            int i = this.f14983new + 1;
            this.f14983new = i;
            Cdefault.m16710new(i);
            List<Cthis<N>> list = this.f14982if;
            if (list != null) {
                list.add(new Cthis.Cif(n));
            }
        }
        return (V) obj;
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> adjacentNodes() {
        return this.f14982if == null ? Collections.unmodifiableSet(this.f14980do.keySet()) : new Cdo();
    }

    @Override // com.google.common.graph.GraphConnections
    public Iterator<Cimport<N>> incidentEdgeIterator(N n) {
        List<Cthis<N>> list = this.f14982if;
        return new Celse(list == null ? s1.m16215break(s1.p(predecessors().iterator(), new Cnew(n)), s1.p(successors().iterator(), new Ctry(n))) : s1.p(list.iterator(), new Ccase(n)), new AtomicBoolean(false));
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> predecessors() {
        return new Cif();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // com.google.common.graph.GraphConnections
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void removePredecessor(N n) {
        boolean z;
        Object obj = this.f14980do.get(n);
        if (obj == f14979try) {
            this.f14980do.remove(n);
        } else {
            if (!(obj instanceof Cbreak)) {
                z = false;
                if (z) {
                    return;
                }
                int i = this.f14981for - 1;
                this.f14981for = i;
                Cdefault.m16707if(i);
                List<Cthis<N>> list = this.f14982if;
                if (list != null) {
                    list.remove(new Cthis.Cdo(n));
                    return;
                }
                return;
            }
            this.f14980do.put(n, ((Cbreak) obj).f14984do);
        }
        z = true;
        if (z) {
        }
    }

    @Override // com.google.common.graph.GraphConnections
    public V removeSuccessor(Object obj) {
        Object obj2;
        Object obj3 = (V) this.f14980do.get(obj);
        if (obj3 == null || obj3 == (obj2 = f14979try)) {
            obj3 = (V) null;
        } else if (obj3 instanceof Cbreak) {
            this.f14980do.put(obj, obj2);
            obj3 = (V) ((Cbreak) obj3).f14984do;
        } else {
            this.f14980do.remove(obj);
        }
        if (obj3 != null) {
            int i = this.f14983new - 1;
            this.f14983new = i;
            Cdefault.m16707if(i);
            List<Cthis<N>> list = this.f14982if;
            if (list != null) {
                list.remove(new Cthis.Cif(obj));
            }
        }
        return (V) obj3;
    }

    @Override // com.google.common.graph.GraphConnections
    public Set<N> successors() {
        return new Cfor();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.GraphConnections
    public V value(N n) {
        V v = (V) this.f14980do.get(n);
        if (v == f14979try) {
            return null;
        }
        return v instanceof Cbreak ? (V) ((Cbreak) v).f14984do : v;
    }
}
