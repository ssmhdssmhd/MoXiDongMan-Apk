package com.google.common.eventbus;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ib2;
import android.support.v4.x22;
import com.google.common.base.Cextends;
import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.g1;
import com.google.common.collect.k0;
import com.google.common.collect.s1;
import com.google.common.collect.v0;
import com.google.common.collect.x1;
import com.google.common.reflect.Cbreak;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: com.google.common.eventbus.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry {

    /* renamed from: for, reason: not valid java name */
    private static final LoadingCache<Class<?>, v0<Method>> f14952for = com.google.common.cache.Cif.m15296abstract().m15328synchronized().m15313if(new Cdo());

    /* renamed from: new, reason: not valid java name */
    private static final LoadingCache<Class<?>, g1<Class<?>>> f14953new = com.google.common.cache.Cif.m15296abstract().m15328synchronized().m15313if(new Cif());

    /* renamed from: do, reason: not valid java name */
    private final ConcurrentMap<Class<?>, CopyOnWriteArraySet<Cnew>> f14954do = Maps.i();

    /* renamed from: if, reason: not valid java name */
    @hf2
    private final com.google.common.eventbus.Cfor f14955if;

    /* renamed from: com.google.common.eventbus.try$do, reason: invalid class name */
    public static class Cdo extends com.google.common.cache.Cfor<Class<?>, v0<Method>> {
        @Override // com.google.common.cache.Cfor
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public v0<Method> load(Class<?> cls) throws Exception {
            return Ctry.m16647try(cls);
        }
    }

    /* renamed from: com.google.common.eventbus.try$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final String f14956do;

        /* renamed from: if, reason: not valid java name */
        private final List<Class<?>> f14957if;

        public Cfor(Method method) {
            this.f14956do = method.getName();
            this.f14957if = Arrays.asList(method.getParameterTypes());
        }

        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cfor)) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            return this.f14956do.equals(cfor.f14956do) && this.f14957if.equals(cfor.f14957if);
        }

        public int hashCode() {
            return Cthrow.m15206if(this.f14956do, this.f14957if);
        }
    }

    /* renamed from: com.google.common.eventbus.try$if, reason: invalid class name */
    public static class Cif extends com.google.common.cache.Cfor<Class<?>, g1<Class<?>>> {
        @Override // com.google.common.cache.Cfor
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public g1<Class<?>> load(Class<?> cls) {
            return g1.copyOf((Collection) Cbreak.of((Class) cls).getTypes().rawTypes());
        }
    }

    public Ctry(com.google.common.eventbus.Cfor cfor) {
        this.f14955if = (com.google.common.eventbus.Cfor) af1.m205continue(cfor);
    }

    @af2
    /* renamed from: for, reason: not valid java name */
    public static g1<Class<?>> m16644for(Class<?> cls) {
        try {
            return f14953new.getUnchecked(cls);
        } catch (ib2 e) {
            throw Cextends.m15066while(e.getCause());
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Multimap<Class<?>, Cnew> m16645if(Object obj) {
        k0 k0VarCreate = k0.create();
        ac2<Method> it = m16646new(obj.getClass()).iterator();
        while (it.hasNext()) {
            Method next = it.next();
            k0VarCreate.put(next.getParameterTypes()[0], Cnew.m16640new(this.f14955if, obj, next));
        }
        return k0VarCreate;
    }

    /* renamed from: new, reason: not valid java name */
    private static v0<Method> m16646new(Class<?> cls) {
        return f14952for.getUnchecked(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static v0<Method> m16647try(Class<?> cls) throws SecurityException {
        Set setRawTypes = Cbreak.of((Class) cls).getTypes().rawTypes();
        HashMap mapL = Maps.l();
        Iterator it = setRawTypes.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (method.isAnnotationPresent(x22.class) && !method.isSynthetic()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    af1.m229switch(parameterTypes.length == 1, "Method %s has @Subscribe annotation but has %s parameters.Subscriber methods must have exactly 1 parameter.", method, parameterTypes.length);
                    Cfor cfor = new Cfor(method);
                    if (!mapL.containsKey(cfor)) {
                        mapL.put(cfor, method);
                    }
                }
            }
        }
        return v0.copyOf(mapL.values());
    }

    /* renamed from: case, reason: not valid java name */
    public Iterator<Cnew> m16648case(Object obj) {
        g1<Class<?>> g1VarM16644for = m16644for(obj.getClass());
        ArrayList arrayListM16512return = x1.m16512return(g1VarM16644for.size());
        ac2<Class<?>> it = g1VarM16644for.iterator();
        while (it.hasNext()) {
            CopyOnWriteArraySet<Cnew> copyOnWriteArraySet = this.f14954do.get(it.next());
            if (copyOnWriteArraySet != null) {
                arrayListM16512return.add(copyOnWriteArraySet.iterator());
            }
        }
        return s1.m16246this(arrayListM16512return.iterator());
    }

    @af2
    /* renamed from: else, reason: not valid java name */
    public Set<Cnew> m16649else(Class<?> cls) {
        return (Set) Csuper.m15183do(this.f14954do.get(cls), g1.of());
    }

    /* renamed from: goto, reason: not valid java name */
    public void m16650goto(Object obj) {
        for (Map.Entry<Class<?>, Collection<Cnew>> entry : m16645if(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<Cnew> value = entry.getValue();
            CopyOnWriteArraySet<Cnew> copyOnWriteArraySet = this.f14954do.get(key);
            if (copyOnWriteArraySet == null) {
                CopyOnWriteArraySet<Cnew> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
                copyOnWriteArraySet = (CopyOnWriteArraySet) Csuper.m15183do(this.f14954do.putIfAbsent(key, copyOnWriteArraySet2), copyOnWriteArraySet2);
            }
            copyOnWriteArraySet.addAll(value);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m16651this(Object obj) {
        for (Map.Entry<Class<?>, Collection<Cnew>> entry : m16645if(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<Cnew> value = entry.getValue();
            CopyOnWriteArraySet<Cnew> copyOnWriteArraySet = this.f14954do.get(key);
            if (copyOnWriteArraySet == null || !copyOnWriteArraySet.removeAll(value)) {
                throw new IllegalArgumentException("missing event subscriber for an annotated method. Is " + obj + " registered?");
            }
        }
    }
}
