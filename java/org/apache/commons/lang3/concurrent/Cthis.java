package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* renamed from: org.apache.commons.lang3.concurrent.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends Cfor<Cif> {

    /* renamed from: new, reason: not valid java name */
    private final Map<String, Cfor<?>> f28695new;

    /* renamed from: org.apache.commons.lang3.concurrent.this$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Map<String, Cfor<?>> f28696do;

        /* renamed from: for, reason: not valid java name */
        private final Map<String, mq> f28697for;

        /* renamed from: if, reason: not valid java name */
        private final Map<String, Object> f28698if;

        /* renamed from: do, reason: not valid java name */
        private Cfor<?> m32338do(String str) {
            Cfor<?> cfor = this.f28696do.get(str);
            if (cfor != null) {
                return cfor;
            }
            throw new NoSuchElementException("No child initializer with name " + str);
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m32339case(String str) {
            m32338do(str);
            return this.f28697for.containsKey(str);
        }

        /* renamed from: else, reason: not valid java name */
        public boolean m32340else() {
            return this.f28697for.isEmpty();
        }

        /* renamed from: for, reason: not valid java name */
        public Cfor<?> m32341for(String str) {
            return m32338do(str);
        }

        /* renamed from: if, reason: not valid java name */
        public mq m32342if(String str) {
            m32338do(str);
            return this.f28697for.get(str);
        }

        /* renamed from: new, reason: not valid java name */
        public Object m32343new(String str) {
            m32338do(str);
            return this.f28698if.get(str);
        }

        /* renamed from: try, reason: not valid java name */
        public Set<String> m32344try() {
            return Collections.unmodifiableSet(this.f28696do.keySet());
        }

        private Cif(Map<String, Cfor<?>> map, Map<String, Object> map2, Map<String, mq> map3) {
            this.f28696do = map;
            this.f28698if = map2;
            this.f28697for = map3;
        }
    }

    public Cthis() {
        this.f28695new = new HashMap();
    }

    @Override // org.apache.commons.lang3.concurrent.Cfor
    /* renamed from: case */
    public int mo32308case() {
        Iterator<Cfor<?>> it = this.f28695new.values().iterator();
        int iMo32308case = 1;
        while (it.hasNext()) {
            iMo32308case += it.next().mo32308case();
        }
        return iMo32308case;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m32336catch(String str, Cfor<?> cfor) {
        if (str == null) {
            throw new IllegalArgumentException("Name of child initializer must not be null!");
        }
        if (cfor == null) {
            throw new IllegalArgumentException("Child initializer must not be null!");
        }
        synchronized (this) {
            if (m32311goto()) {
                throw new IllegalStateException("addInitializer() must not be called after start()!");
            }
            this.f28695new.put(str, cfor);
        }
    }

    @Override // org.apache.commons.lang3.concurrent.Cfor
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif mo32309else() throws Exception {
        HashMap map;
        synchronized (this) {
            map = new HashMap(this.f28695new);
        }
        ExecutorService executorServiceM32310for = m32310for();
        for (Cfor cfor : map.values()) {
            if (cfor.m32312new() == null) {
                cfor.m32313this(executorServiceM32310for);
            }
            cfor.m32307break();
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            try {
                map2.put(entry.getKey(), ((Cfor) entry.getValue()).get());
            } catch (mq e) {
                map3.put(entry.getKey(), e);
            }
        }
        return new Cif(map, map2, map3);
    }

    public Cthis(ExecutorService executorService) {
        super(executorService);
        this.f28695new = new HashMap();
    }
}
